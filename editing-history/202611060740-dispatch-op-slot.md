# Demo 的 dispatch 入口写成具体 `Op`

方向见 Jon 2026-11-06：减少生态里的 `AnyEnum`。

- Demo 的 `apply-control-op`、`dispatch!`、`decode-op` 从 `AnyEnum` 改为 `reel.app.updater/Op`。Demo 已经用 `listen-devtools-toggle!`，不经过 `AnyEnum` 回调。
- `reel.util/listen-devtools!` 保持 `Fn AnyEnum (-> Unit)`：改成 `*dispatch-op` 会让 Op 里没有 `:reel/toggle` 的使用者（CI 的源码兼容夹具）编译失败。`dispatch!` 只接受自己 Op 的应用改用 `listen-devtools-toggle!`。
- `reel.typed/decode-control` 保持 `AnyEnum`：测试里会传入不属于任何应用 Op 的 enum，它是反射式解码。

验证（Calcit 0.35.1）：`--check-only --all-defs`、`--entry test --check-only`、`test --exclude-tag js-only --require-match` 通过。
