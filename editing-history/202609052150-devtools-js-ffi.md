# Typed devtools keyboard boundary

- Added external-object traits for the browser window, keyboard event, and JavaScript string methods used by `listen-devtools!`.
- Moved host coercions into small structured `:js-ffi` adapters and gave `listen-devtools!` an explicit `String`, dispatch callback, and `Unit` contract.
- Preserved the Shift+Meta+Alt shortcut behavior while making host-nullish method results explicit at the adapter boundary.
- A Calcit 0.13.77 gen-code strict consumer advances beyond `reel.util/listen-devtools!` after this change.
- Continues `Respo/reel.calcit#36` and `calcit-lang/calcit#868`.
