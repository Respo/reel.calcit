# 旧 Reel 的真实读取边界

正式 0.29.3 的独立证明暴露旧 helper 的输入缺口：`read-field` 的非 Struct 分支
直接读取 Dynamic，旧 record destructuring 缺外层和单条 List 证据，删除路径将
Dynamic 索引传给 Number 消费者。修复放在真实 producer/消费位置，不放宽 schema。

`read-field` 在非 Struct 分支校验任意键 Map，保留 mixed key、缺失 nil、false/0。
`play-records` 保留 pointer 为零时不读取 records 的行为；非零路径先校验外层 List，
保留原 first/or fallback，再校验单条 List 后解构，updater 与 recur 顺序不变。
删除分支只在非零路径校验 Number 一次。旧底层 merge 对 nil 保持 receiver，
因此控制分支显式将 nil delta 作为 no-op，其余 delta 校验 Map<Tag,Dynamic> 后合并。

七项新增定义测试通过原运行器在 native/生成 JS 原样重放；原宿主测试验证
实际旧 dispatcher 的删除、零索引、no-op、错误传播、updater 次数和输入不可变。
公开定义、原 typed/native/JS/SSR、页面构建和严格依赖门槛保留。

依赖对齐正式 Calcit/procs 0.29.3、Respo 0.16.120、UI 0.7.39、JS-FFI 0.2.3。
这不是完整 strict 工作流或整个下游迁移验收，剩余 demo/renderer/typed 初值/
keyboard/开放 updater 边界另行完成；不自动加入 unsafe、业务默认值或预算。
