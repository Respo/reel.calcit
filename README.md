
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


### License

MIT
