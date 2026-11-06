# dispatch 回调改用 `*dispatch-op`

方向见 Jon 2026-11-06：减少生态里的 `AnyEnum`，dispatch 回调走 type slot。

- `reel.util/listen-devtools!` 的回调从 `Fn AnyEnum (-> Unit)` 改为 `Fn *dispatch-op (-> Unit)`。应用传入只接受自己 `Op` 的 `dispatch!` 时不再被逆变检查拒绝。
- Demo 的 `apply-control-op`、`dispatch!`、`decode-op` 直接写 `reel.app.updater/Op`。
- `reel.typed/decode-control` 保持 `AnyEnum`：测试里会传入不属于任何应用 Op 的 enum，它是反射式解码。

验证（Calcit 0.35.1）：`--check-only --all-defs`、`--entry test --check-only`、`test --exclude-tag js-only --require-match` 通过。
