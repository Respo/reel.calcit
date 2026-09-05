# Typed Reel record slices

- Added generic list helpers for slicing Reel records from or until an index and for removing a record.
- Narrowed the open `:records` field to `List<Dynamic>` at the existing `:js-ffi` boundary before list operations.
- Preserved merge, reset, and remove behavior while eliminating all four dynamic `.slice` dispatch warnings in a Calcit 0.13.77 gen-code strict consumer.
- Tracks `Respo/reel.calcit#40` and `calcit-lang/calcit#870`.
