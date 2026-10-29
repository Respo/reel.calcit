# Reel for Calcit

Reel 为 Respo 应用记录操作、回溯状态，并在热更新后重放历史。设计源自
[actions-in-recorder](https://github.com/mvc-works/actions-in-recorder)。
推荐新应用使用 typed API；旧 Map API 保留，避免在
升级时同时改写应用业务状态。Demo：<http://repo.respo-mvc.org/reel.calcit/>。

使用者影响：本次 `0.7.0-alpha.5` 候选对齐 Calcit `0.32.1`、Respo `0.17.1` 与 JS-FFI `0.2.9`。0.32 拒绝旧的 `:: 'Fn` 类型写法，旧依赖图无法加载，须同时升级到这组精确版本并重新生成 JS。本模块仍须完成原门禁及自身发版，不将 main 当成已发布 tag。

## 当前 0.32 工具链配对

Reel 0.7 系列配对正式 Calcit CLI / `@calcit/procs` `0.32.1`。当前候选
`0.7.0-alpha.5` 使用已发布的 Respo `0.17.1` 和 JS FFI `0.2.9`；
消费者需协调 UI、Router 等上层模块的精确版本，重新安装并生成 JS，
不能将此依赖图单独混入 0.30 维护线。

本轮对齐依赖与版本元数据；另补齐原 Demo 声明但未实现的任务增改、切换和删除，
并修正 Enter 清空的组件 cursor。库的 typed/旧 Map API、操作记录和历史重放算法保持，
原测试与全部门禁保留；原独立消费者改用已发布 UI 0.9.0，并启用严格 Caps 安装。完整 strict 和默认 proof audit 保留，
现有开放展示边界仍需消费处校验。alpha.7 的空状态泛型修复、nominal-root 的
实际形状守卫及旧 dispatcher 完整回调合同已随原迁移保留，不据此声称没有 Dynamic。

正式 CLI/runtime 已发布不代表本模块候选已发布；消费者以
[Releases](https://github.com/Respo/reel.calcit/releases) 的精确 tag 为准，
不使用 main 或 commit 替代发布依赖。以下 0.30.1 配对记录为历史。

### Demo 任务操作修复

实际页面验收发现旧 Demo 只处理 `:states`，Add 虽记录操作却不创建任务，见 [#95](https://github.com/Respo/reel.calcit/issues/95)。
现在在既有开放 `:tasks` 状态入口验证 String id/text、Bool done 字段后，进入具体 Task 列表；
旧 Map/Struct 任务作为数据逐项受检，不靠名称假定名义身份。新增任务使用记录传入的 op-id，重放不生成新 id。
针对不存在的任务 id，编辑/切换/删除确定地保持其余任务及顺序；Enter 与 Add 清空同一 cursor。
这只修复 Demo，不改变 Reel 公开库的开放业务状态合同，也不以 unsafe、伪强转或放宽预算通过门禁。
新增两项附带回归覆盖任务操作和实际 typed 历史暂停/排队/恢复/刷新/merge/删除 add 记录后的结果；
原库回归与独立消费者检查全部保留，仍须实际页面验收及完整 CI 后才可发布本候选。

## 0.30.1 历史迁移配对

使用者注意：本分支候选模块 `0.6.41` 配对正式 Calcit `0.30.1`，必须同步下表
完整正式依赖图，不混用旧 alpha，也不关闭 Caps strict。源码版本号不代表已经发布。
本次不改 Reel API、业务操作、历史重放、旧 Map 与 typed 合同；UI 从 0.7 升至
0.8，基础样式可能变化，需要完整刷新并验收实际页面，不承诺外观逐像素一致。

| 组件 | 版本 |
| --- | --- |
| Calcit CLI / `@calcit/procs` | `0.30.1` |
| Respo | `0.16.124` |
| Respo UI | `0.8.0` |
| js-ffi | `0.2.5` |
| Router（传递依赖） | `0.8.37` |

是否已正式发布，请以 [Releases](https://github.com/Respo/reel.calcit/releases)
中的同名 tag 为准；源码版本号不等于发版证据。不要混用旧 CLI 与新 JS
runtime，也不要改写模块缓存或生成文件中的 imports 来绕过版本检查。
本仓库 Yarn 新包安装隔离期按既有授权统一为一小时，不设置逐版本豁免。

### 使用者需要注意

0.6.40 让历史展示中的单条记录只校验一次 List，保留该类型传给记录组件，并复用
同一个 child/memo key。独立空记录组件的显示、nil memo key 的不缓存行为、
false/0/空串 key 与开放业务操作的显示保持原样；整张 keyed 历史列表仍拒绝 nil key，
不补随机 key。旧 Map 控制字段的缺失读取和非法记录的原校验顺序也保留。
消费者其他模块需协调同一精确 UI/Respo/Router 版本；CLI 与 runtime 更新到上表
配对，正常重新安装依赖后完整刷新 demo。原部署路径不变。

上一 patch 0.6.37 将已合并的公开 Option 读取迁移纳入新正式版本，并修复完整 strict
暴露的实际消费边界。旧 Map API 和 typed API 均保留，不要求下游改写业务
状态。非法 record、cursor、render action 或宿主数值会在消费处明确报错，
不会补成空列表、默认操作或业务值。更新后完整刷新已打开的 demo 页面。

Calcit 0.30.1 已稳定发布；本候选需在完整 strict、原 native/JS 回放、实际 Demo
和独立消费者验收后再发布，不代表所有消费者已经完成迁移。
本 PR 不合并或部署下游业务应用；合并本库会触发原有 Demo 前端部署，需单独确认。

### 已知 Map 写入与旧兼容出口

旧 dispatcher 中已知为 Map 的两处写入使用 `.assoc`，由编译器按真实接收者
类型 lowering，不在应用源码直接调用底层原语。`update-map-dynamic` 的返回值
由整个 `Dynamic` 收窄为 `Map<Dynamic,Dynamic>`：其原实现已经先检查 Map，
这里只保留真实容器类型，不新增 Map 解码、扩大输入或假装键值类型已被证明。
callback、缺失时传 nil、求值次数、错误传播和原检查顺序均不变。

`refresh-reel` 的两个旧 `assoc` 仍是明确的兼容出口：它既允许混合键 Map，
也允许字段可以校验的名义 Struct。不能为消除调用而把参数改成 Tag-only Map，
也不能用未知泛型字段的动态写入冒充静态证明。新代码继续使用已有的 typed API；
这些兼容调用未完成退场，本次不删除旧 API。此前 Map 写入收敛没有升级工具链；
本候选另按上表完成正式工具链配对。

公开 `get` / `first` / `last` 的 Option 只在具名的旧协议、展示或开放 callback
边界恢复 nil。Map 中存在的 nil、缺失键、false、0 和空字符串继续按原行为
传递；不能把旧 nil/truthiness 判断换成 Option 缺失判断。开放 record 在读取
首尾前须校验为 List；`update-map-dynamic` 仍只接受 Map，callback 求值次数和
错误传播保持不变。逐项消费合同见[缺失值与旧展示边界](docs/option-boundaries.md)。

旧 Map 更新 helper 在单一真实 Map 边界解码后再读取和写入，callback
仍只求值一次。旧 updater 未变化时保留原引用，仅对变化结果在返回处检查
声明的 Tag-keyed Map；
renderer 在解构单条历史前检查 List，时间及 id 显式转换为展示文本。
demo 复用 Respo 自己的 DOM 查询类型，render action 在派发前检查 Enum；
键盘宿主返回用真实 Number 解码替代未经检查的数值强转。

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
defref *reel $ typed/State
  :base schema/store
  :store schema/store
  :records $ []
  :pointer $ Option :none
  :stopped? false
  :display? false
  :merged? false
```

在确认应用定义和实际类型名后，用现有结构化入口声明该定义的 schema，先 dry-run
相应事务，再带 revision 应用。类型标注形状为：

```cirru.no-check
:: 'Ref $ :: 'reel.typed/State 'app.schema/AppOp 'app.schema/AppStore
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

以下是 `0.6.40` 原 alpha.5 依赖图的历史验收，不冒充本候选正式配对已通过。
当时通过正常 Caps strict、工具链精确配对、不可变安装和完整 strict。
原 24 项附带测试与既有三项共享、两项 JS-only 回归继续保留；本次再增加一项
共享兼容边界和一项真实 JS dispatcher 回归，共 28 项 native / 31 项生成 JS
通过。原 native entry、typed/旧 API suite、SSR 与
构建通过；公开定义 36/36，全部非空命名空间定义 72/72（包含元数据）通过。
空的 `reel.style` 不含定义，不将零匹配冒称为通过。absence 迁移预览无建议，
弃用调用和未解析动态方法视图均为空。

真实浏览器验证 Unicode 输入、第一条历史回溯、Step、Run、删除选中记录及 Reset，
控制台无 warning/error。原测试名、标签与断言不变，不新增 Option→nil 回流、Dynamic 或 unsafe。
现有旧 Map/展示边界仍有未解决类型债务，不宣称全模块类型闭合。最新 HEAD 的 CI/review
和精确 main 部署成功后才发布模块，后续应用验收仍须独立完成。

## COS/CDN 配置

使用正式 COS Action v1.2.0 的固定已审查提交和内置 `public-base-url`
公网校验，不新增上传验证脚本。生产前缀为 `Respo/reel.calcit/`；PR
预览使用 `Respo/reel.calcit/pr/<number>/<run-id>/<attempt>/`。
Vite 读取同一 `VITE_BASE_URL`。生产与各 PR 分别排队，不取消活跃上传；
仅 main push 执行原有服务器部署。既有 Actions 的精确 SHA 保持不变。

## License

MIT
