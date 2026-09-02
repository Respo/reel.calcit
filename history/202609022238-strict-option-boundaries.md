# Strict option boundaries / 收紧 Option 边界

- Upgraded the project contract and JS runtime package to Calcit 0.13.75.
- Unwrapped `first` / `get` results before destructuring record tuples, making the existing non-empty/index preconditions explicit.
- Replaced an optional style-map merge with two complete map branches.
- These changes remove Reel-local warnings under the stricter Calcit checker. The resolved graph now uses Respo 0.16.89, respo-router 0.8.8, and respo-ui 0.7.14.

- 将项目契约与 JS runtime 包升级到 Calcit 0.13.75。
- 在解构 record tuple 前显式 unwrap `first` / `get` 结果，把已有的非空与索引前置条件落实到类型边界。
- 将可选 style map 的 merge 改成两个完整的 map 分支。
- 这些改动清除了严格检查器报告的 Reel 本地告警；解析后的依赖图现已使用 Respo 0.16.89、respo-router 0.8.8 与 respo-ui 0.7.14。

Validation / 验证：

- `calcit calcit.cirru edit format`
- `caps --strict --ci`
- `calcit calcit.cirru --check-only` (zero warnings)
- `calcit calcit.cirru js`
