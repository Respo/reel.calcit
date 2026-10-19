# 历史记录中的缺失值与旧边界

历史记录在展示入口校验为 `List<Dynamic>` 后直接交给记录组件，不重复解码。
每条记录只读取一次末项，作为原 child key 和 memo key；nil memo key 继续
绕过缓存，但整张 keyed 列表仍由 Respo 拒绝 nil key。独立记录组件显示空记录的
行为不变，false、0、空串仍是有效 key。开放业务操作不伪造为某个固定 Enum。

## 内部类型与输出适配

| 数据来源 | 消费合同 |
| --- | --- |
| `comp-records` 的开放成员 | `decode-map-as` 校验 List 一次，保留 List 外层类型传入 `comp-record-item` |
| 单条记录 `last` 的 Option | 只在旧 ChildPair/memo key 出口编码 nil，绑定并复用一个 key |
| 单条记录 `first` 的 Option | 只在旧 action 文本展示出口编码 nil，空记录和显式 nil 的显示不变 |
| `State<Op,Store>.pointer: Option<Number>` | `typed-compat/view-data` 编码旧 nil/Number；Some 0 不是缺失 |
| `List<Record<Op>>` | adapter 逐项生成旧 `[op id time]`，不是仅对根 State 浅层转 Map |

这些是旧展示格式的具名出口，不代表应用中的任意 None 都可以转 nil。
Record 的开放 Op 也不等于已经校验为某个具体业务操作。

## 旧 Map 的字段读取与回放

`read-field` 接受 Struct 或任意键 Map，字段参数仍为 Tag；缺失与显式 nil
按原旧合同合流，false、0、空串保持原值，其他容器拒绝。混合键 Map 不会
因为查询一个 Tag 字段就被伪造为仅有 Tag 键的 Map。

控制分支读取 pointer、records、base 时复用这个既有旧边界。Map 类型没有证明
每个字段必然存在，不能对所有查询直接 `.unwrap`。但 records 仍在进入 control
消息 match 之前由 `checked-records` 校验，不能为了让某个消息成功而延后错误。
base 仍是开放业务 Store，nil 可能就是旧 Store；pointer 只在实际使用历史索引时
校验 Number。两个 stopped? 消费点保留旧 truthiness：缺失、nil、false 为假，
0 和空串仍为真，不把 `Some?` 当成业务布尔值。

`play-records` 的 pointer 为 0 时直接返回原 store，不读取 records、不调用
updater。真正回放时先检查外层 List，首项 Option 缺失使用原空 List fallback；
存在的 nil/false 同样沿原 truthy fallback 处理。空记录或不足三项的记录最终在
解构时拒绝，不会成功产生 nil 三元组；0、空串等非 List 值由原 decoder 拒绝。
合法三元组按原顺序交给 updater，回调次数和异常传播不变。

## 开放 callback 不伪装成任意值都可调用

`update-map-dynamic` 在受检真实 Map 上读取，缺失时仍将 nil 交给原 callback，
单次调用后写回。callback 自己的异常直接传播。该旧 helper 不承诺业务字段类型，
也不因为一个 Number-only `dec` 调用就把整个 helper 谎称为接受任意
`Fn<Dynamic,Dynamic>`。进一步收窄必须同时证明字段值和具体 callback 的关系。

## 验证入口

定义旁的共享 `:tests` 验证 pointer、Record 转换、旧字段值和非法短记录；
JS-only `:tests` 验证真实宿主控制路径、CSS/SSR、key 和 memo identity。
现有 `tests/typed-reel.mjs` 从同一份断言 AST 分别回放共享 native 与全部生成 JS，
并保留原 typed/legacy/SSR 用例。原测试不因计数或迁移而修改预期。

```bash
calcit test --exclude-tag js-only --require-match
calcit --init-fn reel.test-typed/main! --reload-fn reel.comp.reel/comp-typed-reel --emit-path test-js-out js
yarn node tests/typed-reel.mjs
calcit fix --workflow strict --verify --format edn
```

只读 Option→nil 视图用来定位这些出口，不按数量清零决定正确性；完整严格检查、
原语义测试、正式旧版对照及真实浏览器历史操作分别提供对应范围的证据。
