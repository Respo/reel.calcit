# 保留 Map 容器证明并迁移已知写入

旧 `update-map-dynamic` 已在函数体入口校验 Map，但返回 schema 仍是整个
`Dynamic`。只把 dispatcher 的 `assoc` 改成 `.assoc`，普通入口检查通过，
公开定义检查却会在后续 receiver 报 `E_DYNAMIC_METHOD_DISPATCH`。

本次将返回合同收窄为实际的 `Map<Dynamic,Dynamic>`。输入、函数体、callback
协议、原 Map 校验、缺失时传 nil、求值次数和异常传播完全保留。键值仍然开放，
不把它们伪装成 Tag-keyed Map 或任意输入均可接受的 callback；不增加调用方 decoder、
unsafe、类型豁免、检查脚本或预算。

## 改动

- dispatcher 两处已知 Map 写入及原测试的两个期望构造改用 `.assoc`。
  实际生成 JS 中这两处生产调用都直接降为 Map 原语；源码不直接调用底层原语。
- 原有测试名、标签、schema、文档、示例与断言均保留。通过官方 `query def`
  比较修改前后数据，仅归一化这四个操作符；helper 除返回合同外保持不变。
- 新增一项 JS-only 定义测试，验证业务写入、暂停时仅记录、callback 次数、
  原 Map 不变、额外字段、真实 id/time 和异常传播。
- 新增一项共享定义测试，验证 refresh 对混合键 Map 补写缺失字段并保留其他键，
  具体局部名义 Struct 的 definition、字段及原输入不变。

旧 `refresh-reel` 的两个 `assoc` 保留：它不是 Tag-only Map API。测试使用字段
可校验的具体局部 Struct，不宣称旧动态更新能证明泛型 State 的字段；后者应走
已有 typed API。未知泛型字段在最初尝试中仍被原运行时拒绝，未修改检查器来放行。
因此本次不宣称旧 API 退场完成。

## 验证

保持原正式依赖图与 CLI / runtime `0.30.1-alpha.5`，正常 Caps strict/toolchain
验证及不可变 Yarn 安装通过。未改 `deps.cirru`、package、lock、CI 或模块版本。

- 修改前：完整 strict 通过，原 native 27/27。
- 修改后：完整 strict 通过；全定义检查 224/224，其中项目定义 72/72；原公开定义
  检查 36/36 通过。只有入口检查不足以证明该结果。
- 同源断言：native 28/28，生成 JS 31/31（3 项 JS-only）。保留原 typed/旧 API、
  removal、控制消息、错误输入顺序、SSR 与宿主回归；预期的拒绝日志不是测试失败。
- 原 native entry、JS codegen、Vite 生产构建通过。原静态 dynamic-method 与
  deprecated-call 视图为零；这不消除旧 refresh 在运行时的开放分派，也不代替语义测试。
- 官方格式化无改动；Snapshot 没有通过文本 patch 修改。

Calcit 0.30.1 已发布，但本分支并未迁移到该正式配对，也未完成新的 0.31.0
消费者验证。UI 的正式维护迁移 PR 独立进行，不抢改其依赖图。后续 0.31.0 alpha
配对、真实浏览器、review、CI、精确 main 和模块发版仍须各自完成，不能用本地旧配对
结果代替。关联 Calcit #2187 的受保护迁移，不删除任何旧入口。
