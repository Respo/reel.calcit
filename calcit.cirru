
{}
  :about "|Machine-generated snapshot. Do not edit directly — changes will be overwritten. Use `calcit query` to inspect and `calcit edit`/`calcit tree` to modify. Run `calcit docs agents --contract` before mutations; use `--full` for first orientation or changed contract digest. Manual edits must follow format and schema conventions, then run `calcit edit format`."
  :package |reel
  :entries $ {}
    :default $ {} (:description |) (:init-fn 'reel.app.main/main!) (:mode :js) (:reload-fn 'reel.app.main/reload!) (:target :browser)
      :feature-policy $ {}
      :modules $ [] |respo.calcit/
      :type-slots $ {} $ :dispatch-op 'reel.app.updater/Op
    :test $ {} (:description "|Pure typed Reel native regression") (:init-fn 'reel.test-typed/main!) (:mode :native) (:reload-fn 'reel.test-typed/main!) (:target :native)
      :feature-policy $ {}
      :modules $ [] |respo.calcit/
      :type-slots $ {}
  :files $ {}
    'reel.app.comp.container $ %{} 'FileEntry
      :defs $ {} $ 'comp-container
        %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-container (reel on-control)
            let
                store $ :store reel
                states $ reel.schema/field-or store :states $ {}
              div
                {} $ :class-name css/global
                comp-todolist (>> states :todolist) (reel.app.updater/read-tasks store)
                comp-typed-reel (>> states :reel) reel ({}) on-control
          :examples $ []
          :schema $ quote $ Fn
            reel.typed/State reel.app.updater/Op $ Map Tag Dynamic
            Fn reel.typed/Control $ -> Unit
            -> respo.schema/Component
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns reel.app.comp.container
          :require
            respo.util.format :refer $ hsl
            reel.style :as css
            respo.core :refer $ defcomp <> >> div span
            respo.css :refer $ defstyle
            respo.comp.space :refer $ =<
            reel.comp.reel :refer $ comp-typed-reel
            reel.app.comp.todolist :refer $ comp-todolist
    'reel.app.comp.task $ %{} 'FileEntry
      :defs $ {}
        'comp-task $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-task (task)
            div
              {} $ :style style-container
              div $ {} (:class-name css-done)
                :style $ if (:done? task)
                  Some $ {} $ :background-color (hsl 42 100 60)
                  , None
                :on-click $ fn (e d!)
                  d! $ reel.app.updater/Op :task/toggle $ :id task
              space-x 8
              input $ {} (:placeholder "|Content of task") (:class-name css/input)
                :value $ :text task
                :on-input $ fn (e d!)
                  d! $ reel.app.updater/Op :task/edit (:id task) (event-value e)
              space-x 8
              button
                {} (:class-name css/button)
                  :style $ {}
                    :background-color $ hsl 6 100 60
                    :color :white
                    :border :none
                  :on-click $ fn (e d!)
                    d! $ reel.app.updater/Op :task/remove $ :id task
                <> |Remove
          :examples $ []
          :schema $ quote $ Fn reel.app.updater/Task (-> respo.schema/Component)
        'css-done $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle css-done
            {} $ |$0 $ {} (:width 32) (:height 32) (:display :inline-block)
              :background-color $ hsl 220 100 76
              :cursor :pointer
          :examples $ []
          :schema $ quote String
        'style-container $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def style-container
            {} (:margin "|8px 0") (:height |32px)
          :examples $ []
          :schema $ quote $ Map Tag String
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns reel.app.comp.task
          :require
            respo.core :refer $ defcomp <> div button input event-value
            respo.css :refer $ defstyle
            respo.util.format :refer $ hsl
            respo.comp.space :refer $ space-x
            reel.style :as css
    'reel.app.comp.todolist $ %{} 'FileEntry
      :defs $ {}
        'comp-todolist $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-todolist (states tasks)
            let
                cursor $ decode-map-as
                  reel.schema/field-or states :cursor $ []
                  List respo.schema/CoordKey
                state $ decode-map-as (reel.schema/field-or states :data |) 'String
              div
                {} $ :class-name $ str-spaced css/fullscreen css-container
                div ({})
                  input $ {} (:placeholder "|Task to add...") (:value state) (:class-name css/input)
                    :on-input $ fn (e d!)
                      d! $ reel.app.updater/Op :states cursor $ event-value e
                      , &unit
                    :on-keydown $ fn (e d!)
                      if
                        =
                          :key $ keyboard-info e
                          , |Enter
                        do
                          d! $ reel.app.updater/Op :task/add state
                          d! $ reel.app.updater/Op :states cursor |
                      , &unit
                  space-x 8
                  button
                    {} (:class-name css/button)
                      :on-click $ fn (e d!)
                        d! $ reel.app.updater/Op :task/add state
                        d! $ reel.app.updater/Op :states cursor |
                        , &unit
                    <> |Add
                  space-x 8
                  button $ {} (:inner-text |Try) (:class-name css/button)
                    :on-click $ fn (e d!)
                      d! $ reel.app.updater/Op :try
                        {}
                          :a $ [] :b :w
                          :c $ {} $ :d :e
                        {}
                          :a $ [] :b :w
                          :c $ {} $ :d :e
                      , &unit
                keyed-> ({})
                  -> tasks $ map $ fn (task)
                    keyed-component (:id task) (comp-task task)
          :examples $ []
          :schema $ quote $ Fn (Map Dynamic Dynamic) (List reel.app.updater/Task) (-> respo.schema/Component)
        'css-container $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle css-container
            {} $ |$0 $ {} (:padding 8) (:overflow :auto)
          :examples $ []
          :schema $ quote String
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns reel.app.comp.todolist
          :require
            respo.core :refer $ defcomp <> div span button input keyed-> keyed-component event-value keyboard-info
            respo.css :refer $ defstyle
            respo.comp.space :refer $ space-x
            reel.style :as css
            reel.app.comp.task :refer $ comp-task
    'reel.app.main $ %{} 'FileEntry
      :defs $ {}
        '*reel $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defref *reel (typed/new-reel schema/store)
          :examples $ []
          :schema $ quote $ Ref
            typed/State reel.app.updater/Op $ Map Tag Dynamic
        'apply-control-op $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn apply-control-op (op)
            match (reel.app.updater/decode-op op)
              (:some checked)
                typed/record-op updater
                  assert-type @*reel $ typed/State reel.app.updater/Op $ Map Tag Dynamic
                  , checked (generate-id!)
                    :timestamp $ host/date-now-snapshot
              (:none)
                do
                  host/console-warn! $ str "|Unknown op" op
                  , @*reel
          :examples $ []
          :schema $ quote $ Fn reel.app.updater/Op
            -> $ typed/State reel.app.updater/Op $ Map Tag Dynamic
            :features :state
        'dispatch! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn dispatch! (op) (println |Dispatch! op)
            reset! *reel $ apply-control-op op
            , &unit
          :examples $ []
          :schema $ quote $ Fn reel.app.updater/Op (-> Unit) (:features :io :state)
        'get-mount-target $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn get-mount-target ()
            .unwrap $ dom/query-selector |.app
          :examples $ []
          :schema $ quote $ Fn (-> respo.dom/DomElement) (:features :js-ffi)
        'main! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn main! () (load-console-formatter!) (render-app!)
            add-watch! *reel :changes $ fn (reel prev)
              hint-fn $ Fn
                typed/State reel.app.updater/Op $ Map Tag Dynamic
                typed/State reel.app.updater/Op $ Map Tag Dynamic
                -> Unit
              render-app!
              , &unit
            let
                toggle! $ fn ()
                  hint-fn $ Fn $ -> Unit
                  println |Dispatch! $ :: :reel/toggle
                  reset! *reel $ typed/apply-control updater
                    assert-type @*reel $ typed/State reel.app.updater/Op $ Map Tag Dynamic
                    typed/Control :toggle
                  , &unit
              listen-devtools-toggle! |k toggle!
              toggle!
            println "|App started!"
          :examples $ []
          :schema $ quote $ Fn (-> Unit) (:features :io :js-ffi :state)
        'mount-target $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def mount-target (get-mount-target)
          :examples $ []
          :schema $ quote respo.dom/DomElement
        'on-control! $ %{} 'CodeEntry
          :doc "|Apply a devtools Control to the Reel state; comp-reel calls it instead of dispatching :reel/* events."
          :code $ quote $ defn on-control! (control) (println |Control! control)
            reset! *reel $ typed/apply-control updater
              assert-type @*reel $ typed/State reel.app.updater/Op $ Map Tag Dynamic
              , control
            , &unit
          :examples $ []
          :schema $ quote $ Fn typed/Control (-> Unit) (:features :io :state)
        'reload! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn reload! ()
            if (nil? build-errors)
              do (remove-watch! *reel :changes) (clear-cache!)
                add-watch! *reel :changes $ fn (reel prev)
                  hint-fn $ Fn
                    typed/State reel.app.updater/Op $ Map Tag Dynamic
                    typed/State reel.app.updater/Op $ Map Tag Dynamic
                    -> Unit
                  render-app!
                  , &unit
                let
                    refreshed $ typed/refresh updater
                      assert-type @*reel $ typed/State reel.app.updater/Op $ Map Tag Dynamic
                      , schema/store
                  reset! *reel $ assert-type refreshed $ typed/State reel.app.updater/Op (Map Tag Dynamic)
                hud! |ok~ |Ok
              hud! |error build-errors
            , &unit
          :examples $ []
          :schema $ quote $ Fn (-> Unit) (:features :io :js-ffi :state)
        'render-app! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn render-app! ()
            render-with! mount-target
              fn () $ comp-container
                assert-type @*reel $ typed/State reel.app.updater/Op $ Map Tag Dynamic
                , on-control!
              , dispatch!
          :examples $ []
          :schema $ quote $ Fn (-> Unit) (:features :io :js-ffi :state)
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns reel.app.main
          :require
            respo.core :refer $ render-with! clear-cache!
            reel.app.comp.container :refer $ comp-container
            reel.util :refer $ listen-devtools-toggle!
            reel.schema :as schema
            reel.app.updater :refer $ updater
            |./calcit.build-errors :default build-errors
            |bottom-tip :default hud!
            reel.typed :as typed
            js-ffi.shared :as host
            respo.ffi.browser :as dom
    'reel.app.updater $ %{} 'FileEntry
      :defs $ {}
        'Op $ %{} 'CodeEntry
          :doc "|Dispatch Op of the demo app, bound to the :dispatch-op type slot. Reel devtools controls go through on-control, not through this Op."
          :code $ quote $ defenum Op
            :states (List respo.schema/CoordKey) Dynamic
            :task/add String
            :task/toggle String
            :task/edit String String
            :task/remove String
            :try (Map Tag Dynamic) (Map Tag Dynamic)
          :examples $ []
          :schema $ quote EnumDef
        'Task $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct Task (:id String) (:text String) (:done? Bool)
          :examples $ []
          :schema $ quote StructDef
        'decode-op $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn decode-op (raw)
            match raw
              (:states v0 v1)
                Some $ Op :states
                  decode-map-as v0 $ List respo.schema/CoordKey
                  , v1
              (:task/add v0)
                Some $ Op :task/add $ decode-map-as v0 String
              (:task/toggle v0)
                Some $ Op :task/toggle $ decode-map-as v0 String
              (:task/edit v0 v1)
                Some $ Op :task/edit (decode-map-as v0 String) (decode-map-as v1 String)
              (:task/remove v0)
                Some $ Op :task/remove $ decode-map-as v0 String
              (:try v0 v1)
                Some $ Op :try
                  decode-map-as v0 $ Map Tag Dynamic
                  decode-map-as v1 $ Map Tag Dynamic
              _ None
          :examples $ []
          :schema $ quote $ Fn Op
            -> $ Option Op
        'read-tasks $ %{} 'CodeEntry
          :doc "|Demo 的既有开放 Map 状态入口：逐项验证任务字段后进入闭合 Task 列表，兼容旧 Map 与 Struct 数据；不推断外部名义身份。"
          :code $ quote $ defn read-tasks (store)
            decode-map-as
              .map
                decode-map-as (reel.schema/require-field store :tasks) (List Dynamic)
                fn (raw)
                  if (struct? raw) (&struct:to-map raw) raw
              List Task
          :examples $ []
          :schema $ quote $ Fn (Map Tag Dynamic)
            -> $ List Task
        'updater $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn updater (store op op-id op-time)
            match op
              (:states cursor s)
                decode-map-as (update-states store cursor s) (Map Tag Dynamic)
              (:task/add text)
                .assoc store :tasks $ .append (read-tasks store) (Task :id op-id :text text :done? false)
              (:task/toggle id)
                .assoc store :tasks $ .map (read-tasks store)
                  fn (task)
                    if
                      = id $ :id task
                      .assoc task :done? $ not $ :done? task
                      , task
              (:task/edit id text)
                .assoc store :tasks $ .map (read-tasks store)
                  fn (task)
                    if
                      = id $ :id task
                      .assoc task :text text
                      , task
              (:task/remove id)
                .assoc store :tasks $ .filter (read-tasks store)
                  fn (task)
                    not= id $ :id task
              _ $ do
                host/console-warn! $ str "|Unknown op" op
                , store
          :examples $ []
          :schema $ quote $ Fn (Map Tag Dynamic) Op String Number
            -> $ Map Tag Dynamic
            :features :js-ffi
          :tests $ []
            %{} 'TestEntry
              :name |demo-task-operations-preserve-id-order-and-input
              :code $ quote $ let
                  initial-store $ {}
                    :states $ {}
                    :tasks $ []
                  added $ updater initial-store (:: :task/add "|合成🐈") |id-031 100
                  second $ updater added (:: :task/add "|第二项") |id-032 101
                  toggled $ updater second (:: :task/toggle |id-031) |toggle 102
                  edited $ updater toggled (:: :task/edit |id-031 "|已编辑🐈") |edit 103
                  removed $ updater edited (:: :task/remove |id-031) |remove 104
                assert=
                  [] $ Task :id |id-031 :text "|合成🐈" :done? false
                  read-tasks added
                assert=
                  [] (Task :id |id-031 :text "|已编辑🐈" :done? true) (Task :id |id-032 :text "|第二项" :done? false)
                  read-tasks edited
                assert=
                  [] $ Task :id |id-032 :text "|第二项" :done? false
                  read-tasks removed
                assert= (read-tasks initial-store) ([])
              :tags $ #{} :unit
            %{} 'TestEntry (:name |demo-task-history-preserves-record-identities)
              :code $ quote $ let
                  initial-store $ decode-map-as
                    {}
                      :states $ {}
                      :tasks $ []
                    Map Tag Dynamic
                  initial-reel $ decode-map-as
                    .to-map $ reel.typed/new-reel initial-store
                    reel.typed/State reel.app.updater/Op $ Map Tag Dynamic
                  added $ reel.typed/record-op updater initial-reel (reel.app.updater/Op :task/add "|原文") |stable-031 100
                  edited $ reel.typed/record-op updater added (reel.app.updater/Op :task/edit |stable-031 "|改写🐈") |edit-031 101
                  paused $ reel.typed/recall updater edited 0
                  queued $ reel.typed/record-op updater paused (reel.app.updater/Op :task/toggle |stable-031) |toggle-031 102
                  running $ reel.typed/resume updater queued
                  refreshed $ reel.typed/refresh updater running initial-store
                  without-add $ reel.typed/resume updater $ reel.typed/remove-current updater (reel.typed/recall updater running 1)
                assert= initial-store $ :store queued
                assert=
                  [] $ Task :id |stable-031 :text "|改写🐈" :done? true
                  read-tasks $ :store running
                assert= (:store running) (:store refreshed)
                assert= (:records running) (:records refreshed)
                assert= (:store running)
                  :store $ reel.typed/merge-reel updater running
                assert= ([])
                  read-tasks $ :store without-add
              :tags $ #{} :unit
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns reel.app.updater
          :require
            respo.cursor :refer $ update-states
            js-ffi.shared :as host
    'reel.comp.records $ %{} 'FileEntry
      :defs $ {}
        'ActionEntryPart $ %{} 'CodeEntry
          :doc "|Member kinds of the existing index/Element list returned by render-action-item; this does not encode list length or positions."
          :code $ quote $ defunion ActionEntryPart Number respo.schema/Element
          :examples $ []
          :schema $ quote UnionDef
        'StyleDataValue $ %{} 'CodeEntry
          :doc "|Value kinds used by the existing style-data constant; the CSS map remains unchanged."
          :code $ quote $ defunion StyleDataValue Number Tag
          :examples $ []
          :schema $ quote UnionDef
        'comp-action $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-action (action)
            if (literal? action)
              <> $ str action
              if (enum? action)
                let
                    tag $ &enum:nth action 0
                    params $ &enum:params action
                  div
                    {} $ :class-name css/row-middle
                    <> $ str tag
                    space-x 2
                    respo.core/create-keyed-element :div ({}) (reel.util/map-indexed-dynamic params render-action-item)
                <> $ str action
          :examples $ []
          :schema $ quote $ Fn T (-> respo.schema/Component) (:generics T)
        'comp-record-item $ %{} 'CodeEntry
          :doc "|接收展示入口已校验的历史 List；只在开放 action 的展示出口将缺失首项编码为原 nil。"
          :code $ quote $ defcomp comp-record-item (record pointed? idx on-control)
            div
              {} (:class-name css-record)
                :style $ if pointed?
                  {}
                    :background-color $ hsl 220 20 56
                    :color :white
                  {}
                :on-click $ reel.comp.records/control-handler (reel.typed/Control :recall idx) on-control
              ; <> $ to-lispy-string $ first record
              match (first record)
                (:some action) (comp-action action)
                (:none) (comp-action |)
          :examples $ []
          :schema $ quote $ Fn (List T) Bool Number
            Fn reel.typed/Control $ -> Unit
            -> respo.schema/Component
            :generics T
          :tests $ [] $ %{} 'TestEntry (:name |typed-record-and-mixed-action)
            :code $ quote $ let
                ignore-control $ fn (_)
                  hint-fn $ Fn reel.typed/Control $ -> Unit
                  , &unit
                record $ assert-type ([] |typed-action |record-id) (List String)
                row $ comp-record-item record false 1 ignore-control
                pairs $ map-indexed ([] 7 9) render-action-item
                html $ respo.render.html/make-string $ comp-action (:: :mixed 7 |seven false)
              assert= true $ .includes? (respo.render.html/make-string row) |typed-action
              assert= 2 $ .len pairs
              assert= 1 $ :key $ .unwrap (last pairs)
              assert= true $ .includes? html |:mixed
              assert= true $ .includes? html |>7<
              assert= true $ .includes? html |seven
              assert= true $ .includes? html |false
            :tags $ #{} :js-only :unit
        'comp-records $ %{} 'CodeEntry
          :doc "|逐条校验历史 List；memo 保留原 false/0/空串等记录 key，整组渲染坐标由 data-list-> 适配。需在 managed memo 帧内建树。nil key 的原拒绝行为及 memo bypass 保留。"
          :code $ quote $ defcomp comp-records (records pointer on-control)
            div
              {} $ :class-name $ str-spaced css/font-code css-records
              respo.core/data-list-> ({})
                reel.util/map-indexed-dynamic
                  prepend records $ [] :base nil :base
                  fn (idx record)
                    hint-fn $ Fn Number Dynamic $ -> (Tuple Dynamic respo.schema/Component)
                    let
                        checked-record $ decode-map-as record $ List Dynamic
                        pointed? $ = pointer $ Some idx
                      match (last checked-record)
                        (:some key)
                          [] key $ memo-comp-by key comp-record-item checked-record pointed? idx on-control
                        (:none)
                          [] nil $ memo-comp-by nil comp-record-item checked-record pointed? idx on-control
          :examples $ []
          :schema $ quote $ Fn (List Dynamic) (Option Number)
            Fn reel.typed/Control $ -> Unit
            -> respo.schema/Component
          :tests $ [] $ %{} 'TestEntry (:name |legacy-record-keys-and-memo-identity)
            :code $ quote $ let
                ignore-control $ fn (control)
                  hint-fn $ Fn reel.typed/Control $ -> Unit
                  , &unit
                element $ fn (node)
                  hint-fn $ Fn respo.schema/RenderNode $ -> respo.schema/Element
                  match node
                    (:element value) value
                    _ $ raise |Expected-record-element
                rows $ fn (records)
                  hint-fn $ Fn (List Dynamic)
                    -> $ List respo.schema/ChildPair
                  let
                      view $ comp-records records None ignore-control
                      root $ element $ .unwrap (:tree view)
                      list-pair $ .unwrap $ first (:children root)
                      list-element $ element $ .unwrap (:node list-pair)
                    :children list-element
                component $ fn (pair)
                  hint-fn $ Fn respo.schema/ChildPair $ -> respo.schema/Component
                  match
                    .unwrap $ :node pair
                    (:component value) value
                    _ $ raise |Expected-record-component
                records $ [] ([] false) ([] 0) ([] |) ([] nil |nil-id 8) ([] :op |id 7)
              respo.core/clear-cache!
              respo.memo/begin-memo-frame!
              let
                  first-rows $ rows records
                  next-rows $ rows records
                  empty-first $ memo-comp-by nil comp-record-item ([]) false 1 ignore-control
                  empty-next $ memo-comp-by nil comp-record-item ([]) false 1 ignore-control
                assert=
                  map ([] :base false 0 | 8 7)
                    fn (key) (respo.memo/data-key key)
                  map first-rows $ fn (pair)
                    hint-fn $ Fn respo.schema/ChildPair $ -> Dynamic
                    :key pair
                assert= 6 $ count first-rows
                assert= true $ not $ identical? empty-first empty-next
                assert= true $ identical?
                  component $ .unwrap $ get first-rows 1
                  component $ .unwrap $ get next-rows 1
                assert= true $ identical?
                  component $ .unwrap $ get first-rows 2
                  component $ .unwrap $ get next-rows 2
                assert= true $ identical?
                  component $ .unwrap $ get first-rows 3
                  component $ .unwrap $ get next-rows 3
                assert= true $ identical?
                  component $ .unwrap $ get first-rows 4
                  component $ .unwrap $ get next-rows 4
                assert= true $ identical?
                  component $ .unwrap $ get first-rows 5
                  component $ .unwrap $ get next-rows 5
              respo.memo/finish-memo-frame!
              respo.core/clear-cache!
              let
                  html $ respo.render.html/make-string $ respo.memo/with-memo-frame
                    fn () $ comp-records records None ignore-control
                assert= true $ .includes? html "|<span data-comp=\"comp-action\"></span>"
                assert= true $ .includes? html "|<span data-comp=\"comp-action\">false</span>"
                assert= true $ .includes? html "|<span data-comp=\"comp-action\">0</span>"
                assert= true $ .includes? html "|<span data-comp=\"comp-action\">:op</span>"
              assert=
                respo.render.html/make-string $ comp-record-item ([]) false 1 ignore-control
                respo.render.html/make-string $ comp-record-item ([] nil) false 1 ignore-control
              assert= :rejected $ try
                do
                  respo.memo/with-memo-frame $ fn () $ comp-records
                    [] $ []
                    , None ignore-control
                  , :accepted
                fn (error) :rejected
              assert= :rejected $ try
                do
                  respo.memo/with-memo-frame $ fn () $ comp-records
                    [] $ [] nil
                    , None ignore-control
                  , :accepted
                fn (error) :rejected
              assert= :rejected $ try
                do
                  respo.memo/with-memo-frame $ fn () $ comp-records ([] 42) None ignore-control
                  , :accepted
                fn (error) :rejected
            :tags $ #{} :js-only :legacy-boundary :unit
        'control-handler $ %{} 'CodeEntry
          :doc "|Send a nominal Control to the callback. The app's Respo dispatch is not used, so it can keep accepting only the app's own Op."
          :code $ quote $ defn control-handler (control on-control)
            fn (event dispatch!)
              hint-fn $ Fn respo.schema/RespoEvent
                Fn *dispatch-op $ -> Unit
                -> Unit
              on-control control
          :examples $ []
          :schema $ quote $ Fn reel.typed/Control
            Fn reel.typed/Control $ -> Unit
            -> $ Fn respo.schema/RespoEvent
              Fn *dispatch-op $ -> Unit
              -> Unit
        'css-record $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle css-record
            {}
              |$0 $ {} (:cursor :pointer) (:padding "|0 4px") (:white-space :nowrap) (:cursor :pointer) (:overflow :hidden) (:text-overflow :ellipsis)
              |$0:hover $ {} $ :background-color |#eee
          :examples $ []
          :schema $ quote String
        'css-records $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle css-records
            {} $ |& $ {} (:overflow :auto) (:flex-shrink 0) (:padding-bottom 120) (:padding-top 16) (:width 320) (:font-size 12)
          :examples $ []
          :schema $ quote String
        'literal? $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn literal? (x)
            or (tag? x) (number? x) (string? x) (symbol? x) (bool? x)
          :examples $ []
          :schema $ quote $ Fn T (-> Bool) (:generics T) (:features :js-ffi)
        'on-recall $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn on-recall (idx on-control)
            reel.comp.records/control-handler (reel.typed/Control :recall idx) on-control
          :examples $ []
          :schema $ quote $ Fn Number
            Fn reel.typed/Control $ -> Unit
            -> $ Fn respo.schema/RespoEvent
              Fn *dispatch-op $ -> Unit
              -> Unit
            :features :js-ffi
        'render-action-item $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn render-action-item (idx item)
            respo.core/keyed-element idx $ if (shallow-data? item)
              <> (to-lispy-string item) style-action-sep
              div
                {} (:class-name style-type-tag)
                  :style $ {} $ :display :inline-block
                  :on-click $ fn (e d!) (tab-echo! item)
                <> $ str $ type-of item
          :examples $ []
          :schema $ quote $ Fn Number T (-> respo.schema/ChildPair) (:generics T)
        'shallow-data? $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn shallow-data? (item)
            or (literal? item)
              and (list? item) (every? item literal?)
              and (map? item) (every? item shallow-data?)
          :examples $ []
          :schema $ quote $ Fn T (-> Bool) (:generics T) (:features :js-ffi)
        'style-action-sep $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-action-sep
            {} $ |& $ {} (:margin "|0 4px")
          :examples $ []
          :schema $ quote String
        'style-data $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def style-data
            {} (:max-width 100) (:overflow :hidden) (:text-overflow :ellipsis) (:white-space :nowrap) (:display :inline-block) (:vertical-align :middle)
          :examples $ []
          :schema $ quote $ Map Tag StyleDataValue
        'style-type-tag $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-type-tag
            {}
              |& $ {}
                :border $ str "|1px solid " $ hsl 0 0 80
                :border-radius |4px
                :padding "|0 8px"
                :line-height |1.4
                :cursor :pointer
                :margin "|0 4px"
              |&:hover $ {} $ :box-shadow
                str "|0px 0px 2px 2px " $ hsl 0 0 0 0.06
          :examples $ []
          :schema $ quote String
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns reel.comp.records
          :require
            respo.core :refer $ defcomp <> div span style list-> memo-comp-by
            respo.css :refer $ defstyle
            reel.style :as css
            respo.comp.space :refer $ space-x
            reel.style :as reel-style
            respo.util.format :refer $ hsl
            reel.util :refer $ tab-echo!
    'reel.comp.reel $ %{} 'FileEntry
      :defs $ {}
        'comp-controlled-reel $ %{} 'CodeEntry
          :doc "|Render typed Reel devtools and deliver Control through a separate callback from app dispatch."
          :code $ quote $ defcomp comp-controlled-reel (reel user-styles on-control)
            comp-reel ({}) (typed-compat/view-data reel) user-styles on-control
          :examples $ []
          :schema $ quote $ Fn (reel.typed/State Op Store) (Map Dynamic Dynamic)
            Fn reel.typed/Control $ -> Unit
            -> respo.schema/Component
            :generics Op Store
        'comp-operations $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-operations (stopped? on-control)
            div
              {} $ :style $ {}
                :border-bottom $ str "|1px solid " $ hsl 0 0 90
                :padding "|0 4px"
              render-button |Merge
                reel.comp.records/control-handler (reel.typed/Control :merge) on-control
                , true
              render-button |Reset
                reel.comp.records/control-handler (reel.typed/Control :reset) on-control
                , true
              render-button |Step
                reel.comp.records/control-handler (reel.typed/Control :step) on-control
                , stopped?
              render-button |Run
                reel.comp.records/control-handler (reel.typed/Control :run) on-control
                , stopped?
              render-button |Close
                reel.comp.records/control-handler (reel.typed/Control :toggle) on-control
                not stopped?
          :examples $ []
          :schema $ quote $ Fn Bool
            Fn reel.typed/Control $ -> Unit
            -> respo.schema/Component
        'comp-reel $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-reel (states reel user-styles on-control)
            if (reel.schema/field-or reel :display? false)
              div
                {}
                  :class-name $ str-spaced css/flex css/column css-reel
                  :style user-styles
                memo-comp-by :operations comp-operations (reel.schema/field-or reel :stopped? false) on-control
                div
                  {} $ :class-name $ str-spaced css/expand css/row
                  comp-records (reel.schema/records-of reel) (reel.schema/pointer-of reel) on-control
                  div
                    {}
                      :class-name $ str-spaced css/column css/expand
                      :style $ {} (:overflow :auto) (:padding "|0 8px")
                        :border-left $ str "|1px solid " $ hsl 0 0 94
                    let
                        records $ reel.schema/records-of reel
                        pointer $ reel.schema/pointer-of reel
                        record $ if (reel.schema/field-or reel :stopped? false)
                          &let
                            stopped-pointer $ reel.util/unwrap-option pointer
                            if (> stopped-pointer 0)
                              get records $ dec stopped-pointer
                              , None
                          last records
                      if (.some? record)
                        let[] (action op-id op-time)
                          decode-map-as (reel.util/unwrap-option record) 'List
                          div
                            {}
                              :class-name $ str-spaced css/font-code css/column
                              :style $ {} $ :font-size 12
                            div
                              {} (:class-name css/row-parted)
                                :style $ {} $ :border-bottom
                                  str "|1px solid " $ hsl 0 0 94
                              div ({})
                                <> $ str op-time
                                space-x 8
                                <> $ str op-id
                              if
                                and (.some? pointer)
                                  not= pointer $ Some 0
                                Some $ span $ {} (:inner-text |Remove) (:class-name css/font-fancy)
                                  :style $ {} (:cursor :pointer) (:font-size 12)
                                    :color $ hsl 20 100 70
                                  :on-click $ reel.comp.records/control-handler
                                    reel.typed/Control :remove $ .unwrap pointer
                                    , on-control
                                , None
                            div
                              {} (:class-name css/expand)
                                :style $ {} (:padding "|8px 0") (:white-space :pre)
                              ; <> $ trim $ format-cirru-edn action
                              comp-action action
                        <> |nil
                    div
                      {} $ :class-name $ str-spaced css/expand css/font-code css-snippet
                      <> $ trim $ format-cirru-edn (reel.schema/require-field reel :store)
              span $ {}
          :examples $ []
          :schema $ quote $ Fn (Map Dynamic Dynamic) (Map Dynamic Dynamic) (Map Dynamic Dynamic)
            Fn reel.typed/Control $ -> Unit
            -> respo.schema/Component
        'comp-typed-reel $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-typed-reel (states reel user-styles on-control)
            assert-type
              comp-reel states (typed-compat/view-data reel) user-styles on-control
              , respo.schema/Component
          :examples $ []
          :schema $ quote $ Fn (Map Dynamic Dynamic) (reel.typed/State Op Store) (Map Dynamic Dynamic)
            Fn reel.typed/Control $ -> Unit
            -> respo.schema/Component
            :generics Op Store
        'css-reel $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle css-reel
            {} $ |$0 $ {} (:width |60%) (:height |80%) (:right |0px) (:bottom |0px) (:position :fixed)
              :background-color $ hsl 0 0 100 0.7
              :border $ str "|1px solid " $ hsl 0 0 90
              :font-size 14
              :backdrop-filter "|blur(2px)"
              :z-index 9999
              :border-radius |6px
          :examples $ []
          :schema $ quote String
        'css-snippet $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle css-snippet
            {} $ |$0 $ {} (:font-size 12) (:white-space :pre) (:padding "|16px 0px 200px 0px") (:line-height |20px) (:overflow :auto)
              :border-top $ str "|1px solid " $ hsl 0 0 94
          :examples $ []
          :schema $ quote String
        'render-button $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn render-button (guide on-click enabled?)
            div
              {} (:class-name css/link)
                :style $ if enabled?
                  {} $ :user-select :none
                  {} (:user-select :none)
                    :color $ hsl 0 0 90
                :on-click $ if enabled? on-click $ fn (e d!)
                  hint-fn $ Fn respo.schema/RespoEvent
                    Fn *dispatch-op $ -> Unit
                    -> Unit
                  , &unit
              <> guide
          :examples $ []
          :schema $ quote $ Fn String
            Fn respo.schema/RespoEvent
              Fn *dispatch-op $ -> Unit
              -> Unit
            , Bool (-> respo.schema/Element) (:features :js-ffi)
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns reel.comp.reel
          :require
            respo.core :refer $ defcomp <> >> div button span list-> memo-comp-by
            respo.css :refer $ defstyle
            respo.util.format :refer $ hsl
            respo.comp.inspect :refer $ comp-inspect
            reel.style :as css
            respo.comp.space :refer $ space-x
            reel.comp.records :refer $ comp-records
            respo-value.comp.value :refer $ comp-value
            reel.style :as style
            reel.comp.records :refer $ comp-action
            reel.typed-compat :as typed-compat
    'reel.core $ %{} 'FileEntry
      :defs $ {}
        'play-records $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn play-records (store records updater pointer)
            if (number? pointer)
              if (&= 0 pointer) store $ let
                  record-list $ reel.schema/checked-records records
                  record $ decode-map-as
                    or
                      .unwrap-or (first record-list) ([])
                      []
                    , 'List
                let[] (op op-id op-time) record $ &let
                  next-store $ updater store op op-id op-time
                  recur next-store (rest record-list) updater $ dec pointer
              raise "|play-records expected a Number pointer"
          :examples $ []
          :schema $ quote $ Fn Dynamic Dynamic Dynamic Dynamic (-> Dynamic) (:features :js-ffi)
          :tests $ []
            %{} 'TestEntry
              :name |zero-pointer-does-not-consume-records-or-call-updater
              :code $ quote $ let
                  updater $ fn (store op id time) (raise |Unexpected-updater-call)
                assert= |base $ play-records |base nil updater 0
              :tags $ #{} :legacy-boundary :unit
            %{} 'TestEntry
              :name |legacy-tuples-replay-in-order-and-do-not-mutate-input
              :code $ quote $ let
                  records $ [] ([] 5 |a 10) ([] 7 |b 20)
                  updater $ fn (store op id time) (str store |/ op |: id |@ time)
                assert= |base/5:a@10/7:b@20 $ play-records |base records updater 2
                assert=
                  [] ([] 5 |a 10) ([] 7 |b 20)
                  , records
              :tags $ #{} :legacy-boundary :unit
            %{} 'TestEntry (:name |non-list-record-container-or-record-is-rejected)
              :code $ quote $ let
                  calls $ ref 0
                  updater $ fn (store op id time)
                    reset! calls $ inc @calls
                    , store
                assert= :rejected $ try
                  do (play-records |base nil updater 1) :accepted
                  fn (error) :rejected
                assert= :rejected $ try
                  do
                    play-records |base ([] 42) updater 1
                    , :accepted
                  fn (error) :rejected
                assert= 0 @calls
              :tags $ #{} :legacy-boundary :unit
            %{} 'TestEntry
              :name |missing-falsey-and-short-records-reject-before-updater
              :code $ quote $ let
                  calls $ ref 0
                  updater $ fn (store op id time)
                    reset! calls $ inc @calls
                    , store
                  reject $ fn (record-list)
                    hint-fn $ Fn (List Dynamic) (-> Unit)
                    assert= :rejected $ try
                      do (play-records |base record-list updater 1) :accepted
                      fn (error) :rejected
                    , &unit
                reject $ []
                reject $ [] nil
                reject $ [] false
                reject $ [] 0
                reject $ [] |
                reject $ [] $ []
                reject $ [] $ [] :op
                reject $ [] $ [] :op |id
                assert= 0 @calls
              :tags $ #{} :legacy-boundary :unit
        'reel-control-op? $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn reel-control-op? (op)
            if (enum? op)
              starts-with?
                str $ &enum:nth op 0
                , |:reel/
              , false
          :examples $ []
          :schema $ quote $ Fn T (-> Bool) (:generics T)
          :tests $ [] $ %{} 'TestEntry (:name |classifies-reel-control-ops)
            :code $ quote $ do
              assert= true $ reel-control-op? $ :: :reel/toggle
              assert= false $ reel-control-op? $ :: :task/add
        'reel-updater $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn reel-updater (updater reel op)
            ; println |Name: $ turn-string op
            let
                result $ let
                    op-id $ generate-id!
                    op-time $ host/now-ms
                  if (reel-control-op? op)
                    let
                        changes $ let
                            pointer $ reel.schema/pointer-of reel
                            records $ reel.schema/records-of reel
                            stopped? $ reel.schema/field-or reel :stopped? false
                          match op
                            (:reel/toggle)
                              {} $ :display? $ not (reel.schema/field-or reel :display? false)
                            (:reel/recall idx)
                              let
                                  new-store $ play-records (reel.schema/require-field reel :base) records updater idx
                                {}
                                  :pointer $ Some idx
                                  :stopped? true
                                  :store new-store
                            (:reel/run)
                              let
                                  new-store $ play-records (reel.schema/require-field reel :base) records updater $ count records
                                {} (:store new-store) (:stopped? false) (:pointer None)
                            (:reel/step)
                              if stopped?
                                if
                                  < (count records) 2
                                  , nil $ &let
                                    step-pointer $ reel.util/unwrap-option pointer
                                    if
                                      < step-pointer $ count records
                                      let
                                          next-pointer $ inc step-pointer
                                          next-record $ &list:nth records step-pointer
                                        let[] (old-op old-id old-time) (decode-map-as next-record 'List)
                                          {}
                                            :pointer $ Some next-pointer
                                            :store $ updater (reel.schema/require-field reel :store) old-op old-id old-time
                                      {}
                                        :store $ reel.schema/require-field reel :base
                                        :pointer $ Some 0
                                , nil
                            (:reel/merge)
                              if stopped?
                                if
                                  = (Some 0) pointer
                                  {}
                                  let
                                      merge-pointer $ reel.util/unwrap-option pointer
                                      new-store $ play-records (reel.schema/require-field reel :base) records updater merge-pointer
                                    {} (:store new-store) (:base new-store)
                                      :pointer $ Some 0
                                      :records $ slice-records-from records merge-pointer
                                      :merged? true
                                {}
                                  :base $ reel.schema/require-field reel :store
                                  :pointer None
                                  :records $ []
                                  :merged? true
                            (:reel/reset)
                              if stopped?
                                {} $ :records $ slice-records-until records (reel.util/unwrap-option pointer)
                                {}
                                  :store $ reel.schema/require-field reel :base
                                  :pointer None
                                  :records $ []
                                  :stopped? false
                            (:reel/remove idx)
                              if (&= 0 idx) reel $ let
                                  remove-index $ decode-map-as idx 'Number
                                -> reel
                                  .assoc :pointer $ .map pointer dec
                                  .assoc :records $ remove-record-at records remove-index
                                  .assoc :store $ play-records (reel.schema/require-field reel :base) records updater $ dec remove-index
                            _ $ do
                              host/console-warn! $ str "|Unknown reel/ op:" op
                              , nil
                      if (nil? changes) reel $ merge reel $ decode-map-as changes (Map Tag Dynamic)
                    let
                        data-pack $ [] op op-id op-time
                      if (reel.schema/field-or reel :stopped? false)
                        .assoc reel :records $ conj (reel.schema/records-of reel) data-pack
                        -> reel
                          .assoc :store $ updater (reel.schema/require-field reel :store) op op-id op-time
                          .assoc :records $ conj (reel.schema/records-of reel) data-pack
              if (identical? result reel) reel $ decode-map-as result $ Map Tag Dynamic
          :examples $ []
          :schema $ quote $ Fn
            Fn Dynamic Dynamic Dynamic Dynamic $ -> Dynamic
            Map Tag Dynamic
            , Dynamic
              -> $ Map Tag Dynamic
              :features :js-ffi :state
          :tests $ []
            %{} 'TestEntry
              :name |legacy-control-reads-keep-optional-fields-and-eager-validation
              :code $ quote $ let
                  calls $ ref 0
                  updater $ fn (store op id time)
                    hint-fn $ Fn Dynamic Dynamic Dynamic Dynamic $ -> Dynamic
                    reset! calls $ inc @calls
                    , store
                  absent $ {}
                    :records $ []
                    :display? false
                  explicit-nil $ {}
                    :records $ []
                    :pointer nil
                    :base nil
                    :display? false
                assert= (.assoc absent :display? true)
                  reel-updater updater absent $ :: :reel/toggle
                assert= (.assoc explicit-nil :display? true)
                  reel-updater updater explicit-nil $ :: :reel/toggle
                assert= 0 @calls
                assert= :rejected $ try
                  do
                    reel-updater updater
                      {} $ :display? false
                      :: :reel/toggle
                    , :accepted
                  fn (error) :rejected
                assert= :rejected $ try
                  do
                    reel-updater updater
                      {} $ :records false
                      :: :reel/toggle
                    , :accepted
                  fn (error) :rejected
                assert= 0 @calls
              :tags $ #{} :js-only :legacy-boundary :unit
            %{} 'TestEntry
              :name |legacy-business-map-writes-keep-callback-and-records
              :code $ quote $ let
                  calls $ ref 0
                  updater $ fn (store op id time)
                    hint-fn $ Fn Dynamic Dynamic Dynamic Dynamic $ -> Dynamic
                    reset! calls $ inc @calls
                    str (decode-map-as store 'String) (decode-map-as op 'Number)
                  source $ {} (:base |base) (:store |base) (:stopped? false) (:extra |keep)
                    :records $ []
                  updated $ reel-updater updater source 5
                  records $ reel.schema/records-of updated
                  record $ decode-map-as
                    .unwrap $ first records
                    , 'List
                  stopped $ .assoc source :stopped? true
                  stopped-updated $ reel-updater updater stopped 7
                assert= 1 @calls
                assert= |base5 $ reel.schema/require-field updated :store
                assert= |keep $ reel.schema/require-field updated :extra
                assert= 1 $ count records
                assert= 3 $ count record
                assert= 5 $ .unwrap $ first record
                assert= true $ string? $ .unwrap (nth record 1)
                assert= true $ number? $ .unwrap (nth record 2)
                assert= |base $ reel.schema/require-field source :store
                assert= ([]) (reel.schema/require-field source :records)
                assert= |base $ reel.schema/require-field stopped-updated :store
                assert= 1 $ count $ reel.schema/records-of stopped-updated
                assert= :propagated $ try
                  do
                    reel-updater
                      fn (store op id time) (raise |callback-failure)
                      , source 5
                    , :accepted
                  fn (error) :propagated
              :tags $ #{} :js-only :legacy-boundary :unit
        'refresh-reel $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn refresh-reel (reel base updater)
            let
                next-base $ if (reel.schema/field-or reel :merged? false) (reel.schema/require-field reel :base) base
                records $ reel.schema/records-of reel
              -> reel (assoc :base next-base)
                assoc :store $ play-records next-base records updater $ if (reel.schema/field-or reel :stopped? false)
                  reel.util/unwrap-option $ reel.schema/pointer-of reel
                  count records
          :examples $ []
          :schema $ quote $ Fn Dynamic Dynamic Dynamic (-> Dynamic) (:features :js-ffi)
          :tests $ []
            %{} 'TestEntry (:name |legacy-refresh-checks-record-container)
              :code $ quote $ let
                  updater $ fn (store op id time)
                    hint-fn $ Fn String Number String Number $ -> String
                    str store op
                assert= |next $ reel.schema/require-field
                  refresh-reel
                    {} (:base |base) (:store |base)
                      :records $ []
                      :merged? false
                      :stopped? false
                      :pointer nil
                    , |next updater
                  , :store
                assert= |next5 $ reel.schema/require-field
                  refresh-reel
                    {} (:base |base) (:store |base)
                      :records $ [] $ [] 5 |id 10
                      :merged? false
                      :stopped? false
                      :pointer nil
                    , |next updater
                  , :store
                assert= "|Reel records must be a List" $ try
                  let ()
                    refresh-reel
                      {} (:base |base) (:store |base) (:records nil) (:merged? false) (:stopped? false) (:pointer nil)
                      , |next updater
                    , |unexpected-success
                  fn (error)
                    hint-fn $ Fn String $ -> String
                    , error
              :tags $ #{} :unit
            %{} 'TestEntry
              :name |legacy-refresh-preserves-mixed-map-and-nominal-root
              :code $ quote $ let
                  updater $ fn (store op id time)
                    hint-fn $ Fn String Number String Number $ -> String
                    str store op
                  source $ {} (|extra 1) (42 false)
                    :records $ []
                    :merged? false
                    :stopped? false
                  refreshed $ refresh-reel source |next updater
                  LegacyRefresh $ defstruct LegacyRefresh (:base String) (:store String)
                    :records $ List Number
                    :merged? Bool
                    :stopped? Bool
                  nominal $ LegacyRefresh :base |base :store |base :records ([]) :merged? false :stopped? false
                  refreshed-nominal $ refresh-reel nominal |next updater
                assert= (Some 1) (get refreshed |extra)
                assert= (Some false) (get refreshed 42)
                assert= |next $ reel.schema/require-field refreshed :base
                assert= |next $ reel.schema/require-field refreshed :store
                assert= None $ get source :base
                assert= None $ get source :store
                assert= (struct-definition nominal)
                  if (struct? refreshed-nominal) (struct-definition refreshed-nominal) None
                assert= |next $ reel.schema/require-field refreshed-nominal :base
                assert= |next $ reel.schema/require-field refreshed-nominal :store
                assert= |base $ reel.schema/require-field nominal :base
                assert= |base $ reel.schema/require-field nominal :store
              :tags $ #{} :legacy-boundary :unit
        'remove-record-at $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn remove-record-at (records idx)
            concat
              slice-records-until records $ dec idx
              slice-records-from records idx
          :examples $ []
          :schema $ quote $ Fn (List T) Number
            -> $ List T
            :generics T
        'slice-records-from $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn slice-records-from (records start)
            &list:slice records start $ count records
          :examples $ []
          :schema $ quote $ Fn (List T) Number
            -> $ List T
            :generics T
        'slice-records-until $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn slice-records-until (records end) (&list:slice records 0 end)
          :examples $ []
          :schema $ quote $ Fn (List T) Number
            -> $ List T
            :generics T
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns reel.core
          :require $ js-ffi.shared :as host
    'reel.schema $ %{} 'FileEntry
      :defs $ {}
        'checked-records $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn checked-records (value)
            if (list? value)
              assert-type value $ List Dynamic
              raise "|Reel records must be a List"
          :examples $ []
          :schema $ quote $ Fn Input
            -> $ List Dynamic
            :generics Input
          :tests $ [] $ %{} 'TestEntry (:name |checked-legacy-record-container)
            :code $ quote $ let ()
              assert= ([])
                checked-records $ []
              assert=
                [] $ [] :op |id 10
                checked-records $ [] $ [] :op |id 10
              assert= "|Reel records must be a List" $ try
                let () (checked-records nil) |unexpected-success
                fn (error)
                  hint-fn $ Fn String $ -> String
                  , error
              assert= "|Reel records must be a List" $ try
                let () (checked-records 1) |unexpected-success
                fn (error)
                  hint-fn $ Fn String $ -> String
                  , error
              assert= "|Reel records must be a List" $ try
                let ()
                  checked-records $ {}
                  , |unexpected-success
                fn (error)
                  hint-fn $ Fn String $ -> String
                  , error
              assert= "|Reel records must be a List" $ try
                let () (checked-records None) |unexpected-success
                fn (error)
                  hint-fn $ Fn String $ -> String
                  , error
            :tags $ #{} :unit
        'field-option $ %{} 'CodeEntry
          :doc "|Read a field of a legacy reel map, a record or a nominal struct as an Option: a missing key and a nil value are none, an Option value is used as it is, other values are present."
          :code $ quote $ defn field-option (value field)
            let
                found $ if (struct? value)
                  get (&struct:to-map value) field
                  get (decode-map-as value 'Map) field
              match found
                (:some v)
                  cond
                      nil? v
                      , None
                    (and (enum? v) (= (&enum:definition v) (Some Option)))
                      if
                        = :some $ &enum:nth v 0
                        Some $ &enum:nth v 1
                        , None
                    true $ Some v
                (:none) None
          :examples $ []
          :schema $ quote $ Fn Input Tag
            -> $ Option Dynamic
            :generics Input
          :tests $ []
            %{} 'TestEntry (:name |legacy-map-keeps-mixed-key-boundary)
              :code $ quote $ let
                  source $ {} (:value "|中文🐈") (|extra 1) (42 false)
                assert= (Some "|中文🐈") (field-option source :value)
                assert= None $ field-option source :missing
                assert= 3 $ count source
              :tags $ #{} :legacy-boundary :unit
            %{} 'TestEntry (:name |nil-is-none-false-and-zero-are-present)
              :code $ quote $ let
                  source $ {} (:nil-value nil) (:false-value false) (:zero-value 0)
                    :option-value $ Some 3
                    :none-value None
                assert= None $ field-option source :nil-value
                assert= (Some false) (field-option source :false-value)
                assert= (Some 0) (field-option source :zero-value)
                assert= (Some 3) (field-option source :option-value)
                assert= None $ field-option source :none-value
              :tags $ #{} :legacy-boundary :unit
            %{} 'TestEntry
              :name |nominal-record-fields-and-missing-key-remain-compatible
              :code $ quote $ let
                  record $ reel.typed/Record :op 42 :id "|记录🐈" :time 7
                assert= (Some 42) (field-option record :op)
                assert= (Some "|记录🐈") (field-option record :id)
                assert= (Some 7) (field-option record :time)
                assert= None $ field-option record :missing
              :tags $ #{} :legacy-boundary :unit
            %{} 'TestEntry (:name |non-struct-non-map-input-is-rejected)
              :code $ quote $ do
                assert= :rejected $ try
                  do (field-option nil :value) :accepted
                  fn (error) :rejected
                assert= :rejected $ try
                  do (field-option 42 :value) :accepted
                  fn (error) :rejected
                assert= :rejected $ try
                  do (field-option |text :value) :accepted
                  fn (error) :rejected
                assert= :rejected $ try
                  do
                    field-option ([]) :value
                    , :accepted
                  fn (error) :rejected
              :tags $ #{} :legacy-boundary :unit
        'field-or $ %{} 'CodeEntry
          :doc "|Read a field, or default when field-option gives none."
          :code $ quote $ defn field-or (value field default)
            match (field-option value field)
              (:some v) v
              (:none) default
          :examples $ []
          :schema $ quote $ Fn Input Tag Fallback (-> Dynamic) (:generics Input Fallback)
          :tests $ [] $ %{} 'TestEntry (:name |defaults-only-absent-fields)
            :code $ quote $ do
              assert= 1 $ field-or
                {} $ :a nil
                , :a 1
              assert= false $ field-or
                {} $ :a false
                , :a true
              assert= | $ field-or
                {} $ :a |
                , :a |x
            :tags $ #{} :unit
        'pointer-of $ %{} 'CodeEntry
          :doc "|Pointer of a legacy reel map as an Option Number; a legacy number pointer counts as present."
          :code $ quote $ defn pointer-of (reel)
            match (field-option reel :pointer)
              (:some pointer)
                Some $ decode-map-as pointer 'Number
              (:none) None
          :examples $ []
          :schema $ quote $ Fn Input
            -> $ Option Number
            :generics Input
          :tests $ [] $ %{} 'TestEntry (:name |legacy-and-option-pointers)
            :code $ quote $ do
              assert= None $ pointer-of $ {} (:pointer nil)
              assert= None $ pointer-of $ {} (:pointer None)
              assert= (Some 2)
                pointer-of $ {} $ :pointer 2
              assert= (Some 2)
                pointer-of $ {} $ :pointer (Some 2)
            :tags $ #{} :legacy-boundary :unit
        'records-of $ %{} 'CodeEntry
          :doc "|Records of a legacy reel map; a missing or non-list container raises."
          :code $ quote $ defn records-of (reel)
            match (field-option reel :records)
              (:some records) (checked-records records)
              (:none) (raise "|Reel records must be a List")
          :examples $ []
          :schema $ quote $ Fn Input
            -> $ List Dynamic
            :generics Input
        'reel $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def reel
            {}
              :records $ []
              :pointer None
              :stopped? false
              :display? false
              :merged? false
          :examples $ []
          :schema $ quote $ Map Tag Dynamic
        'require-field $ %{} 'CodeEntry
          :doc "|Read a field that must be present; raises with the field name when field-option gives none."
          :code $ quote $ defn require-field (value field)
            match (field-option value field)
              (:some v) v
              (:none)
                raise $ str "|[reel] missing field " field
          :examples $ []
          :schema $ quote $ Fn Input Tag (-> Dynamic) (:generics Input)
        'store $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def store
            {}
              :states $ {}
              :tasks $ []
          :examples $ []
          :schema $ quote $ Map Tag Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns reel.schema
    'reel.style $ %{} 'FileEntry
      :defs $ {}
        'button $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle button
            {}
              |$0 $ {} (:height |32px) (:padding "|0 12px") (:font-size |14px) (:border "|1px solid hsl(0 0% 85%)") (:border-radius |4px) (:background-color |white) (:cursor |pointer) (:display |inline-block) (:line-height |30px)
              |$0:hover $ {} (:color "|var(--rui-color-primary, hsl(200 80% 50%))") (:border-color "|var(--rui-color-primary, hsl(200 80% 50%))")
          :examples $ []
          :schema $ quote String
        'column $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle column
            {} $ |$0 $ {} (:display |flex) (:align-items |stretch) (:flex-direction |column)
          :examples $ []
          :schema $ quote String
        'expand $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle expand
            {} $ |$0 $ {} (:flex |1) (:overflow |auto)
          :examples $ []
          :schema $ quote String
        'flex $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle flex
            {} $ |$0 $ {} (:flex |1)
          :examples $ []
          :schema $ quote String
        'font-code $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle font-code
            {} $ |$0 $ {}
              :font-family "|var(--rui-font-mono, 'Source Code Pro', Menlo, 'Ubuntu Mono', Consolas, monospace)"
          :examples $ []
          :schema $ quote String
        'font-fancy $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle font-fancy
            {} $ |$0 $ {}
              :font-family "|var(--rui-font-display, 'Josefin Sans', 'Helvetica Neue', Arial, sans-serif)"
          :examples $ []
          :schema $ quote String
        'fullscreen $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle fullscreen
            {} $ |$0 $ {} (:position |absolute) (:left 0) (:top 0) (:width |100%) (:height |100%) (:overflow |auto)
          :examples $ []
          :schema $ quote String
        'global $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle global
            {} $ |$0 $ {}
              :font-family "|var(--rui-font-sans, -apple-system, BlinkMacSystemFont, 'Segoe UI', sans-serif)"
              :line-height |1.6
              :font-size |14px
          :examples $ []
          :schema $ quote String
        'input $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle input
            {}
              |$0 $ {} (:height |32px) (:padding "|0 8px") (:font-size |14px) (:border "|1px solid hsl(0 0% 85%)") (:border-radius |4px) (:outline |none) (:min-width |120px)
              |$0:focus $ {} $ :border-color "|var(--rui-color-primary, hsl(200 80% 50%))"
          :examples $ []
          :schema $ quote String
        'link $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle link
            {}
              |$0 $ {} (:display |inline-block) (:margin |4px) (:color "|var(--rui-color-primary, hsl(200 80% 50%))") (:text-decoration |underline) (:text-underline-offset |2px) (:cursor |pointer) (:user-select |none)
              |$0:hover $ {} $ :color "|var(--rui-color-primary-hover, hsl(200 80% 40%))"
          :examples $ []
          :schema $ quote String
        'row $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle row
            {} $ |$0 $ {} (:display |flex) (:align-items |stretch) (:flex-direction |row)
          :examples $ []
          :schema $ quote String
        'row-middle $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle row-middle
            {} $ |$0 $ {} (:display |flex) (:align-items |center) (:justify-content |flex-start) (:flex-direction |row)
          :examples $ []
          :schema $ quote String
        'row-parted $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle row-parted
            {} $ |$0 $ {} (:display |flex) (:align-items |center) (:justify-content |space-between) (:flex-direction |row)
          :examples $ []
          :schema $ quote String
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns reel.style
          :require $ respo.css :refer $ defstyle
    'reel.test-typed $ %{} 'FileEntry
      :defs $ {} $ 'main!
        %{} 'CodeEntry (:doc |)
          :code $ quote $ defn main! ()
            let
                updater $ fn (store op id time)
                  hint-fn $ Fn String Number String Number $ -> String
                  str store op
                initial $ decode-map-as
                  .to-map $ typed/new-reel |base
                  reel.typed/State Number String
                live $ typed/record-op updater initial 5 |one 10
                queued $ typed/record-op updater (typed/recall updater live 0) 7 |two 20
                running $ typed/resume updater queued
              assert= |base $ :store queued
              assert= |base57 $ :store running
              assert= false $ :stopped? running
              assert= true $
                :pointer running
                , .none?
              assert=
                [] (typed/new-record 5 |one 10) (typed/new-record 7 |two 20)
                :records running
              assert= |base5 $ typed/play-records updater |base (:records running) 1
              , &unit
          :examples $ []
          :schema $ quote $ Fn (-> Unit)
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns reel.test-typed
          :require $ reel.typed :as typed
    'reel.typed $ %{} 'FileEntry
      :defs $ {}
        'Control $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defenum Control (:toggle) (:recall Number) (:run) (:step) (:merge) (:reset) (:remove Number)
          :examples $ []
          :schema $ quote EnumDef
        'Record $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct Record (:generics Op) (:op Op) (:id String) (:time Number)
          :examples $ []
          :schema $ quote StructDef
        'State $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct State (:generics Op Store) (:base Store) (:store Store)
            :records $ List $ reel.typed/Record Op
            :pointer $ Option Number
            :stopped? Bool
            :display? Bool
            :merged? Bool
          :examples $ []
          :schema $ quote StructDef
        'apply-control $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn apply-control (updater reel control)
            match control
              (:toggle) (toggle-display reel)
              (:recall pointer)
                if
                  and (>= pointer 0)
                    <= pointer $ count $ :records reel
                    = pointer $ floor pointer
                  recall updater reel pointer
                  , reel
              (:run) (resume updater reel)
              (:step) (step updater reel)
              (:merge) (merge-reel updater reel)
              (:reset) (reset-reel reel)
              (:remove pointer)
                if
                  and
                    .some? $ :pointer reel
                    =
                      .unwrap $ :pointer reel
                      , pointer
                  remove-current updater reel
                  , reel
          :examples $ []
          :schema $ quote $ Fn
            Fn Store Op String Number $ -> Store
            State Op Store
            , Control
              -> $ State Op Store
              :generics Op Store
          :tests $ [] $ %{} 'TestEntry (:name |dispatch-equivalence)
            :code $ quote $ let
                updater $ fn (store op id time)
                  hint-fn $ Fn String Number String Number $ -> String
                  str store op
                live $ record-op updater
                  record-op updater
                    assert-type (new-reel |base) (State Number String)
                    , 5 |one 10
                  , 7 |two 20
                paused $ recall updater live 1
              do
                assert= (toggle-display live)
                  apply-control updater live $ %:: Control :toggle
                assert= paused $ apply-control updater live $ %:: Control :recall 1
                assert= (resume updater paused)
                  apply-control updater paused $ %:: Control :run
                assert= (step updater paused)
                  apply-control updater paused $ %:: Control :step
                assert= (merge-reel updater paused)
                  apply-control updater paused $ %:: Control :merge
                assert= (reset-reel paused)
                  apply-control updater paused $ %:: Control :reset
                assert= (remove-current updater paused)
                  apply-control updater paused $ %:: Control :remove 1
                assert= paused $ apply-control updater paused $ %:: Control :remove 2
        'decode-control $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn decode-control (op)
            match op
              (:reel/toggle)
                Some $ Control :toggle
              (:reel/recall pointer)
                if (number? pointer)
                  Some $ Control :recall pointer
                  , None
              (:reel/run)
                Some $ Control :run
              (:reel/step)
                Some $ Control :step
              (:reel/merge)
                Some $ Control :merge
              (:reel/reset)
                Some $ Control :reset
              (:reel/remove pointer)
                if (number? pointer)
                  Some $ Control :remove pointer
                  , None
              _ None
          :examples $ []
          :schema $ quote $ Fn Input
            -> $ Option Control
            :generics Input
          :tests $ [] $ %{} 'TestEntry (:name |control-decoding)
            :code $ quote $ do
              assert=
                Some $ %:: Control :toggle
                decode-control $ :: :reel/toggle
              assert=
                Some $ %:: Control :recall 2
                decode-control $ :: :reel/recall 2
              assert=
                Some $ %:: Control :run
                decode-control $ :: :reel/run
              assert=
                Some $ %:: Control :step
                decode-control $ :: :reel/step
              assert=
                Some $ %:: Control :merge
                decode-control $ :: :reel/merge
              assert=
                Some $ %:: Control :reset
                decode-control $ :: :reel/reset
              assert=
                Some $ %:: Control :remove 1
                decode-control $ :: :reel/remove 1
              assert= None $ decode-control $ :: :app/update |text
              assert= None $ decode-control $ :: :reel/recall |bad
              assert= None $ decode-control $ :: :reel/remove |bad
        'merge-reel $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn merge-reel (updater reel)
            if (:stopped? reel)
              let
                  pointer $ reel.util/unwrap-option $ :pointer reel
                if (&= pointer 0) reel $ let
                    base $ play-records updater (:base reel) (:records reel) pointer
                  struct-with reel (:base base) (:store base)
                    :records $ &list:slice (:records reel) pointer $ count (:records reel)
                    :pointer $ Some 0
                    :merged? true
              struct-with reel
                :base $ :store reel
                :records $ []
                :pointer None
                :merged? true
          :examples $ []
          :schema $ quote $ Fn
            Fn Store Op String Number $ -> Store
            State Op Store
            -> $ State Op Store
            :generics Op Store
          :tests $ [] $ %{} 'TestEntry (:name |paused-and-live-merge)
            :code $ quote $ let
                updater $ fn (store op id time)
                  hint-fn $ Fn String Number String Number $ -> String
                  str store op
                live $ record-op updater
                  record-op updater
                    assert-type (new-reel |base) (State Number String)
                    , 5 |one 10
                  , 7 |two 20
                paused $ recall updater live 1
                merged $ merge-reel updater paused
                merged-live $ merge-reel updater live
              do
                assert= |base5 $ :base merged
                assert= |base5 $ :store merged
                assert= (Some 0) (:pointer merged)
                assert=
                  [] $ new-record 7 |two 20
                  :records merged
                assert= |base57 $ :store $ resume updater merged
                assert= |base5 $ :store $ refresh updater merged |ignored
                assert= |base57 $ :base merged-live
                assert= 0 $ count $ :records merged-live
                assert= true $ :merged? merged-live
                let
                    zero $ recall updater live 0
                  assert= zero $ merge-reel updater zero
        'new-record $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn new-record (op id time) (Record :op op :id id :time time)
          :examples $ []
          :schema $ quote $ Fn Op String Number
            -> $ reel.typed/Record Op
            :generics Op
        'new-reel $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn new-reel (base)
            State :base base :store base :records ([]) :pointer None :stopped? false :display? false :merged? false
          :examples $ []
          :schema $ quote $ Fn Store
            -> $ State Op Store
            :generics Op Store
          :tests $ [] $ %{} 'TestEntry (:name |empty-typed-state)
            :code $ quote $ let
                reel $ assert-type (new-reel |initial) (State Number String)
              do
                assert= |initial $ :base reel
                assert= |initial $ :store reel
                assert= 0 $ count $ :records reel
                assert= true $
                  :pointer reel
                  , .none?
                assert= false $ :stopped? reel
                assert= false $ :display? reel
                assert= false $ :merged? reel
        'play-records $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn play-records (updater base records limit)
            foldl (&list:slice records 0 limit) base $ fn (store record)
              hint-fn $ Fn Store (reel.typed/Record Op) (-> Store)
              updater store (:op record) (:id record) (:time record)
          :examples $ []
          :schema $ quote $ Fn
            Fn Store Op String Number $ -> Store
            , Store
              List $ reel.typed/Record Op
              , Number (-> Store) (:generics Op Store)
          :tests $ [] $ %{} 'TestEntry (:name |replay-prefix)
            :code $ quote $ let
                updater $ fn (store op id time)
                  hint-fn $ Fn String Number String Number $ -> String
                  str store op
                records $ [] (new-record 5 |id-1 100) (new-record 7 |id-2 200)
              do
                assert= |base $ play-records updater |base records 0
                assert= |base5 $ play-records updater |base records 1
                assert= |base57 $ play-records updater |base records 2
        'recall $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn recall (updater reel pointer)
            assert "|Reel pointer must be an integer within the record range" $ and (>= pointer 0)
              <= pointer $ count $ :records reel
              = pointer $ floor pointer
            struct-with reel
              :store $ play-records updater (:base reel) (:records reel) pointer
              :pointer $ Some pointer
              :stopped? true
          :examples $ []
          :schema $ quote $ Fn
            Fn Store Op String Number $ -> Store
            State Op Store
            , Number
              -> $ State Op Store
              :generics Op Store
          :tests $ [] $ %{} 'TestEntry (:name |recall-queue-resume)
            :code $ quote $ let
                updater $ fn (store op id time)
                  hint-fn $ Fn String Number String Number $ -> String
                  str store op
                live $ record-op updater
                  assert-type (new-reel |base) (State Number String)
                  , 5 |one 10
                stopped $ recall updater live 0
                queued $ record-op updater stopped 7 |two 20
                running $ resume updater queued
              do
                assert= |base $ :store stopped
                assert= true $ :stopped? stopped
                assert= (Some 0) (:pointer stopped)
                assert= |base $ :store queued
                assert= 2 $ count $ :records queued
                assert= |base57 $ :store running
                assert= false $ :stopped? running
                assert= true $
                  :pointer running
                  , .none?
                assert= |base5 $ :store $ recall updater running 1
                assert= |base57 $ :store $ recall updater running 2
        'record-op $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn record-op (updater reel op op-id op-time)
            let
                record $ new-record op op-id op-time
                records $ append (:records reel) record
              if (:stopped? reel)
                struct-with reel $ :records records
                struct-with reel (:records records)
                  :store $ updater (:store reel) op op-id op-time
          :examples $ []
          :schema $ quote $ Fn
            Fn Store Op String Number $ -> Store
            State Op Store
            , Op String Number
              -> $ State Op Store
              :generics Op Store
          :tests $ [] $ %{} 'TestEntry (:name |live-and-paused)
            :code $ quote $ let
                updater $ fn (store op id time)
                  hint-fn $ Fn String Number String Number $ -> String
                  str store op
                initial $ assert-type (new-reel |base) (State Number String)
                live $ record-op updater initial 5 |id-1 100
                paused $ record-op updater
                  struct-with live $ :stopped? true
                  , 7 |id-2 200
              do
                assert= |base $ :base live
                assert= |base5 $ :store live
                assert= |base5 $ :store paused
                assert=
                  [] (new-record 5 |id-1 100) (new-record 7 |id-2 200)
                  :records paused
                assert= 0 $ count $ :records initial
        'refresh $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn refresh (updater reel base)
            let
                next-base $ if (:merged? reel) (:base reel) base
                limit $ if (:stopped? reel)
                  reel.util/unwrap-option $ :pointer reel
                  count $ :records reel
              struct-with reel (:base next-base)
                :store $ play-records updater next-base (:records reel) limit
          :examples $ []
          :schema $ quote $ Fn
            Fn Store Op String Number $ -> Store
            State Op Store
            , Store
              -> $ State Op Store
              :generics Op Store
        'remove-current $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn remove-current (updater reel)
            if (:stopped? reel)
              let
                  pointer $ reel.util/unwrap-option $ :pointer reel
                if (&= pointer 0) reel $ let
                    records $ &list:concat
                      &list:slice (:records reel) 0 $ dec pointer
                      &list:slice (:records reel) pointer $ count $ :records reel
                    next $ struct-with reel $ :records records
                  recall updater next $ dec pointer
              , reel
          :examples $ []
          :schema $ quote $ Fn
            Fn Store Op String Number $ -> Store
            State Op Store
            -> $ State Op Store
            :generics Op Store
        'reset-reel $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn reset-reel (reel)
            if (:stopped? reel)
              struct-with reel $ :records $ &list:slice (:records reel) 0
                reel.util/unwrap-option $ :pointer reel
              struct-with reel
                :store $ :base reel
                :records $ []
                :pointer None
                :stopped? false
          :examples $ []
          :schema $ quote $ Fn (State Op Store)
            -> $ State Op Store
            :generics Op Store
          :tests $ [] $ %{} 'TestEntry (:name |reset-and-refresh)
            :code $ quote $ let
                updater $ fn (store op id time)
                  hint-fn $ Fn String Number String Number $ -> String
                  str store op
                initial $ assert-type (new-reel |base) (State Number String)
                live $ record-op updater (record-op updater initial 5 |one 10) 7 |two 20
                paused $ recall updater live 1
                reset-paused $ reset-reel paused
                reset-live $ reset-reel live
              do
                assert= |base5 $ :store reset-paused
                assert= 1 $ count $ :records reset-paused
                assert= (Some 1) (:pointer reset-paused)
                assert= |base $ :store reset-live
                assert= 0 $ count $ :records reset-live
                assert= |next57 $ :store $ refresh updater live |next
                assert= |next5 $ :store $ refresh updater paused |next
                assert= |base57 $ :store $ refresh updater
                  struct-with live $ :merged? true
                  , |ignored
                assert= true $ :display? $ toggle-display initial
                assert= initial $ toggle-display $ toggle-display initial
        'resume $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn resume (updater reel)
            struct-with reel
              :store $ play-records updater (:base reel) (:records reel)
                count $ :records reel
              :pointer None
              :stopped? false
          :examples $ []
          :schema $ quote $ Fn
            Fn Store Op String Number $ -> Store
            State Op Store
            -> $ State Op Store
            :generics Op Store
        'step $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn step (updater reel)
            if
              and (:stopped? reel)
                >=
                  count $ :records reel
                  , 2
              let
                  pointer $ reel.util/unwrap-option $ :pointer reel
                if
                  < pointer $ count $ :records reel
                  struct-with reel
                    :pointer $ Some $ inc pointer
                    :store $ play-records updater (:store reel)
                      &list:slice (:records reel) pointer $ inc pointer
                      , 1
                  struct-with reel
                    :pointer $ Some 0
                    :store $ :base reel
              , reel
          :examples $ []
          :schema $ quote $ Fn
            Fn Store Op String Number $ -> Store
            State Op Store
            -> $ State Op Store
            :generics Op Store
          :tests $ [] $ %{} 'TestEntry (:name |stepping-and-removal)
            :code $ quote $ let
                updater $ fn (store op id time)
                  hint-fn $ Fn String Number String Number $ -> String
                  str store op
                one $ record-op updater
                  assert-type (new-reel |base) (State Number String)
                  , 5 |one 10
                live $ record-op updater (record-op updater one 7 |two 20) 9 |three 30
                zero $ recall updater live 0
                step-one $ step updater zero
                step-two $ step updater step-one
                removed $ remove-current updater step-two
              do
                assert= live $ step updater live
                assert= |base5 $ :store step-one
                assert= |base57 $ :store step-two
                assert= |base $ :store $ step updater (step updater step-two)
                assert= |base5 $ :store removed
                assert= (Some 1) (:pointer removed)
                assert=
                  [] (new-record 5 |one 10) (new-record 9 |three 30)
                  :records removed
                assert= |base59 $ :store $ resume updater removed
                assert= live $ remove-current updater live
                assert= zero $ remove-current updater zero
                let
                    one-paused $ recall updater one 0
                  assert= one-paused $ step updater one-paused
        'toggle-display $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn toggle-display (reel)
            struct-with reel $ :display? $ not (:display? reel)
          :examples $ []
          :schema $ quote $ Fn (State Op Store)
            -> $ State Op Store
            :generics Op Store
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns reel.typed
    'reel.typed-compat $ %{} 'FileEntry
      :defs $ {} $ 'view-data
        %{} 'CodeEntry (:doc |)
          :code $ quote $ defn view-data (reel)
            {}
              :base $ :base reel
              :store $ :store reel
              :records $ map (:records reel)
                fn (record)
                  hint-fn $ Fn (typed/Record Op)
                    -> $ Tuple Op String Number
                  [] (:op record) (:id record) (:time record)
              :pointer $ :pointer reel
              :stopped? $ :stopped? reel
              :display? $ :display? reel
              :merged? $ :merged? reel
          :examples $ []
          :schema $ quote $ Fn (typed/State Op Store)
            -> $ Map Tag Dynamic
            :generics Op Store
          :tests $ []
            %{} 'TestEntry (:name |legacy-view-shape)
              :code $ quote $ let
                  initial $ assert-type (typed/new-reel |base) (typed/State Number String)
                assert=
                  {} (:base |base) (:store |base)
                    :records $ []
                    :pointer None
                    :stopped? false
                    :display? false
                    :merged? false
                  view-data initial
            %{} 'TestEntry (:name |present-pointer-and-records-keep-legacy-shape)
              :code $ quote $ let
                  records $ [] (typed/Record :op 7 :id |first :time 10) (typed/Record :op 9 :id |second :time 20)
                  zero $ typed/State :base |base :store |current :records records :pointer (Some 0) :stopped? true :display? true :merged? false
                  later $ typed/State :base |base :store |current :records records :pointer (Some 2) :stopped? true :display? false :merged? true
                assert=
                  {} (:base |base) (:store |current)
                    :records $ [] ([] 7 |first 10) ([] 9 |second 20)
                    :pointer $ Some 0
                    :stopped? true
                    :display? true
                    :merged? false
                  view-data zero
                assert=
                  {} (:base |base) (:store |current)
                    :records $ [] ([] 7 |first 10) ([] 9 |second 20)
                    :pointer $ Some 2
                    :stopped? true
                    :display? false
                    :merged? true
                  view-data later
              :tags $ #{} :legacy-boundary :unit
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns reel.typed-compat
          :require $ reel.typed :as typed
    'reel.util $ %{} 'FileEntry
      :defs $ {}
        'BrowserStringHost $ %{} 'CodeEntry (:doc |)
          :code $ quote $ deftrait BrowserStringHost
            .toUpperCase $ Fn $ -> BrowserStringHost
            .charCodeAt $ Fn Number $ -> Number
          :examples $ []
          :ffi $ {} (:backend :js) (:kind :external-object) (:target :browser)
          :schema $ quote Trait
        'browser-window $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn browser-window () (browser/window-host)
          :examples $ []
          :schema $ quote $ Fn (-> browser/WindowHost) (:features :js-ffi)
        'keyboard-code $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn keyboard-code (keyboard)
            let
                text $ unsafe-coerce keyboard BrowserStringHost
                upper $ unsafe-coerce (.!toUpperCase text) BrowserStringHost
              decode-map-as (.!charCodeAt upper 0) 'Number
          :examples $ []
          :schema $ quote $ Fn String (-> Number) (:features :js-ffi)
        'listen-devtools! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn listen-devtools! (keyboard on-control)
            listen-devtools-toggle! keyboard $ fn ()
              hint-fn $ Fn $ -> Unit
              on-control $ reel.typed/Control :toggle
          :examples $ []
          :schema $ quote $ Fn String
            Fn reel.typed/Control $ -> Unit
            -> Unit
            :features :js-ffi
        'listen-devtools-toggle! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn listen-devtools-toggle! (keyboard toggle!)
            browser/add-event-listener! |keydown $ fn (event)
              let
                  keyboard-event $ browser/keyboard-event-host event
                if
                  and (keyboard-event :shift-key?) (keyboard-event :meta-key?) (keyboard-event :alt-key?)
                    = (keyboard-code keyboard) (keyboard-event :key-code)
                  do (toggle!) &unit
                  , &unit
            , &unit
          :examples $ []
          :schema $ quote $ Fn String
            Fn $ -> Unit
            -> Unit
            :features :js-ffi
        'map-indexed-dynamic $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn map-indexed-dynamic (xs f) (map-indexed xs f)
          :examples $ []
          :schema $ quote $ Fn (List T)
            Fn Number T $ -> R
            -> $ List R
            :generics T R
          :tests $ []
            %{} 'TestEntry (:name |indexed-map-empty-and-populated)
              :code $ quote $ do
                assert= ([])
                  map-indexed-dynamic ([])
                    fn (i x)
                      hint-fn $ Fn Number Number $ -> Number
                      + i x
                assert= ([] 10 21)
                  map-indexed-dynamic ([] 10 20)
                    fn (i x)
                      hint-fn $ Fn Number Number $ -> Number
                      + i x
              :tags $ #{} :unit
            %{} 'TestEntry (:name |preserves-indexed-member-result-types)
              :code $ quote $ assert= ([] 1 3)
                map-indexed-dynamic ([] |a |abc)
                  fn (index text) (.len text)
              :tags $ #{} :unit
        'santinize-html-text $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn santinize-html-text (content)
            &str:replace
              &str:replace
                &str:replace (&str:replace content |& |&amp;) |< |&lt;
                , |> |&gt;
              , "| " |&nbsp;
          :examples $ []
          :schema $ quote $ Fn String (-> String)
        'tab-echo! $ %{} 'CodeEntry
          :doc "|Open the data in a new tab: :json or :edn as plain text, or by default in the EDN tree viewer. Moved from respo-ui.util so Reel no longer depends on respo-ui."
          :code $ quote $ defn tab-echo! (data format)
            match (format .unwrap-or :viewer)
              :json $ let
                  content $ js-ffi.contract/expect-string |JSON.stringify $ js/JSON.stringify (to-js-data data) js/undefined 2
                (browser/window-open |about:blank) .fold
                  fn () &unit
                  fn (window)
                    let
                        document window.:document
                      respo.dom/set-inner-html! (unsafe-coerce document.:body 'respo.dom/DomElement)
                        str |<pre> (santinize-html-text content) |</pre>
                    , &unit
              :edn $ let
                  content $ format-cirru-edn data
                (browser/window-open |about:blank) .fold
                  fn () &unit
                  fn (window)
                    let
                        document window.:document
                      respo.dom/set-inner-html! (unsafe-coerce document.:body 'respo.dom/DomElement)
                        str |<pre> (santinize-html-text content) |</pre>
                    , &unit
              _ $ let
                  content $ format-cirru-edn $ :: :tab-echo data
                  app |https://r.tiye.me/Memkits/edn-tree-viewer/?mode=dev
                (browser/window-open app) .fold
                  fn () &unit
                  fn (window)
                    browser/set-timeout!
                      fn () $ window .post-message! content |https://r.tiye.me
                      , 20
                    browser/set-timeout!
                      fn () $ window .post-message! content |https://r.tiye.me
                      , 200
                    , &unit
            , &unit
          :examples $ []
          :schema $ quote $ Fn Dynamic (Option Tag) (-> Unit) (:features :js-ffi)
        'unwrap-option $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn unwrap-option (o)
            if (.some? o) (.unwrap o) (raise "|unexpected none")
          :examples $ []
          :schema $ quote $ Fn (Option T) (-> T) (:generics T)
          :tests $ [] $ %{} 'TestEntry (:name |preserves-option-payload)
            :code $ quote $ let ()
              assert= 8 $ + 1 $ unwrap-option (Some 7)
              assert= |value $ unwrap-option $ Some |value
              assert= "|unexpected none" $ try
                let () (unwrap-option None) |unexpected-success
                fn (error)
                  hint-fn $ Fn String $ -> String
                  , error
            :tags $ #{} :unit
        'update-map-dynamic $ %{} 'CodeEntry
          :doc "|Update key k of a map with f, which receives the current value as an Option (none when the key is missing)."
          :code $ quote $ defn update-map-dynamic (m k f)
            &let
              checked-map $ decode-map-as m 'Map
              &map:assoc checked-map k $ if (fn? f)
                f $ get checked-map k
                raise "|update-map-dynamic expects a function"
          :examples $ []
          :schema $ quote $ Fn Dynamic Dynamic Dynamic
            -> $ Map Dynamic Dynamic
          :tests $ [] $ %{} 'TestEntry (:name |absence-migration-map-update-boundary)
            :code $ quote $ let
                calls $ ref 0
                record $ fn (value-option)
                  reset! calls $ inc @calls
                  match value-option
                    (:some value) value
                    (:none) :absent
                source $ {} (:nil-value nil) (:false-value false) (:zero-value 0) (:empty-value |)
                absent $ update-map-dynamic source :missing record
              assert= :absent $ .unwrap $ get (decode-map-as absent 'Map) :missing
              assert= source $ update-map-dynamic source :nil-value record
              assert= source $ update-map-dynamic source :false-value record
              assert= source $ update-map-dynamic source :zero-value record
              assert= source $ update-map-dynamic source :empty-value record
              assert= 5 @calls
              assert= 4 $ count source
              assert= :rejected $ try
                do (update-map-dynamic |wrong :value record) :accepted
                fn (error) :rejected
              assert= :rejected $ try
                do
                  update-map-dynamic ([]) 0 record
                  , :accepted
                fn (error) :rejected
              assert= :rejected $ try
                do
                  update-map-dynamic (reel.typed/Record :op 1 :id |record :time 0) :op record
                  , :accepted
                fn (error) :rejected
              assert= 5 @calls
              assert= :propagated $ try
                do
                  update-map-dynamic source :zero-value $ fn (value) (raise |callback-failure)
                  , :accepted
                fn (error) :propagated
              assert=
                {} (|key false) (42 0)
                update-map-dynamic
                  {} (|key false) (42 0)
                  , |key record
              assert=
                {} (|key false) (42 0)
                update-map-dynamic
                  {} (|key false) (42 0)
                  , 42 record
            :tags $ #{} :migration :unit
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns reel.util
          :require $ js-ffi.browser :as browser
