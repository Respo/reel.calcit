
Reel for Calcit
----

> as a time traveling debugger. This is exprimental technology.

Built as [actions-in-recorder](https://github.com/mvc-works/actions-in-recorder).

Demo http://repo.respo-mvc.org/reel.calcit/

### Usage

> "shortid" from npm is on dependency list, make sure it's installed.

Functions you need from namespaces:

```cirru
reel.util :refer $ listen-devtools!
reel.core :refer $ reel-updater refresh-reel
reel.schema :as reel-schema
```

Notice that `store` now lives inside `reel` map.

Instead of `*store`, you need `*reel` for global states. For example:

```cirru
def store $
  :states $ {}
  :tasks $ []

defatom *reel
  -> reel-schema/reel
    assoc :base store
    assoc :store store
```

And we need a `reel-updater` besides the familiar `updater` we used in Respo:

```cirru
defn dispatch! (op op-data)
  let
      new-reel $ reel-updater updater @*reel op op-data
    reset! *reel new-reel
```

Make sure you watch `*reel` and initialize `reel.core/*code` inside `main!` function:

```cirru
add-watch *reel :changes $ fn ()
  render-app! render!
```

Call `handle-reload!` with so many arguments to reload store and element caches:

```cirru
defn reload! ()
  clear-cache!
  reset! *reel $ refresh-reel @*reel schema/store updater
```

To use records panel, please refer to `comp-reel`:

```cirru
comp-reel (>> states :reel) reel styles
```

Listening to `Command Option Shift k` to toggle DevTools:

```cirru
listen-devtools! "k" dispatch!
```


### Typed state API (unreleased)

`reel.typed` adds `State<Op,Store>` and `Record<Op>` without changing the
existing map-based APIs. Generic parameters are ordered `Op,Store` to match
Calcit 0.13.77's canonical ordering. Create state with `new-reel initial-store`;
`record-op updater reel op id time` records application operations using a
caller-supplied identifier and timestamp. The updater receives store, operation,
identifier, and timestamp and returns the new store.

Route legacy devtools messages through `decode-control`, which returns
`Option<Control>`. Pass recognized controls to `apply-control updater reel control`;
pass application operations to `record-op`. `refresh updater reel initial-store`
replays history after hot reload. `recall`, `resume`, `step`, `merge-reel`,
`reset-reel`, `remove-current`, and `toggle-display` are also available directly.
Recall pointers are integer prefix lengths from zero through the record count.

Render with `reel.comp.reel/comp-typed-reel states reel styles`. Its explicit
`reel.typed-compat/view-data` adapter converts records and the Option pointer for
the existing devtools UI. That legacy UI boundary still contains Dynamic/nil;
this addition does not claim strict-zero coverage for the whole Reel project.
The demo uses typed Reel state while retaining its legacy map-based application
store. See `reel.app.main/dispatch!` for the control/application routing example.

Run `calcit test --require-match`, then compile `reel.test-typed/main!` to
`test-js-out` and run `yarn node tests/typed-reel.mjs` for native/JS coverage.

### License

MIT
