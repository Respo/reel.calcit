
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

### COS/CDN 配置

前端使用正式 COS Action v1.2.0 的已审查提交，通过 `public-base-url` 使用
内置公网校验，不新增上传验证脚本。生产前缀保持 `Respo/reel.calcit/`，PR
预览使用 `Respo/reel.calcit/pr/<number>/<run-id>/<attempt>/`；Vite 继续读取
同一 `VITE_BASE_URL`。每个 PR 与生产分别排队，保留等待任务，不取消活跃上传。
原服务器源、目标、凭据与仅 main push 部署条件不变。

本轮仅改部署配置与说明，保留主线 Calcit/procs 0.27.0、既有模块和原 typed
Reel 的 native/JS 测试，不改源码、锁文件或类型门禁。独立 0.28.0 候选仍被
共享 JS-FFI/Respo 合同阻塞，不将 COS 配置验收称为完整 Calcit 升级完成。

### License

MIT
