# Typed Reel state for the strict application consumer

This worktree starts at published Reel 0.6.17 (`c0e7f462726dccc8932891110a2069068856510e`). It is an additive migration for calcit-lang/calcit#867; existing map-based APIs remain unchanged. No release or consumer dependency override has been made.

- Added generic `reel.typed/Record<Op>` and `State<Op,Store>` with explicit `Option<Number>` pointer and typed flags. The public parameter order matches Calcit 0.13.77's canonical alphabetical generic ordering.
- Added `new-reel`; its native empty-state test passes. Strict Caps resolves the immutable published dependency closure.
- Added deterministic `record-op` (caller supplies id/time), intended to retain queued operations while paused and update live state otherwise.
- The initial `Store,Op` ordering produced `List<Record<Store>>` for the records field: native `src/builtins/structs.rs` and static `src/calcit/type_annotation.rs` both sort generic names before positional substitution. Declaration and applications now consistently use `Op,Store`. Added an explicit generic `new-record` factory and receiver-typed `.append` instead of the legacy `conj` facade.
- Native `record-op` tests now pass with **String store and Number operation**, checking full record equality (including id/time), paused queuing, live updates, and original state immutability. Direct required-field access after nested generic `.get/.unwrap` still loses type evidence in the test runner; this remains a recorded inference limitation, not a claimed compiler fix.
- Added typed `play-records`; zero-, one-, and two-record prefix replay tests pass natively. The fold callback declares the Record/Store contract explicitly.
- Added `recall` and `resume`: recall records a nominal pointer and pauses, resume replays all queued records and clears the pointer. The additive typed recall API rejects negative, fractional, non-finite, and out-of-range indices instead of constructing invalid state.
- Four attached native tests and a shared `reel.test-typed/main!` native/JS scenario pass. The Node runner also verifies invalid pointers, empty resume, and original-state immutability. CI now runs the typed suite and builds an isolated ignored `test-js-out` directory before the ordinary app build.

- Added reset, toggle, refresh, and merge operations. Reset truncates future records when paused and restores the base when live. Merge preserves the remaining tail when paused and collapses history when live. Refresh preserves a merged base; otherwise it replays against the supplied new base. Six attached native tests now cover these interactions.

- Added single-operation `step` and `remove-current`. Stepping retains the existing live/short-history no-op behavior and wraps from the end to the base without calling the updater. Removal uses the paused selection (the UI's one-based pointer), retains the later tail, and reconstructs the preceding displayed state. Seven native tests and the expanded JS suite pass; JS counts updater calls to ensure each step applies only the next operation.

- Added nominal `Control`, `decode-control` (legacy Enum message to Option<Control>), and generic `apply-control`. All seven control variants are tested natively and through JS EDN message decoding. Non-control messages and invalid payload types return none. Removal ignores a stale pointer rather than deleting a different selected record. Nine attached native tests and the expanded JS suite pass.

- Added `reel.typed-compat/view-data` and `reel.comp.reel/comp-typed-reel`. Only the legacy UI adapter converts named records to `[op,id,time]` tuples and Option pointer to legacy nil/Number. Its heterogeneous output intentionally retains explicit Dynamic/nil debt; it is not a zero-debt API or a new representation for application state. Native empty-view and JS populated live/paused/merged view tests cover the conversion.

The demo now uses `State<Enum,Map>` and routes controls through `decode-control` / `apply-control`, with application operations through `record-op` and hot reload through `refresh`. Its legacy heterogeneous application store is not claimed as strict-zero. All 11 attached native tests, the shared native scenario, generated-JS tests, ordinary compilation, Vite build, and strict immutable Caps resolution pass on Calcit 0.13.77. Browser validation at port 5181 confirmed 58 nonempty static style tags, adding a task, recalling the base, and restoring the task with Run. Deployment steps now run only on main pushes, not PRs.

Still required: review/Actions, immutable release, then the gen-code integration and exact strict/browser acceptance. Do not merge or release before review and Actions pass.
