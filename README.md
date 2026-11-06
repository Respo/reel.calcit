# Reel for Calcit

Reel 为 Respo 应用记录操作、回溯状态，并在热更新后重放历史。新应用推荐 typed API，旧 Map API 保留。Demo：<http://repo.respo-mvc.org/reel.calcit/>。

## 0.10.0 候选：类型化快捷键和 Demo 操作

新增 `listen-devtools-toggle!`，接收 `Fn (-> Unit)`，快捷键仍是 Shift+Meta+Alt 加指定字符。旧 `listen-devtools!` 保留原匿名 `:reel/toggle` 合同。Demo 历史使用本地 `Op`，任务 ID 和文本用 String，游标用 `CoordKey`；原应用边界会先解码操作。

## 历史 0.9.2：配对正式 Calcit 0.35.1

使用者影响：CLI / `@calcit/procs` 配对正式 **0.35.1**，Respo **0.19.4**、JS-FFI **0.2.13** 须统一精确依赖图并重新生成 JS；正式 tag 发布前仍为候选。typed API、旧历史异构 key、memo identity、回放、HUD、既有 union 和泛型保持。

本 patch 纳入此前已合并 #109 的 AnyEnum 同义拼写，候选自身不修改 Snapshot。独立模板原源码夹具的宿主 UI 同步正式 **0.15.1**，以保持 Caps 精确图一致；保留原源码不变断言，不把夹具当作模板自己的部署验收。原测试、完整 strict、门禁、COS 内置 verify 和部署路径保留，本轮精确结果以 PR 为准。

## 历史 0.9.1：配对正式 Calcit 0.35.0

使用者影响：CLI 与 `@calcit/procs` 同步 **0.35.0**，Respo **0.19.3**、JS-FFI **0.2.12** 需统一精确依赖图并重新生成 JS。公共 typed API、旧历史异构 key、操作记录、回放和 HUD 保持。原有 `ActionEntryPart`、样式 union 和 State/Record 泛型继续保留。

Demo 的任务展示现在复用既有 `read-tasks` 字段解码器，两个内部组件明确接收 `Task` / `List Task`，减少两处 schema Dynamic。旧 Map/Struct 任务经原解码器转换后显示；字段不完整的输入会在渲染前被拒绝，不再带着未知字段类型进入组件。该变化只涉及 Demo 内部入口，开放历史 payload 与外部 key 合同不收窄。其余源码仅由官方 formatter 迁移 0.35 类型语法。

原测试、完整 strict、质量预算和部署路径保留；独立模板源码夹具的宿主 UI 对齐正式 **0.15.0**，保留源码不变检查。夹具属于候选源码兼容性验证，不代表模板自己的部署图。

## 0.9.0 历史：保留历史异构 key，迁往 Respo 0.19

使用者影响：配对正式 Calcit / `@calcit/procs` **0.34.2**，目标宿主为 Respo **0.19.2**、JS-FFI **0.2.10**。历史记录里的 false、0、空串等 key 继续保留；memo 按原 key 缓存，只有列表的 DOM 坐标由 Respo `data-list->` 适配为稳定 String。操作历史、typed `Record` 的 String ID、指针和回放算法不变，nil 记录 key 的原拒绝行为保持。

**展示入口需要同步迁移：** `comp-reel` / `comp-typed-reel` 展开历史时必须在同步 managed memo 帧内构造。浏览器用 `respo.core/render-with!`，SSR/自定义 renderer 用 `respo.memo/with-memo-frame` 包住建树与渲染；不要先构造组件再进入帧。Demo 已改为 `render-with!`，保留原 HUD、dispatch 和热更新处理。直接检查虚拟 DOM child key 的调用方应按 CoordKey 渲染合同处理，不能把内部 String 坐标当成原始操作 key。

六处已弃用的横向间距调用改为同尺寸 `space-x`，不改页面尺寸；原断言保留，历史 key 回归改为检查边界适配后的坐标，同时继续检查 false/0/空串显示、memo 身份、空记录和错误输入拒绝。原生/JS、完整 strict、公开 API、独立模板源码夹具与原部署流程都保留，不放宽门禁、不新增 runner。

已通过正式 Respo 0.19.2 / JS-FFI 0.2.10 的 Caps strict、toolchain 与 Yarn immutable 安装，本库 253 个定义、完整 strict、31 项 native、34 项生成 JS 附带测试、原 devtools 回归、README 和生产构建通过，弃用调用为零。独立模板原源码 6d5a32b 使用正式 UI 0.14.1 / Router 0.11.2 / Respo 0.19.2 宿主图与本 Reel 候选，通过 198 个定义、完整 strict、原一项测试和 JS/Vite 构建，源码不变断言保留。这是候选源码兼容验收，不是模板自身生产依赖或部署图的证明；最终状态以精确 PR CI、评审与正式 tag 为准。

## 历史 0.8.1 兼容维护线：使用者影响

CLI / `@calcit/procs` 配对正式 **0.34.2**，Respo 升至正式兼容补丁 **0.18.1**，
JS-FFI 保持正式 **0.2.9**。消费者需统一精确依赖图并重新生成 JS；这是 0.18
兼容线，不能与要求 Respo 0.19.1 / JS-FFI 0.2.10 的 UI 0.14.0 混装。
原 typed/旧 Map API、Bool / List 等旧列表 key 和 memo identity、操作历史、HUD 与所有断言保留。
源码 Snapshot 不变，不用 key 强转或删除旧回归来绕过 Respo/respo.calcit#341。

这是已发布 0.8.0 的工具链与依赖补丁，不混入未完成的 0.9 现代图候选。
正式 Git 0.8.1 已在独立维护线验收发布，本次将同一依赖/运行逻辑同步到默认 main。
这会在合并后执行原 Demo 前端部署；不部署模板或任何业务应用，不另发 tag。

源码 Snapshot 与已发布 0.8.1 / 0.8.0 逐字节保持，249 个定义、42 个公开定义、完整 strict、
原 31 项 native / 34 项 JS 附着回归及原 JS 边界检查、native 入口与构建通过。
原模板源码夹具的宿主 UI 同步至 0.11.1，以严格配对 Respo 0.18.1；
夹具 SHA、源码不变断言及所有原门禁保留，不把源码候选验收视为正式 tag 安装。
UI 0.11.1 正式发布后已重新严格安装宿主图，模板的 193 个定义、完整 strict、
原一项测试及 JS/Vite 构建通过，原模板源码保持；这仍不是模板自身生产部署图或浏览器验收。

## 历史 0.8.0：Calcit 0.34.1 与明确的缺省值

使用者影响：CLI / `@calcit/procs` 同步正式 **0.34.1**，Respo **0.18.0**、JS-FFI **0.2.9** 保持正式版本。请重新安装精确依赖图、生成 JS 并完整刷新。此版本包含下述 main 已合入、尚未随 0.7.1 发布的旧 Map API 不兼容改动，因此升 minor，不作为 patch 发布。

动作列表的返回值明确为 `List<ActionEntryPart>`，其中 `ActionEntryPart = Number | Element`；该类型只约束元素种类，不承诺列表长度或位置。按钮返回 Element；既有样式常量为 `Map<Tag,StyleDataValue>`，值只含 Number、Tag，不改变样式。旧开放 payload、回调和 truthiness 合同保持，未用强转假装闭合。两个可选样式/子节点改为显式 Option，缺席时不添加占位节点。保留 HUD、原测试、完整 strict 与独立消费者检查，不放宽门禁，不新增 runner。

本轮原 31 项 native / 34 项生成 JS 附着回归、native 入口、249 项全定义、42 项公开定义和完整 strict 通过；README、JS/Vite 构建及错误 Bool 类型的反例检查通过。独立模板源码夹具固定到 [模板 PR #64](https://github.com/calcit-lang/respo-calcit-workflow/pull/64) 的 `6d5a32b`（仅源码夹具，不是依赖版本），用本候选 Reel 与正式 UI 0.11.0 检查；保留其全定义、strict、原测试、构建与源码不变断言。未新增浏览器交互或存档恢复验收；下文浏览器记录属于历史版本。

### 旧 Map API 改用 Option 表示缺省（calcit#2124）

这是**不兼容改动**，发布时应升 minor：

- `reel.schema/read-field`（缺失时返回 nil）已移除，改用 `field-option`（返回 Option，缺失和 nil 都是 none）、`field-or`、`require-field`，以及 `pointer-of`、`records-of`。
- `reel.schema/reel` 模板不再带值为 nil 的 `:base`/`:store`，`:pointer` 是 `Option :none`；`reel-updater` 写入的 `:pointer` 也是 Option。旧数据里的数字指针和 nil 指针仍能读取。
- `reel.util/update-map-dynamic` 的 callback 现在收到 `get` 的结果（Option），键缺失时为 none；原来收到 nil。迁移方式：callback 先 `match` 这个 Option，例如 `fn (v) (match v (:some x) (dec x) (:none) 0)`。
- `typed-compat/view-data` 的 `:pointer` 直接给出 typed reel 的 Option。

typed API 没有变化。

## 0.7.1 历史：协调 Respo 0.18 正式图

使用者影响：CLI / `@calcit/procs` 仍配对正式 **0.32.1**，依赖从 Respo
**0.17.1** 升为已发布的 **0.18.0**，JS-FFI **0.2.9** 保持。应用需与 UI、
Router、Alerts 等模块统一精确图并重新生成 JS；直接构造 DomProps 的应用应按上游
Option 字段迁移。本 PR 仅协调依赖和元数据，运行算法与操作历史沿用 main。

0.7.1 已发布，包含下文未随 0.7.0 发布的公共初值 schema 修正。
不能用 main/hash 替代正式依赖。独立模板源码夹具也必须选择同一宿主图的 UI，
保留其全部检查和原断言，不放宽 Caps strict。生产路径与 COS 内置 verify 保持。

## 0.7.0 历史配对与公共初值类型修正

已发布 `0.7.0` 配对正式 Calcit CLI / `@calcit/procs` **0.32.1**、Respo **0.17.1**、JS-FFI **0.2.9**。从 0.6.x / Calcit 0.30.1 维护线升级时，须协调完整图、迁移旧类型写法并重新生成 JS，不能只改版本或关闭 Caps strict。

此前 #101 为既有 `reel.schema/reel` 补上实际的 `Map<Tag,Dynamic>` schema，避免未标注的下游 Ref 初始化直接变成 Dynamic（[#100](https://github.com/Respo/reel.calcit/issues/100)）。它只描述现有初值，不改变 Map 字段、nil 默认、身份、操作记录或回放算法；不把其他兼容入口的混合键 Map 伪造为 Tag-only。添加类型后，不符合该初值合同的后续用法可能更早被严格检查拒绝，不能据此宣称旧开放 API 已闭合。

这项修正由 #101 合入 main，当前 Git 0.7.0 不包含它；原元数据 PR 没有升级版本或依赖，0.7.1 已将它与 Respo 0.18.0 图一起验收发布。旧 tag 不移动，不用 main/hash 冒充正式修复。后续发布状态以实际 Git tag 为准。

原类型门禁、native/JS 回归、独立消费者夹具和部署流程保持；没有预算豁免、强转、新 runner 或编译器改写规则。具体本轮结果见对应 PR。

## 0.7.0 发布时的历史验证

正式工具链和已发布宿主图通过 Caps strict/toolchain、immutable、canonical、240 项全定义、38 项公开定义、完整 strict（diagnostics=[]）、原 30 项 native / 33 项生成 JS 回归、原 native 入口和独立模板源码夹具（190 项全定义、strict、原 1 项测试、JS/Vite 构建及源码不变检查）。原旧 Struct `.assoc` 的两条运行时警告保留，不据此改写兼容合同。

实际隔离 Demo 完成合成任务 Add/编辑/切换、历史 base 回看、两步 Step、Run 和重新启动，控制台无 warning/error；未操作 Remove、Reset、Merge，不把这些浏览器操作计为已验收。原 native/JS 回归仍覆盖相应算法。消费者 fixture 不是其独立 npm/部署图；最终公开 tag 解析与下游依赖 pin 必须在发布后另行验证。

## 兼容边界

旧 Map API 用 Option 表示缺省：缺失字段和 nil 都按 none 处理，false/0/空串保持原值，原错误传播不变。field-option 接受实际 Struct 或受检 Map；records 的外层 List 检查不代表所有开放 payload 已被深度解码。pointer=0 时不读取历史，旧 no-op 分支和回调求值次数保持。

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
`field-option` 保留 Struct 与任意键 Map 的读取；非 Struct 分支在读取前校验 Map。
缺失字段和 nil 为 none，false/0 与混合键保持原值；其他容器明确拒绝。
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
