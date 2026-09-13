# Fix Option destructuring in `play-records`

`play-records` destructured `(&list:first records)` with `let[]`. Under Calcit
0.14.16 `&list:first` returns `Option<Dynamic>`, so the generated destructuring
emitted three `&list:nth` calls whose receiver was an `Option` instead of a
list. Downstream strict consumers (for example `Termina/msg-buffer` on Calcit
0.14.16) reported `W_PROC_ARG_TYPE_MISMATCH` for `&list:nth` at
`reel.core/gen%`, which failed their `--compat-types --check-only` gate.

- Unwrap the replay tuple with `(or (&list:first records) ([]))` before
  destructuring, matching the existing empty-history behavior.
- No public API or record representation changed.
- `calcit calcit.cirru --compat-types --check-only` passes and the 11 attached
  tests pass.
