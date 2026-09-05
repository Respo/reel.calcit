# Align the reviewed provider chain / 对齐已审查的 provider 链

UTC: 2026-09-05T12:08:00Z

- Consume the immutable Respo 0.16.93 and Respo UI 0.7.17 releases, including the transitive Respo Router 0.8.11 alignment.
- 消费不可变的 Respo 0.16.93 与 Respo UI 0.7.17 发布，并纳入传递依赖 Respo Router 0.8.11 的对齐。
- Repair Reel control-operation classification for the current `nth` Option contract, and cover Reel/application op routing with an attached regression test executed in CI (Respo/reel.calcit#34).
- 修复当前 `nth` Option 契约下的 Reel 控制操作分类，并用 CI 执行的附着回归测试覆盖 Reel/应用操作路由（Respo/reel.calcit#34）。
- Restore `defcomp` boundaries for the memoized operations and record-row builders so Respo's component-return contract is satisfied when the Reel panel opens.
- 为 memoized 的操作栏与记录行构建器恢复 `defcomp` 边界，使 Reel 面板打开时满足 Respo 的组件返回契约。
- Unwrap the `Option` results from `get`/`first`/`last`/`nth` at validated record boundaries, preventing empty history from being destructured and action tags from rendering as Option wrappers.
- 在已验证的记录边界解包 `get`/`first`/`last`/`nth` 的 `Option` 结果，避免解构空历史记录，也避免 action tag 被渲染成 Option 包装值。
- The package metadata remains at the already prepared 0.6.14 version until this dependency graph is reviewed and verified on `main`.
- 包元数据保持此前已准备的 0.6.14，待该依赖图完成审查并在 `main` 上验证后再发布。
