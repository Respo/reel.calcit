# Reel for Calcit

Reel 为 Respo 应用记录操作、回溯状态，并在热更新后重放历史。设计源自
[actions-in-recorder](https://github.com/mvc-works/actions-in-recorder)。
目前仍是 alpha 模块，推荐新应用使用 typed API；旧 Map API 保留，避免在
升级时同时改写应用业务状态。Demo：<http://repo.respo-mvc.org/reel.calcit/>。

## 0.29 兼容组合

本分支的待发布模块为 `0.6.33-alpha.3`，使用以下已经发布的精确依赖：

| 组件 | 版本 |
| --- | --- |
| Calcit CLI / `@calcit/procs` | `0.29.0-alpha.6` |
| Respo | `0.16.114-alpha.7` |
| Respo UI | `0.7.32-alpha.4` |
| js-ffi | `0.2.1-alpha.13` |
| Router（传递依赖） | `0.8.28-alpha.5` |

是否已正式发布，请以 [Releases](https://github.com/Respo/reel.calcit/releases)
中的同名 tag 为准；源码版本号不等于发版证据。不要混用旧 CLI 与新 JS
runtime，也不要改写模块缓存或生成文件中的 imports 来绕过版本检查。

## 推荐的 typed API

`reel.typed` 提供名义类型 `State<Op,Store>`、`Record<Op>` 和控制消息类型
`Control`。`Op` 是应用操作类型，`Store` 是应用状态类型，参数顺序固定为
`Op,Store`。业务状态可以先保留旧 Map，再逐步收紧；这不意味着 Reel
整体已没有 Dynamic。

- `new-reel initial-store`：建立初始状态；操作类型尚无输入证据时，可用
  `assert-type` 明确完整的 `State<Op,Store>`。
- `record-op updater reel op id time`：记录业务操作。updater 的四个参数为
  `store, op, id, time`，返回新的 `Store`；id 是 String，time 是 Number。
  调用方提供 id/time，Reel 不额外要求安装 npm shortid。
- `decode-control message`：将旧 devtools 消息解析为 `Option<Control>`。
  将已识别的控制交给 `apply-control updater reel control`，业务操作交给
  `record-op`；未知或错误的控制 payload 不应冒充业务默认值。
- `recall updater reel pointer`：pointer 是 `[0, records.length]` 范围内的
  整数前缀长度；直接调用的非法 pointer 会报错。通过 `apply-control`
  接收的非法 recall 保持原状态。
- `resume`、`step`、`merge-reel`、`reset-reel`、`remove-current` 和
  `toggle-display`：用于恢复、单步、合并、重置、删除选中记录和切换面板。
- `refresh updater reel initial-store`：热更新后重放历史；暂停和合并状态
  的语义与普通运行状态不同，不能简单清空 records 来代替。

实际接线示例在 `reel.app.main/dispatch!`；完整 typed 行为示例在
`reel.test-typed/main!`，API 定义与回归测试都在 canonical `calcit.cirru`。
查询前先安装正式模块：

```bash
caps --strict --ci
caps deps.cirru verify --toolchain
calcit query context reel.typed/record-op --format edn
calcit query def reel.app.main/dispatch! --format edn
calcit query def reel.typed/State --format edn
```

## 渲染、watch 和旧展示边界

使用 `reel.comp.reel/comp-typed-reel states reel styles` 渲染 typed 状态。
模块内部的 `reel.typed-compat/view-data` 会将**每一条 Record**转换为旧
三元组，并将 Option pointer 转为旧 nil/Number 布局。不要只对根 State
调用浅层 `to-map` 就传给 `comp-reel`。

旧展示层仍允许开放 Map/Enum 数据，`view-data` 不承担业务 payload 的
深层校验。旧 Map updater/refresh 的 records 消费边界用
`reel.schema/checked-records` 校验外层 List，成员仍是 Dynamic；它不是
Record decoder，也不会将错误数据补成空列表。

watch 使用 `add-watch!` / `remove-watch!`。回调接收**新值和旧值**两个
参数，应标记真实 State 类型与 Unit 返回值；可参考
`reel.app.main/main!` 和 `reload!`。通过 `listen-devtools! "k" dispatch!`
启用 `Command Option Shift k` 面板快捷键。

Demo 的 updater 目前只处理 `:states`，Add/Try 会记录消息并提示未知操作，
不是完整待办应用。本轮验证的是输入状态回溯、单步、恢复、记录删除与
重置，不将缺失的待办业务实现称为迁移成功。

## 修改与验证

`calcit.cirru` 是结构化 Snapshot，不能文本 patch。写入前读取
`calcit docs agents --contract`，用 query/tree 定位，使用带 revision
前置条件的 transaction，随后执行原有门禁：

```bash
yarn install --immutable
calcit edit format
git diff --exit-code -- calcit.cirru
calcit --check-only
calcit test --require-match
calcit analyze check-public --ns reel.core --ns reel.schema --ns reel.typed --ns reel.typed-compat --ns reel.util --summary-only
calcit analyze check-types --summary-only --format json
calcit analyze weak-types --only schema-dynamic,code-dynamic --intent unresolved --summary-only --format json
calcit analyze deprecated --summary-only --format json
calcit --init-fn reel.test-typed/main! --reload-fn reel.test-typed/main!
calcit --init-fn reel.test-typed/main! --reload-fn reel.comp.reel/comp-typed-reel --emit-path test-js-out js
yarn node tests/typed-reel.mjs
calcit js
yarn vite build
```

check-types/deprecated 在当前固定 CLI 中只支持 human/JSON，上述显式 JSON
用于现有 CI；普通查询默认优先 Cirru EDN。不要只 emit 测试入口而漏掉
renderer 根，否则 Node 的 SSR 验证会缺少生成模块。

附加断言优先定义在 Calcit `:tests`。现有 `tests/typed-reel.mjs` 在独立
临时 Snapshot 中原样回放全部附加断言，并通过 native 与真正生成的 JS
执行；独立进程隔离第二套 core 的 trait 注册，原 Snapshot 保持不变。
它也保留 pointer、控制消息、adapter 和 SSR 的原有 JS 边界测试。

## COS/CDN 配置

使用正式 COS Action v1.2.0 的固定已审查提交和内置 `public-base-url`
公网校验，不新增上传验证脚本。生产前缀为 `Respo/reel.calcit/`；PR
预览使用 `Respo/reel.calcit/pr/<number>/<run-id>/<attempt>/`。
Vite 读取同一 `VITE_BASE_URL`。生产与各 PR 分别排队，不取消活跃上传；
仅 main push 执行原有服务器部署。既有 Actions 的精确 SHA 保持不变。

## License

MIT
