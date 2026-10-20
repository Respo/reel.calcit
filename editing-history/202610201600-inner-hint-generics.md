# 回调 hint-fn 不再重复声明外层泛型

`reel.typed/play-records` 传给 `foldl` 的回调在 `hint-fn` 里又写了一遍
`:generics $ [] 'Op 'Store`，`reel.typed-compat/view-data` 的回调也重复声明了 `'Op`。
Calcit #2206 之后泛型按词法作用域区分，内层声明会新建同名泛型、遮住外层的那一对，
于是回调返回外层 `updater` 给出的 `'Store` 时报 `E_ERASED_GENERIC_RELATION`
（"expected `'Store`, got `'Store`"）。lilac-parser、hn-reader 等依赖 Reel 的模块因此检查失败。

删掉两处内层 `:generics`，回调直接使用外层定义的 `'Op`/`'Store`。行为不变。

验证：Calcit main（含 #2222）与 0.30.1-alpha.5 下 `--check-only` 通过，
`calcit test reel.typed` 与 `reel.typed-compat` 通过，`edit format` 无改动。
