# Reel for Calcit

Reel 为 Respo 应用记录操作、回溯状态，并在热更新后重放历史。新应用推荐 typed API，旧 Map API 保留。Demo：<http://repo.respo-mvc.org/reel.calcit/>。

## 0.7.1 候选：协调 Respo 0.18 正式图

使用者影响：CLI / `@calcit/procs` 仍配对正式 **0.32.1**，依赖从 Respo
**0.17.1** 升为已发布的 **0.18.0**，JS-FFI **0.2.9** 保持。应用需与 UI、
Router、Alerts 等模块统一精确图并重新生成 JS；直接构造 DomProps 的应用应按上游
Option 字段迁移。本 PR 仅协调依赖和元数据，运行算法与操作历史沿用 main。

候选包含下文已合入 main、尚未随 0.7.0 发布的公共初值 schema 修正。0.7.1 尚未发布，
不能用 main/hash 替代正式依赖。独立模板源码夹具也必须选择同一宿主图的 UI，
保留其全部检查和原断言，不放宽 Caps strict。生产路径与 COS 内置 verify 保持。

## 0.7.0 历史配对与公共初值类型修正

已发布 `0.7.0` 配对正式 Calcit CLI / `@calcit/procs` **0.32.1**、Respo **0.17.1**、JS-FFI **0.2.9**。从 0.6.x / Calcit 0.30.1 维护线升级时，须协调完整图、迁移旧类型写法并重新生成 JS，不能只改版本或关闭 Caps strict。

此前 #101 为既有 `reel.schema/reel` 补上实际的 `Map<Tag,Dynamic>` schema，避免未标注的下游 Ref 初始化直接变成 Dynamic（[#100](https://github.com/Respo/reel.calcit/issues/100)）。它只描述现有初值，不改变 Map 字段、nil 默认、身份、操作记录或回放算法；不把其他兼容入口的混合键 Map 伪造为 Tag-only。添加类型后，不符合该初值合同的后续用法可能更早被严格检查拒绝，不能据此宣称旧开放 API 已闭合。

这项修正由 #101 合入 main，当前 Git 0.7.0 不包含它；原元数据 PR 没有升级版本或依赖，本轮 0.7.1 候选将它与 Respo 0.18.0 图一起验收后发布。旧 tag 不移动，不用 main/hash 冒充正式修复。后续发布状态以实际 Git tag 为准。

原类型门禁、native/JS 回归、独立消费者夹具和部署流程保持；没有预算豁免、强转、新 runner 或编译器改写规则。具体本轮结果见对应 PR。

## 0.7.0 发布时的历史验证

正式工具链和已发布宿主图通过 Caps strict/toolchain、immutable、canonical、240 项全定义、38 项公开定义、完整 strict（diagnostics=[]）、原 30 项 native / 33 项生成 JS 回归、原 native 入口和独立模板源码夹具（190 项全定义、strict、原 1 项测试、JS/Vite 构建及源码不变检查）。原旧 Struct `.assoc` 的两条运行时警告保留，不据此改写兼容合同。

实际隔离 Demo 完成合成任务 Add/编辑/切换、历史 base 回看、两步 Step、Run 和重新启动，控制台无 warning/error；未操作 Remove、Reset、Merge，不把这些浏览器操作计为已验收。原 native/JS 回归仍覆盖相应算法。消费者 fixture 不是其独立 npm/部署图；最终公开 tag 解析与下游依赖 pin 必须在发布后另行验证。

## 兼容边界

旧 Map API 保留缺失字段的 nil、已有 nil/false/0/空串和原错误传播。read-field 接受实际 Struct 或受检 Map；records 的外层 List 检查不代表所有开放 payload 已被深度解码。pointer=0 时不读取历史，旧 no-op 分支和回调求值次数保持。

refresh-reel 的旧兼容写入仍支持受检 Struct 与混合键 Map，不为消除调用而伪造 Tag-only 输入。typed API 更适合新应用；兼容入口未完成下游退场前不删除。具体合同见 [缺失值与旧展示边界](docs/option-boundaries.md)。

## 推荐的 typed API

`reel.typed` 提供名义类型 `State<Op,Store>`、`Record<Op>` 和控制消息类型
`Control`。`Op` 是应用操作类型，`Store` 是应用状态类型，参数顺序固定为
`Op,Store`。业务状态可以先保留旧 Map，再逐步收紧；这不意味着 Reel
整体已没有 Dynamic。

- `new-reel initial-store`：建立初始状态；`Store` 来自输入，空历史的 `Op`
  没有输入来源。应用有具体 `AppOp` 时，按下节使用已有 `State` 构造器和
  `Ref<State<AppOp,AppStore>>` 上下文初始化，不对 helper 的开放结果作强断言。
- `record-op updater reel op id time`：记录业务操作。updater 的四个参数为
  `store, op, id, time`，返回新的 `Store`；id 是 String，time 是 Number。
  调用方提供 id/time，Reel 不额外要求安装 npm shortid。
- `decode-control message`：将旧 devtools 消息解析为 `Option<Control>`。
  将已识别的控制交给 `apply-control updater reel control`，业务操作交给
  `record-op`；未知或错误的控制 payload 不应冒充业务默认值。
  **当前 demo 的限制**：`dispatch!` 对 `:none` 一律走 `record-op`，包括
  payload 错误的 `:reel/` 消息，因此这类消息仍会进入历史。应用接线时应
  在业务 fallback 前另行拒绝 malformed 控制消息；本次不改变旧路由行为。
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

### 空历史的操作类型从哪里来

`new-reel` 的泛型 `Op` 不出现在参数中，不能仅凭 store 推断应用操作类型。
在 Snapshot 的 `*reel` 定义上声明 `Ref<State<AppOp,AppStore>>`，再用公开的
`State` 构造器提供空记录；这是空集合的类型上下文，不是对已有 Dynamic 值的强转。
下面假定已导入 `reel.typed :as typed` 和应用的 `schema/store`：

```cirru.no-check
defref *reel $ typed/State (:base schema/store) (:store schema/store)
  :records $ []
  :pointer $ Option :none
  :stopped? false
  :display? false
  :merged? false
```

在确认应用定义和实际类型名后，用现有结构化入口声明该定义的 schema，先 dry-run
相应事务，再带 revision 应用。类型标注形状为：

```cirru.no-check
quote $ Ref $ reel.typed/State app.schema/AppOp app.schema/AppStore
```

这里的 `AppStore` 必须是应用实际 store 类型，不要求把旧业务 Map 伪造为新 Struct。
记录产生后，`Record<AppOp>` 和 updater 的输入/返回关系继续接受原严格检查。

## 渲染、watch 和旧展示边界

使用 `reel.comp.reel/comp-typed-reel states reel styles` 渲染 typed 状态。
模块内部的 `reel.typed-compat/view-data` 会将**每一条 Record**转换为旧
三元组，并将 Option pointer 转为旧 nil/Number 布局。不要只对根 State
调用浅层 `to-map` 就传给 `comp-reel`。

旧展示层仍允许开放 Map/Enum 数据，`view-data` 不承担业务 payload 的
深层校验。旧 Map updater/refresh 的 records 消费边界用
`reel.schema/checked-records` 校验外层 List，成员仍是 Dynamic；它不是
Record decoder，也不会将错误数据补成空列表。
`read-field` 保留 Struct 与任意键 Map 的读取；非 Struct 分支在读取前校验 Map。
缺失字段仍返回 nil，nil/false/0 与混合键不被替换成默认值；其他容器明确拒绝。
旧历史重放在 pointer 非零、真正读取时校验 records 与单条 record 为 List，
pointer 为零仍直接返回 store，不读取 records 或调用 updater。删除操作的索引
在使用前校验 Number；零索引仍保留原状态。控制分支返回 nil 时显式保持原 Reel，
其他 delta 校验为 Tag-keyed Map 后再合并，不改变旧 no-op 行为。

watch 使用 `add-watch!` / `remove-watch!`。回调接收**新值和旧值**两个
参数，应标记真实 State 类型与 Unit 返回值；可参考
`reel.app.main/main!` 和 `reload!`。通过 `listen-devtools! "k" dispatch!`
启用 `Command Option Shift k` 面板快捷键。

Demo 的 updater 已实现任务新增、编辑、切换和删除，相关修复见 [#95](https://github.com/Respo/reel.calcit/issues/95)。任务 id 来自记录的 op-id，历史重放不生成新 id；输入受检为具体 Task，缺失 id 的操作保持其余任务与顺序。原回放与 Demo 回归继续保留。

## 修改与验证

新解析出的 npm 包版本必须已发布至少 60 分钟，本仓库未配置单包豁免；已有 immutable 锁版本不重新计算等待时间。

`calcit.cirru` 是结构化 Snapshot，不能文本 patch。写入前读取
`calcit docs agents --contract`，用 query/tree 定位，使用带 revision
前置条件的 transaction，随后执行原有门禁：

```bash
yarn install --immutable
calcit edit format
git diff --quiet --exit-code -- calcit.cirru
calcit --check-only --all-defs
calcit fix --workflow strict --verify --format edn
calcit test --exclude-tag js-only --require-match
calcit --check-only --ns reel.core --ns reel.schema --ns reel.typed --ns reel.typed-compat --ns reel.util --summary-only
calcit analyze weak-types --only coverage --summary-only --format json
calcit analyze weak-types --only schema-dynamic,code-dynamic --intent unresolved --summary-only --format json
calcit analyze weak-types --only deprecated-call --summary-only --format json
calcit --entry test --check-only
calcit --entry test
calcit --init-fn reel.test-typed/main! --reload-fn reel.comp.reel/comp-typed-reel --emit-path test-js-out js
yarn node tests/typed-reel.mjs
calcit js
yarn vite build
```

上述显式 JSON 用于现有 CI；普通查询默认优先 Cirru EDN。
默认入口明确使用 JS/browser，test 入口保留原纯逻辑的 native 执行。
正式候选 CI 另用 `respo-calcit-workflow` 精确源码作独立 typed Reel 消费者：
在本模块已验证宿主依赖图上检查全部定义、完整 strict、原附着测试、codegen 和构建，
并确认消费者 Snapshot 未变。这是源码兼容性 fixture，不等于该消费者自己的
npm/部署图或真实浏览器验收；不修改、合并或部署该应用。
不要只 emit 测试入口而漏掉
renderer 根，否则 Node 的 SSR 验证会缺少生成模块。

附加断言优先定义在 Calcit `:tests`。现有 `tests/typed-reel.mjs` 在独立
临时 Snapshot 中原样回放附加断言：共享测试通过 native 与真正生成的 JS
执行，宿主/样式测试只走 JS；独立进程隔离第二套 core 的 trait 注册，原 Snapshot 保持不变。
它也保留 pointer、控制消息、adapter 和 SSR 的原有 JS 边界测试。
新宿主/样式回归仍在定义 `:tests`，标为 `:js-only` 后只在生成 JS 上回放；
原有测试与新增共享测试在 native/JS 两端原样执行，不将样式或宿主实现伪装成 native 支持。

## COS/CDN 配置

使用正式 COS Action v1.2.0 的精确正式 tag 和内置 `public-base-url`
公网校验，不新增上传验证脚本。生产前缀为 `Respo/reel.calcit/`；PR
预览使用 `Respo/reel.calcit/pr/<number>/<run-id>/<attempt>/`。
Vite 读取同一 `VITE_BASE_URL`。生产与各 PR 分别排队，不取消活跃上传；
仅 main push 执行原有服务器部署。Actions 使用与原 SHA 对应的精确正式 tag，接受未来 tag 可移动的维护取舍。

## License

MIT
