# Reel 对齐正式 Calcit 0.29 依赖链

对应 Reel #63 与 Calcit #1529。从最新 main 开始，不合入旧候选的部署
改动。CLI/procs 固定到已发布 0.29.0-alpha.6，配合 Respo alpha.7、UI
alpha.4、js-ffi alpha.13。Reel 自身 alpha.3 必须在 PR/精确 main 验证后
另行发 tag；本记录不提前宣称完成发版或 Diary 验收。

## 真实缺口与修复

原默认入口检查通过，但激活全部公开定义后，legacy `refresh-reel`
从开放字段取出的 records 缺少 List 证据，不能满足 count 的 Countable
约束。增加外层 List 校验，并让 legacy updater 的四处同类 unsafe cast
复用该边界。保留开放成员，不猜业务 payload 的具体类型。

typed State 更新使用受检 `struct-with`，不再触发运行时 assoc fallback。
`map-indexed-dynamic` 保留旧名字，但签名改为 List<T> + Fn(Number,T)->R
到 List<R>；`unwrap-option` 保留 Option<T> 到 T 的关系和旧 None 报错。
二者保留普通方法/泛型推导，没有改为 native call 或扩大 Dynamic。
watch 迁移到带 `!` 的当前命名，补齐真实两参数与 Unit 合同；旧 nullable
检测使用 `non-nil?`，没有改变 Option 语义。

## 测试和门禁

原 12 个附加测试及全部 typed JS 断言保留。新增外层 List 拒绝、legacy
refresh 的有效/无效输入、泛型 payload 与普通 `.len` 方法结果测试。
现有 runner 直接读取 canonical `:tests`，在独立 Snapshot 回放相同
断言；native 与实际生成 JS 都执行，不维护第二份断言。

第二套生成 core 的 trait 注册会污染同进程第一套生成代码，因此回放
使用独立 Node 进程。保留原 SSR 断言抓住了这一隔离问题；没有删掉
失败的 renderer 测试来让迁移通过。CI 同时生成 renderer 根，新增五个
公开 namespace 的完整检查，保留全部依赖/格式/类型/废弃/部署门禁。

本地生产页面验证状态输入、回溯、单步、恢复、删除、合并和重置，无
浏览器 error。原 demo 缺少 task/add 业务 updater，仍会提示 Unknown op；
这一既有业务限制在 README 明确说明，不冒充完整应用验收。

旧展示层 Dynamic 仍是后续工作，Protea/Diary 的全部实际消费者验收
也仍未完成。不能据此关闭所有 legacy 清理任务或 Calcit 0.29 milestone。
