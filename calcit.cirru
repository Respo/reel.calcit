
{} (:about "|Machine-generated snapshot. Do not edit directly — changes will be overwritten. Use `calcit query` to inspect and `calcit edit`/`calcit tree` to modify. Run `calcit docs agents --full` first. Manual edits must follow format and schema conventions, then run `calcit edit format`.") (:package |reel)
  :entries $ {}
    :default $ {} (:description |) (:init-fn 'reel.app.main/main!) (:mode :native) (:reload-fn 'reel.app.main/reload!)
      :feature-policy $ {}
      :modules $ [] |respo.calcit/ |respo-ui.calcit/
      :type-slots $ {}
  :files $ {}
    'reel.app.comp.container $ %{} 'FileEntry
      :defs $ {}
        'comp-container $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defcomp comp-container (reel)
              let
                  store $ :store reel
                  states $ reel.schema/read-field store :states
                div
                  {} $ :class-name css/global
                  comp-todolist (>> states :todolist) (reel.schema/read-field store :tasks)
                  comp-typed-reel (>> states :reel) reel $ {}
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'respo.schema/Component)
              :args $ [] (:: 'reel.typed/State 'Enum 'Map)
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote
          ns reel.app.comp.container $ :require
            respo.util.format :refer $ hsl
            respo-ui.core :as ui
            respo-ui.css :as css
            respo.core :refer $ defcomp <> >> div span
            respo.css :refer $ defstyle
            respo.comp.space :refer $ =<
            reel.comp.reel :refer $ comp-typed-reel
            reel.app.comp.todolist :refer $ comp-todolist
    'reel.app.comp.task $ %{} 'FileEntry
      :defs $ {}
        'comp-task $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defcomp comp-task (task)
              div
                {} $ :style style-container
                div $ {} (:class-name css-done)
                  :style $ if (reel.schema/read-field task :done?)
                    {} $ :background-color (hsl 42 100 60)
                  :on-click $ fn (e d!)
                    d! $ :: :task/toggle (reel.schema/read-field task :id)
                =< 8 nil
                input $ {} (:placeholder "|Content of task") (:class-name css/input)
                  :value $ reel.schema/read-field task :text
                  :on-input $ fn (e d!)
                    d! $ :: :task/edit (reel.schema/read-field task :id) (reel.schema/read-field e :value)
                =< 8 nil
                button
                  {} (:class-name css/button)
                    :style $ {}
                      :background-color $ hsl 6 100 60
                      :color :white
                      :border :none
                    :on-click $ fn (e d!)
                      d! $ :: :task/remove (reel.schema/read-field task :id)
                  <> |Remove
          :examples $ []
          :schema $ :: 'Dynamic
        'css-done $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defstyle css-done $ {}
              |$0 $ {} (:width 32) (:height 32) (:display :inline-block)
                :background-color $ hsl 220 100 76
                :cursor :pointer
          :examples $ []
          :schema $ :: 'Dynamic
        'style-container $ %{} 'CodeEntry (:doc |)
          :code $ quote
            def style-container $ {} (:margin "|8px 0") (:height |32px)
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote
          ns reel.app.comp.task $ :require
            respo.core :refer $ [] defcomp <> div button input
            respo.css :refer $ defstyle
            respo.util.format :refer $ [] hsl
            respo.comp.space :refer $ [] =<
            respo-ui.core :as ui
            respo-ui.css :as css
    'reel.app.comp.todolist $ %{} 'FileEntry
      :defs $ {}
        'comp-todolist $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defcomp comp-todolist (states tasks)
              let
                  cursor $ reel.schema/read-field states :cursor
                  state $ either (reel.schema/read-field states :data) |
                div
                  {} $ :class-name (str-spaced css/fullscreen css-container)
                  div ({})
                    input $ {} (:placeholder "|Task to add...") (:value state) (:class-name css/input)
                      :on-input $ fn (e d!)
                        do
                          d! $ :: :states cursor (reel.schema/read-field e :value)
                          , &unit
                      :on-keydown $ fn (e d!)
                        do
                          if
                            = (reel.schema/read-field e :keycode) 13
                            do
                              d! $ :: :task/add state
                              d! $ :: :states ([]) |
                          , &unit
                    =< 8 nil
                    button
                      {} (:class-name css/button)
                        :on-click $ fn (e d!)
                          do
                            d! $ :: :task/add state
                            d! $ :: :states cursor |
                            , &unit
                      <> |Add
                    =< 8 nil
                    button $ {} (:inner-text |Try) (:class-name css/button)
                      :on-click $ fn (e d!)
                        do
                          d! $ :: :try
                            {}
                              :a $ [] :b :w
                              :c $ {} (:d :e)
                            {}
                              :a $ [] :b :w
                              :c $ {} (:d :e)
                          , &unit
                  list-> ({})
                    -> tasks $ map
                      fn (task)
                        [] (reel.schema/read-field task :id) (comp-task task)
          :examples $ []
          :schema $ :: 'Dynamic
        'css-container $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defstyle css-container $ {}
              |$0 $ {} (:padding 8) (:overflow :auto)
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote
          ns reel.app.comp.todolist $ :require
            respo.core :refer $ defcomp <> div span button input list->
            respo.css :refer $ defstyle
            respo.comp.space :refer $ =<
            respo-ui.core :as ui
            respo-ui.css :as css
            reel.app.comp.task :refer $ comp-task
    'reel.app.main $ %{} 'FileEntry
      :defs $ {}
        '*reel $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defatom *reel $ typed/new-reel schema/store
          :examples $ []
          :schema $ :: 'Ref (:: 'reel.typed/State 'Enum 'Map)
        'dispatch! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn dispatch! (op) (println |Dispatch! op)
              reset! *reel $ match (typed/decode-control op)
                (:some control) (typed/apply-control updater @*reel control)
                (:none)
                  typed/record-op updater @*reel op (generate-id!)
                    :timestamp $ host/date-now-snapshot
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Unit)
              :args $ [] 'Enum
        'main! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn main! () (load-console-formatter!) (render-app!)
              add-watch *reel :changes $ fn (reel prev) (render-app!)
              listen-devtools! |k dispatch!
              dispatch! $ :: :reel/toggle
              println "|App started!"
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Unit)
              :args $ []
              :features $ #{} :js-ffi
        'mount-target $ %{} 'CodeEntry (:doc |)
          :code $ quote
            def mount-target $ js/document.querySelector |.app
          :examples $ []
          :schema $ :: 'Dynamic
        'reload! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn reload! () $ if (nil? build-errors)
              do (remove-watch *reel :changes) (clear-cache!)
                add-watch *reel :changes $ fn (reel prev) (render-app!)
                reset! *reel $ typed/refresh updater @*reel schema/store
                hud! |ok~ |Ok
              hud! |error build-errors
          :examples $ []
          :schema $ :: 'Dynamic
        'render-app! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn render-app! () $ render! mount-target (comp-container @*reel) dispatch!
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote
          ns reel.app.main $ :require
            respo.core :refer $ render! clear-cache!
            reel.app.comp.container :refer $ comp-container
            reel.util :refer $ listen-devtools!
            reel.schema :as schema
            reel.app.updater :refer $ updater
            |./calcit.build-errors :default build-errors
            |bottom-tip :default hud!
            reel.typed :as typed
            js-ffi.shared :as host
    'reel.app.updater $ %{} 'FileEntry
      :defs $ {}
        'updater $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn updater (store op op-id op-time)
              match op
                (:states cursor s) (update-states store cursor s)
                (:task/add text)
                  update store :tasks $ fn (tasks)
                    prepend tasks $ {} (:id op-id) (:done? false) (:text text)
                (:task/remove id)
                  update store :tasks $ fn (tasks)
                    filter tasks $ fn (task)
                      /= (reel.schema/read-field task :id) id
                (:task/toggle id)
                  update store :tasks $ fn (tasks)
                    map tasks $ fn (task)
                      if
                        = (reel.schema/read-field task :id) id
                        update task :done? not
                        , task
                (:task/edit task-id text)
                  update store :tasks $ fn (tasks)
                    map tasks $ fn (task)
                      if
                        = (reel.schema/read-field task :id) task-id
                        assoc task :text text
                        , task
                (:try _) store
                _ $ do (js/console.warn "|Unknown op" op) store
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Map)
              :args $ [] 'Map 'Enum 'String 'Number
              :features $ #{} :js-ffi
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote
          ns reel.app.updater $ :require
            [] respo.cursor :refer $ [] update-states
    'reel.comp.records $ %{} 'FileEntry
      :defs $ {}
        'comp-action $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defcomp comp-action (action)
              if (literal? action)
                <> $ str action
                if (enum? action)
                  let
                      tag $ option:unwrap (nth action 0)
                      params $ &enum:params action
                    div
                      {} $ :class-name css/row-middle
                      <> $ str tag
                      =< 2 nil
                      list-> ({})
                        -> params $ map-indexed
                          fn (idx item)
                            [] idx $ if (shallow-data? item)
                              <> (to-lispy-string item) style-action-sep
                              div
                                {} (:class-name style-type-tag)
                                  :style $ {} (:display :inline-block)
                                  :on-click $ fn (e d!) (tab-echo! item)
                                <> $ str (type-of item)
                  str action
          :examples $ []
          :schema $ :: 'Dynamic
        'comp-record-item $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defcomp comp-record-item (record pointed? idx)
              div
                {} (:class-name css-record)
                  :style $ if pointed?
                    {}
                      :background-color $ hsl 220 20 56
                      :color :white
                  :on-click $ on-recall idx
                ; <> $ to-lispy-string (first record)
                comp-action $ option:unwrap (first record)
          :examples $ []
          :schema $ :: 'Dynamic
        'comp-records $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defcomp comp-records (records pointer)
              div
                {} $ :class-name (str-spaced css/font-code css-records)
                list-> ({})
                  ->
                    prepend records $ [] :base nil :base
                    map-indexed $ fn (idx record)
                      []
                        option:unwrap $ last record
                        memo-comp-by
                          option:unwrap $ last record
                          , comp-record-item record (= pointer idx) idx
          :examples $ []
          :schema $ :: 'Dynamic
        'css-record $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defstyle css-record $ {}
              |$0 $ {} (:cursor :pointer) (:padding "|0 4px") (:white-space :nowrap) (:cursor :pointer) (:overflow :hidden) (:text-overflow :ellipsis)
              |$0:hover $ {} (:background-color |#eee)
          :examples $ []
          :schema $ :: 'Dynamic
        'css-records $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defstyle css-records $ {}
              |& $ {} (:overflow :auto) (:flex-shrink 0) (:padding-bottom 120) (:padding-top 16) (:width 320) (:font-size 12)
          :examples $ []
          :schema $ :: 'Dynamic
        'literal? $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn literal? (x)
              or (tag? x) (number? x) (string? x) (symbol? x) (bool? x)
          :examples $ []
          :schema $ :: 'Dynamic
        'on-recall $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn on-recall (idx)
              fn (e dispatch!)
                dispatch! $ :: :reel/recall idx
          :examples $ []
          :schema $ :: 'Dynamic
        'shallow-data? $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn shallow-data? (item)
              or (literal? item)
                and (list? item) (every? item literal?)
                and (map? item) (every? item shallow-data?)
          :examples $ []
          :schema $ :: 'Dynamic
        'style-action-sep $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defstyle style-action-sep $ {}
              |& $ {} (:margin "|0 4px")
          :examples $ []
          :schema $ :: 'Dynamic
        'style-data $ %{} 'CodeEntry (:doc |)
          :code $ quote
            def style-data $ {} (:max-width 100) (:overflow :hidden) (:text-overflow :ellipsis) (:white-space :nowrap) (:display :inline-block) (:vertical-align :middle)
          :examples $ []
          :schema $ :: 'Dynamic
        'style-type-tag $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defstyle style-type-tag $ {}
              |& $ {}
                :border $ str "|1px solid " (hsl 0 0 80)
                :border-radius |4px
                :padding "|0 8px"
                :line-height |1.4
                :cursor :pointer
                :margin "|0 4px"
              |&:hover $ {}
                :box-shadow $ str "|0px 0px 2px 2px " (hsl 0 0 0 0.06)
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote
          ns reel.comp.records $ :require
            respo.core :refer $ defcomp <> div span style list-> memo-comp-by
            respo.css :refer $ defstyle
            respo-ui.core :as ui
            respo-ui.css :as css
            respo.comp.space :refer $ =<
            reel.style :as reel-style
            respo.util.format :refer $ hsl
            respo-ui.util :refer $ tab-echo!
    'reel.comp.reel $ %{} 'FileEntry
      :defs $ {}
        'comp-operations $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defcomp comp-operations (stopped?)
              div
                {} $ :style
                  {}
                    :border-bottom $ str "|1px solid " (hsl 0 0 90)
                    :padding "|0 4px"
                render-button |Merge
                  fn (e d!)
                    d! $ :: :reel/merge
                  , true
                render-button |Reset
                  fn (e d!)
                    d! $ :: :reel/reset
                  , true
                render-button |Step
                  fn (e d!)
                    d! $ :: :reel/step
                  , stopped?
                render-button |Run
                  fn (e d!)
                    d! $ :: :reel/run
                  , stopped?
                render-button |Close
                  fn (e d!)
                    d! $ :: :reel/toggle
                  not stopped?
          :examples $ []
          :schema $ :: 'Dynamic
        'comp-reel $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defcomp comp-reel (states reel user-styles)
              if (reel.schema/read-field reel :display?)
                div
                  {}
                    :class-name $ str-spaced css/flex css/column css-reel
                    :style user-styles
                  memo-comp-by :operations comp-operations $ reel.schema/read-field reel :stopped?
                  div
                    {} $ :class-name (str-spaced css/expand css/row)
                    comp-records (reel.schema/read-field reel :records) (reel.schema/read-field reel :pointer)
                    div
                      {}
                        :class-name $ str-spaced css/column css/expand
                        :style $ {} (:overflow :auto) (:padding "|0 8px")
                          :border-left $ str "|1px solid " (hsl 0 0 94)
                      let
                          records $ reel.schema/read-field reel :records
                          pointer $ reel.schema/read-field reel :pointer
                          record $ if (reel.schema/read-field reel :stopped?)
                            if (> pointer 0)
                              get records $ dec pointer
                              %none
                            last records
                        if (option:some? record)
                          let[] (action op-id op-time) (option:unwrap record)
                            div
                              {}
                                :class-name $ str-spaced css/font-code css/column
                                :style $ {} (:font-size 12)
                              div
                                {} (:class-name css/row-parted)
                                  :style $ {}
                                    :border-bottom $ str "|1px solid " (hsl 0 0 94)
                                div ({}) (<> op-time) (=< 8 nil) (<> op-id)
                                if
                                  and (some? pointer) (not= pointer 0)
                                  span $ {} (:inner-text |Remove) (:class-name css/font-fancy)
                                    :style $ {} (:cursor :pointer) (:font-size 12)
                                      :color $ hsl 20 100 70
                                    :on-click $ fn (e d!)
                                      d! $ :: :reel/remove (reel.schema/read-field reel :pointer)
                              div
                                {} (:class-name css/expand)
                                  :style $ {} (:padding "|8px 0") (:white-space :pre)
                                ; <> $ trim (format-cirru-edn action)
                                comp-action action
                          <> |nil
                      div
                        {} $ :class-name (str-spaced css/expand css/font-code css-snippet)
                        <> $ trim
                          format-cirru-edn $ reel.schema/read-field reel :store
                span $ {}
          :examples $ []
          :schema $ :: 'Dynamic
        'comp-typed-reel $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn comp-typed-reel (states reel user-styles)
              comp-reel states (typed-compat/view-data reel) user-styles
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'respo.schema/Component)
              :args $ [] 'Map (:: 'reel.typed/State 'Op 'Store) 'Map
              :generics $ [] 'Op 'Store
        'css-reel $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defstyle css-reel $ {}
              |$0 $ {} (:width |60%) (:height |80%) (:right |0px) (:bottom |0px) (:position :fixed)
                :background-color $ hsl 0 0 100 0.7
                :border $ str "|1px solid " (hsl 0 0 90)
                :font-size 14
                :backdrop-filter "|blur(2px)"
                :z-index 9999
                :border-radius |6px
          :examples $ []
          :schema $ :: 'Dynamic
        'css-snippet $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defstyle css-snippet $ {}
              |$0 $ {} (:font-size 12) (:white-space :pre) (:padding "|16px 0px 200px 0px") (:line-height |20px) (:overflow :auto)
                :border-top $ str "|1px solid " (hsl 0 0 94)
          :examples $ []
          :schema $ :: 'Dynamic
        'render-button $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn render-button (guide on-click enabled?)
              div
                {} (:class-name css/link)
                  :style $ if enabled?
                    {} $ :user-select :none
                    {} (:user-select :none)
                      :color $ hsl 0 0 90
                  :on-click $ if enabled? on-click
                    fn $ e d!
                <> guide
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote
          ns reel.comp.reel $ :require
            respo.core :refer $ defcomp <> >> div button span list-> memo-comp-by
            respo.css :refer $ defstyle
            respo.util.format :refer $ hsl
            respo.comp.inspect :refer $ comp-inspect
            respo-ui.core :as ui
            respo-ui.css :as css
            respo.comp.space :refer $ =<
            reel.comp.records :refer $ comp-records
            respo-value.comp.value :refer $ comp-value
            reel.style :as style
            reel.comp.records :refer $ comp-action
            reel.typed-compat :as typed-compat
    'reel.core $ %{} 'FileEntry
      :defs $ {}
        'play-records $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn play-records (store records updater pointer)
              if (&= 0 pointer) store $ let[] (op op-id op-time)
                option:unwrap $ first records
                &let
                  next-store $ updater store op op-id op-time
                  recur next-store (rest records) updater $ dec pointer
          :examples $ []
          :schema $ :: 'Dynamic
        'reel-control-op? $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn reel-control-op? (op)
              .starts-with?
                str $ option:unwrap (nth op 0)
                , |:reel/
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Bool)
              :args $ [] 'Enum
          :tests $ []
            %{} 'TestEntry (:name |classifies-reel-control-ops)
              :code $ quote
                do
                  assert= true $ reel-control-op? (:: :reel/toggle)
                  assert= false $ reel-control-op? (:: :task/add)
        'reel-updater $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn reel-updater (updater reel op)
              ; println |Name: $ turn-string op
              let
                  op-id $ generate-id!
                  op-time $ js/Date.now
                if (reel-control-op? op)
                  merge reel $ let
                      pointer $ &map:get reel :pointer
                      records $ unsafe-coerce (&map:get reel :records) (:: 'List 'Dynamic)
                      base $ &map:get reel :base
                      stopped? $ &map:get reel :stopped?
                    match op
                      (:reel/toggle)
                        {} $ :display?
                          not $ reel.schema/read-field reel :display?
                      (:reel/recall idx)
                        let
                            new-store $ play-records base records updater idx
                          {} (:pointer idx) (:stopped? true) (:store new-store)
                      (:reel/run)
                        let
                            new-store $ play-records base records updater (count records)
                          {} (:store new-store) (:stopped? false) (:pointer nil)
                      (:reel/step)
                        if stopped?
                          if
                            < (count records) 2
                            , nil $ if
                              < pointer $ count records
                              let
                                  next-pointer $ inc pointer
                                  next-record $ option:unwrap (get records pointer)
                                let[] (old-op old-id old-time) next-record $ {} (:pointer next-pointer)
                                  :store $ updater (reel.schema/read-field reel :store) old-op old-id old-time
                              {} (:store base) (:pointer 0)
                          , nil
                      (:reel/merge)
                        if stopped?
                          if (&= 0 pointer) ({})
                            let
                                new-store $ play-records base records updater pointer
                              {} (:store new-store) (:base new-store) (:pointer 0)
                                :records $ slice-records-from records pointer
                                :merged? true
                          {}
                            :base $ reel.schema/read-field reel :store
                            :pointer nil
                            :records $ []
                            :merged? true
                      (:reel/reset)
                        if stopped?
                          {} $ :records (slice-records-until records pointer)
                          {}
                            :store $ reel.schema/read-field reel :base
                            :pointer nil
                            :records $ []
                            :stopped? false
                      (:reel/remove idx)
                        if (&= 0 idx) reel $ -> reel (update :pointer dec)
                          update :records $ fn (records)
                            remove-record-at
                              unsafe-coerce records $ :: 'List 'Dynamic
                              , idx
                          assoc :store $ play-records base records updater (dec idx)
                      _ $ do (js/console.warn "|Unknown reel/ op:" op) nil
                  let
                      data-pack $ [] op op-id op-time
                    if (&map:get reel :stopped?)
                      -> reel $ update :records
                        fn (records) (conj records data-pack)
                      -> reel
                        assoc :store $ updater (reel.schema/read-field reel :store) op op-id op-time
                        update :records $ fn (records) (conj records data-pack)
          :examples $ []
          :schema $ :: 'Fn
            {}
              :args $ []
                :: 'Fn $ {} (:return 'Dynamic)
                  :args $ [] 'Dynamic 'Dynamic 'Dynamic 'Dynamic
                :: 'Map 'Tag 'Dynamic
                , 'Dynamic
              :features $ #{} :js-ffi
              :return $ :: 'Map 'Tag 'Dynamic
        'refresh-reel $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn refresh-reel (reel base updater)
              let
                  next-base $ if (reel.schema/read-field reel :merged?) (reel.schema/read-field reel :base) base
                  records $ reel.schema/read-field reel :records
                -> reel (assoc :base next-base)
                  assoc :store $ play-records next-base records updater
                    if (reel.schema/read-field reel :stopped?) (reel.schema/read-field reel :pointer) (count records)
          :examples $ []
          :schema $ :: 'Dynamic
        'remove-record-at $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn remove-record-at (records idx)
              concat
                slice-records-until records $ dec idx
                slice-records-from records idx
          :examples $ []
          :schema $ :: 'Fn
            {}
              :args $ [] (:: 'List 'T) 'Number
              :generics $ [] 'T
              :return $ :: 'List 'T
        'slice-records-from $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn slice-records-from (records start) (.slice records start)
          :examples $ []
          :schema $ :: 'Fn
            {}
              :args $ [] (:: 'List 'T) 'Number
              :generics $ [] 'T
              :return $ :: 'List 'T
        'slice-records-until $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn slice-records-until (records end) (.slice records 0 end)
          :examples $ []
          :schema $ :: 'Fn
            {}
              :args $ [] (:: 'List 'T) 'Number
              :generics $ [] 'T
              :return $ :: 'List 'T
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote
          ns reel.core $ :require
    'reel.schema $ %{} 'FileEntry
      :defs $ {}
        'read-field $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn read-field (value field)
              if (struct? value) (&struct:get value field) (&map:get value field)
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Dynamic)
              :args $ [] 'Dynamic 'Tag
        'reel $ %{} 'CodeEntry (:doc |)
          :code $ quote
            def reel $ {}
              :records $ []
              :base nil
              :store nil
              :pointer nil
              :stopped? false
              :display? false
              :merged? false
          :examples $ []
          :schema $ :: 'Dynamic
        'store $ %{} 'CodeEntry (:doc |)
          :code $ quote
            def store $ {}
              :states $ {}
              :tasks $ []
          :examples $ []
          :schema $ :: 'Map 'Tag 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote (ns reel.schema)
    'reel.style $ %{} 'FileEntry
      :defs $ {}
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote (ns reel.style)
    'reel.test-typed $ %{} 'FileEntry
      :defs $ {}
        'main! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn main! () $ let
                updater $ fn (store op id time)
                  hint-fn $ {}
                    :args $ [] 'String 'Number 'String 'Number
                    :return 'String
                  str store op
                initial $ typed/new-reel |base
                live $ typed/record-op updater initial 5 |one 10
                queued $ typed/record-op updater (typed/recall updater live 0) 7 |two 20
                running $ typed/resume updater queued
              assert= |base $ :store queued
              assert= |base57 $ :store running
              assert= false $ :stopped? running
              assert= true $ option:none? (:pointer running)
              assert=
                [] (typed/new-record 5 |one 10) (typed/new-record 7 |two 20)
                :records running
              assert= |base5 $ typed/play-records updater |base (:records running) 1
              , &unit
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Unit)
              :args $ []
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote
          ns reel.test-typed $ :require (reel.typed :as typed)
    'reel.typed $ %{} 'FileEntry
      :defs $ {}
        'Control $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defenum Control (:toggle) (:recall 'Number) (:run) (:step) (:merge) (:reset) (:remove 'Number)
          :examples $ []
          :schema $ :: 'EnumDef
        'Record $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defstruct Record ([] 'Op) (:op 'Op) (:id 'String) (:time 'Number)
          :examples $ []
          :schema $ :: 'StructDef
        'State $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defstruct State ([] 'Op 'Store) (:base 'Store) (:store 'Store)
              :records $ :: 'List (:: 'reel.typed/Record 'Op)
              :pointer $ :: 'Option 'Number
              :stopped? 'Bool
              :display? 'Bool
              :merged? 'Bool
          :examples $ []
          :schema $ :: 'StructDef
        'apply-control $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn apply-control (updater reel control)
              match control
                (:toggle) (toggle-display reel)
                (:recall pointer) (recall updater reel pointer)
                (:run) (resume updater reel)
                (:step) (step updater reel)
                (:merge) (merge-reel updater reel)
                (:reset) (reset-reel reel)
                (:remove pointer)
                  if
                    = (:pointer reel) (%some pointer)
                    remove-current updater reel
                    , reel
          :examples $ []
          :schema $ :: 'Fn
            {}
              :args $ []
                :: 'Fn $ {} (:return 'Store)
                  :args $ [] 'Store 'Op 'String 'Number
                :: 'reel.typed/State 'Op 'Store
                , 'reel.typed/Control
              :generics $ [] 'Op 'Store
              :return $ :: 'reel.typed/State 'Op 'Store
          :tests $ []
            %{} 'TestEntry (:name |dispatch-equivalence)
              :code $ quote
                let
                    updater $ fn (store op id time)
                      hint-fn $ {}
                        :args $ [] 'String 'Number 'String 'Number
                        :return 'String
                      str store op
                    live $ record-op updater
                      record-op updater (new-reel |base) 5 |one 10
                      , 7 |two 20
                    paused $ recall updater live 1
                  do
                    assert= (toggle-display live)
                      apply-control updater live $ %:: Control :toggle
                    assert= paused $ apply-control updater live (%:: Control :recall 1)
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
                    assert= paused $ apply-control updater paused (%:: Control :remove 2)
        'decode-control $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn decode-control (op)
              match op
                (:reel/toggle)
                  %some $ %:: Control :toggle
                (:reel/recall pointer)
                  if (number? pointer)
                    %some $ %:: Control :recall pointer
                    %none
                (:reel/run)
                  %some $ %:: Control :run
                (:reel/step)
                  %some $ %:: Control :step
                (:reel/merge)
                  %some $ %:: Control :merge
                (:reel/reset)
                  %some $ %:: Control :reset
                (:reel/remove pointer)
                  if (number? pointer)
                    %some $ %:: Control :remove pointer
                    %none
                _ $ %none
          :examples $ []
          :schema $ :: 'Fn
            {}
              :args $ [] 'Enum
              :return $ :: 'Option 'reel.typed/Control
          :tests $ []
            %{} 'TestEntry (:name |control-decoding)
              :code $ quote
                do
                  assert=
                    %some $ %:: Control :toggle
                    decode-control $ :: :reel/toggle
                  assert=
                    %some $ %:: Control :recall 2
                    decode-control $ :: :reel/recall 2
                  assert=
                    %some $ %:: Control :run
                    decode-control $ :: :reel/run
                  assert=
                    %some $ %:: Control :step
                    decode-control $ :: :reel/step
                  assert=
                    %some $ %:: Control :merge
                    decode-control $ :: :reel/merge
                  assert=
                    %some $ %:: Control :reset
                    decode-control $ :: :reel/reset
                  assert=
                    %some $ %:: Control :remove 1
                    decode-control $ :: :reel/remove 1
                  assert= (%none)
                    decode-control $ :: :app/update |text
                  assert= (%none)
                    decode-control $ :: :reel/recall |bad
                  assert= (%none)
                    decode-control $ :: :reel/remove |bad
        'merge-reel $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn merge-reel (updater reel)
              if (:stopped? reel)
                let
                    pointer $ option:unwrap (:pointer reel)
                  if (= pointer 0) reel $ let
                      base $ play-records updater (:base reel) (:records reel) pointer
                    struct-with reel (:base base) (:store base)
                      :records $ .slice (:records reel) pointer
                        count $ :records reel
                      :pointer $ %some 0
                      :merged? true
                struct-with reel
                  :base $ :store reel
                  :records $ []
                  :pointer $ %none
                  :merged? true
          :examples $ []
          :schema $ :: 'Fn
            {}
              :args $ []
                :: 'Fn $ {} (:return 'Store)
                  :args $ [] 'Store 'Op 'String 'Number
                :: 'reel.typed/State 'Op 'Store
              :generics $ [] 'Op 'Store
              :return $ :: 'reel.typed/State 'Op 'Store
          :tests $ []
            %{} 'TestEntry (:name |paused-and-live-merge)
              :code $ quote
                let
                    updater $ fn (store op id time)
                      hint-fn $ {}
                        :args $ [] 'String 'Number 'String 'Number
                        :return 'String
                      str store op
                    live $ record-op updater
                      record-op updater (new-reel |base) 5 |one 10
                      , 7 |two 20
                    paused $ recall updater live 1
                    merged $ merge-reel updater paused
                    merged-live $ merge-reel updater live
                  do
                    assert= |base5 $ :base merged
                    assert= |base5 $ :store merged
                    assert= (%some 0) (:pointer merged)
                    assert=
                      [] $ new-record 7 |two 20
                      :records merged
                    assert= |base57 $ :store (resume updater merged)
                    assert= |base5 $ :store (refresh updater merged |ignored)
                    assert= |base57 $ :base merged-live
                    assert= 0 $ count (:records merged-live)
                    assert= true $ :merged? merged-live
                    let
                        zero $ recall updater live 0
                      assert= zero $ merge-reel updater zero
        'new-record $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn new-record (op id time)
              %{} Record (:op op) (:id id) (:time time)
          :examples $ []
          :schema $ :: 'Fn
            {}
              :args $ [] 'Op 'String 'Number
              :generics $ [] 'Op
              :return $ :: 'reel.typed/Record 'Op
        'new-reel $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn new-reel (base)
              %{} State (:base base) (:store base)
                :records $ []
                :pointer $ %none
                :stopped? false
                :display? false
                :merged? false
          :examples $ []
          :schema $ :: 'Fn
            {}
              :args $ [] 'Store
              :generics $ [] 'Op 'Store
              :return $ :: 'reel.typed/State 'Op 'Store
          :tests $ []
            %{} 'TestEntry (:name |empty-typed-state)
              :code $ quote
                let
                    reel $ new-reel |initial
                  do
                    assert= |initial $ :base reel
                    assert= |initial $ :store reel
                    assert= 0 $ count (:records reel)
                    assert= true $ option:none? (:pointer reel)
                    assert= false $ :stopped? reel
                    assert= false $ :display? reel
                    assert= false $ :merged? reel
        'play-records $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn play-records (updater base records limit)
              .foldl (.take records limit) base $ fn (store record)
                hint-fn $ {}
                  :generics $ [] 'Op 'Store
                  :args $ [] 'Store (:: 'reel.typed/Record 'Op)
                  :return 'Store
                updater store (:op record) (:id record) (:time record)
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Store)
              :args $ []
                :: 'Fn $ {} (:return 'Store)
                  :args $ [] 'Store 'Op 'String 'Number
                , 'Store
                  :: 'List $ :: 'reel.typed/Record 'Op
                  , 'Number
              :generics $ [] 'Op 'Store
          :tests $ []
            %{} 'TestEntry (:name |replay-prefix)
              :code $ quote
                let
                    updater $ fn (store op id time)
                      hint-fn $ {}
                        :args $ [] 'String 'Number 'String 'Number
                        :return 'String
                      str store op
                    records $ [] (new-record 5 |id-1 100) (new-record 7 |id-2 200)
                  do
                    assert= |base $ play-records updater |base records 0
                    assert= |base5 $ play-records updater |base records 1
                    assert= |base57 $ play-records updater |base records 2
        'recall $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn recall (updater reel pointer)
              assert "|Reel pointer must be an integer within the record range" $ and (>= pointer 0)
                <= pointer $ count (:records reel)
                = pointer $ floor pointer
              struct-with reel
                :store $ play-records updater (:base reel) (:records reel) pointer
                :pointer $ %some pointer
                :stopped? true
          :examples $ []
          :schema $ :: 'Fn
            {}
              :args $ []
                :: 'Fn $ {} (:return 'Store)
                  :args $ [] 'Store 'Op 'String 'Number
                :: 'reel.typed/State 'Op 'Store
                , 'Number
              :generics $ [] 'Op 'Store
              :return $ :: 'reel.typed/State 'Op 'Store
          :tests $ []
            %{} 'TestEntry (:name |recall-queue-resume)
              :code $ quote
                let
                    updater $ fn (store op id time)
                      hint-fn $ {}
                        :args $ [] 'String 'Number 'String 'Number
                        :return 'String
                      str store op
                    live $ record-op updater (new-reel |base) 5 |one 10
                    stopped $ recall updater live 0
                    queued $ record-op updater stopped 7 |two 20
                    running $ resume updater queued
                  do
                    assert= |base $ :store stopped
                    assert= true $ :stopped? stopped
                    assert= (%some 0) (:pointer stopped)
                    assert= |base $ :store queued
                    assert= 2 $ count (:records queued)
                    assert= |base57 $ :store running
                    assert= false $ :stopped? running
                    assert= true $ option:none? (:pointer running)
                    assert= |base5 $ :store (recall updater running 1)
                    assert= |base57 $ :store (recall updater running 2)
        'record-op $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn record-op (updater reel op op-id op-time)
              let
                  record $ new-record op op-id op-time
                  records $ .append (:records reel) record
                if (:stopped? reel) (assoc reel :records records)
                  struct-with reel (:records records)
                    :store $ updater (:store reel) op op-id op-time
          :examples $ []
          :schema $ :: 'Fn
            {}
              :args $ []
                :: 'Fn $ {} (:return 'Store)
                  :args $ [] 'Store 'Op 'String 'Number
                :: 'reel.typed/State 'Op 'Store
                , 'Op 'String 'Number
              :generics $ [] 'Op 'Store
              :return $ :: 'reel.typed/State 'Op 'Store
          :tests $ []
            %{} 'TestEntry (:name |live-and-paused)
              :code $ quote
                let
                    updater $ fn (store op id time)
                      hint-fn $ {}
                        :args $ [] 'String 'Number 'String 'Number
                        :return 'String
                      str store op
                    initial $ new-reel |base
                    live $ record-op updater initial 5 |id-1 100
                    paused $ record-op updater (assoc live :stopped? true) 7 |id-2 200
                  do
                    assert= |base $ :base live
                    assert= |base5 $ :store live
                    assert= |base5 $ :store paused
                    assert=
                      [] (new-record 5 |id-1 100) (new-record 7 |id-2 200)
                      :records paused
                    assert= 0 $ count (:records initial)
        'refresh $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn refresh (updater reel base)
              let
                  next-base $ if (:merged? reel) (:base reel) base
                  limit $ if (:stopped? reel)
                    option:unwrap $ :pointer reel
                    count $ :records reel
                struct-with reel (:base next-base)
                  :store $ play-records updater next-base (:records reel) limit
          :examples $ []
          :schema $ :: 'Fn
            {}
              :args $ []
                :: 'Fn $ {} (:return 'Store)
                  :args $ [] 'Store 'Op 'String 'Number
                :: 'reel.typed/State 'Op 'Store
                , 'Store
              :generics $ [] 'Op 'Store
              :return $ :: 'reel.typed/State 'Op 'Store
        'remove-current $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn remove-current (updater reel)
              if (:stopped? reel)
                let
                    pointer $ option:unwrap (:pointer reel)
                  if (= pointer 0) reel $ let
                      records $ .concat
                        .slice (:records reel) 0 $ dec pointer
                        .slice (:records reel) pointer $ count (:records reel)
                      next $ assoc reel :records records
                    recall updater next $ dec pointer
                , reel
          :examples $ []
          :schema $ :: 'Fn
            {}
              :args $ []
                :: 'Fn $ {} (:return 'Store)
                  :args $ [] 'Store 'Op 'String 'Number
                :: 'reel.typed/State 'Op 'Store
              :generics $ [] 'Op 'Store
              :return $ :: 'reel.typed/State 'Op 'Store
        'reset-reel $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn reset-reel (reel)
              if (:stopped? reel)
                assoc reel :records $ .slice (:records reel) 0
                  option:unwrap $ :pointer reel
                struct-with reel
                  :store $ :base reel
                  :records $ []
                  :pointer $ %none
                  :stopped? false
          :examples $ []
          :schema $ :: 'Fn
            {}
              :args $ [] (:: 'reel.typed/State 'Op 'Store)
              :generics $ [] 'Op 'Store
              :return $ :: 'reel.typed/State 'Op 'Store
          :tests $ []
            %{} 'TestEntry (:name |reset-and-refresh)
              :code $ quote
                let
                    updater $ fn (store op id time)
                      hint-fn $ {}
                        :args $ [] 'String 'Number 'String 'Number
                        :return 'String
                      str store op
                    initial $ new-reel |base
                    live $ record-op updater (record-op updater initial 5 |one 10) 7 |two 20
                    paused $ recall updater live 1
                    reset-paused $ reset-reel paused
                    reset-live $ reset-reel live
                  do
                    assert= |base5 $ :store reset-paused
                    assert= 1 $ count (:records reset-paused)
                    assert= (%some 1) (:pointer reset-paused)
                    assert= |base $ :store reset-live
                    assert= 0 $ count (:records reset-live)
                    assert= |next57 $ :store (refresh updater live |next)
                    assert= |next5 $ :store (refresh updater paused |next)
                    assert= |base57 $ :store
                      refresh updater (assoc live :merged? true) |ignored
                    assert= true $ :display? (toggle-display initial)
                    assert= initial $ toggle-display (toggle-display initial)
        'resume $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn resume (updater reel)
              struct-with reel
                :store $ play-records updater (:base reel) (:records reel)
                  count $ :records reel
                :pointer $ %none
                :stopped? false
          :examples $ []
          :schema $ :: 'Fn
            {}
              :args $ []
                :: 'Fn $ {} (:return 'Store)
                  :args $ [] 'Store 'Op 'String 'Number
                :: 'reel.typed/State 'Op 'Store
              :generics $ [] 'Op 'Store
              :return $ :: 'reel.typed/State 'Op 'Store
        'step $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn step (updater reel)
              if
                and (:stopped? reel)
                  >=
                    count $ :records reel
                    , 2
                let
                    pointer $ option:unwrap (:pointer reel)
                  if
                    < pointer $ count (:records reel)
                    struct-with reel
                      :pointer $ %some (inc pointer)
                      :store $ play-records updater (:store reel)
                        .slice (:records reel) pointer $ inc pointer
                        , 1
                    struct-with reel
                      :pointer $ %some 0
                      :store $ :base reel
                , reel
          :examples $ []
          :schema $ :: 'Fn
            {}
              :args $ []
                :: 'Fn $ {} (:return 'Store)
                  :args $ [] 'Store 'Op 'String 'Number
                :: 'reel.typed/State 'Op 'Store
              :generics $ [] 'Op 'Store
              :return $ :: 'reel.typed/State 'Op 'Store
          :tests $ []
            %{} 'TestEntry (:name |stepping-and-removal)
              :code $ quote
                let
                    updater $ fn (store op id time)
                      hint-fn $ {}
                        :args $ [] 'String 'Number 'String 'Number
                        :return 'String
                      str store op
                    one $ record-op updater (new-reel |base) 5 |one 10
                    live $ record-op updater (record-op updater one 7 |two 20) 9 |three 30
                    zero $ recall updater live 0
                    step-one $ step updater zero
                    step-two $ step updater step-one
                    removed $ remove-current updater step-two
                  do
                    assert= live $ step updater live
                    assert= |base5 $ :store step-one
                    assert= |base57 $ :store step-two
                    assert= |base $ :store
                      step updater $ step updater step-two
                    assert= |base5 $ :store removed
                    assert= (%some 1) (:pointer removed)
                    assert=
                      [] (new-record 5 |one 10) (new-record 9 |three 30)
                      :records removed
                    assert= |base59 $ :store (resume updater removed)
                    assert= live $ remove-current updater live
                    assert= zero $ remove-current updater zero
                    let
                        one-paused $ recall updater one 0
                      assert= one-paused $ step updater one-paused
        'toggle-display $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn toggle-display (reel)
              assoc reel :display? $ not (:display? reel)
          :examples $ []
          :schema $ :: 'Fn
            {}
              :args $ [] (:: 'reel.typed/State 'Op 'Store)
              :generics $ [] 'Op 'Store
              :return $ :: 'reel.typed/State 'Op 'Store
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote (ns reel.typed)
    'reel.typed-compat $ %{} 'FileEntry
      :defs $ {}
        'view-data $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn view-data (reel)
              {}
                :base $ :base reel
                :store $ :store reel
                :records $ .map (:records reel)
                  fn (record)
                    hint-fn $ {}
                      :generics $ [] 'Op
                      :args $ [] (:: 'reel.typed/Record 'Op)
                      :return $ :: 'List 'Dynamic
                    [] (:op record) (:id record) (:time record)
                :pointer $ match (:pointer reel)
                  (:some pointer) pointer
                  (:none) nil
                :stopped? $ :stopped? reel
                :display? $ :display? reel
                :merged? $ :merged? reel
          :examples $ []
          :schema $ :: 'Fn
            {}
              :args $ [] (:: 'reel.typed/State 'Op 'Store)
              :generics $ [] 'Op 'Store
              :return $ :: 'Map 'Tag 'Dynamic
          :tests $ []
            %{} 'TestEntry (:name |legacy-view-shape)
              :code $ quote
                let
                    initial $ typed/new-reel |base
                  assert=
                    {} (:base |base) (:store |base)
                      :records $ []
                      :pointer nil
                      :stopped? false
                      :display? false
                      :merged? false
                    view-data initial
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote
          ns reel.typed-compat $ :require (reel.typed :as typed)
    'reel.util $ %{} 'FileEntry
      :defs $ {}
        'BrowserStringHost $ %{} 'CodeEntry (:doc |)
          :code $ quote
            deftrait BrowserStringHost
              .toUpperCase $ :: 'Fn
                {}
                  :args $ []
                  :return 'BrowserStringHost
              .charCodeAt $ :: 'Fn
                {}
                  :args $ [] 'Number
                  :return 'Number
          :examples $ []
          :ffi $ {} (:backend :js) (:kind :external-object) (:target :browser)
          :schema $ :: 'Trait
        'BrowserWindowHost $ %{} 'CodeEntry (:doc |)
          :code $ quote
            deftrait BrowserWindowHost $ .addEventListener
              :: 'Fn $ {}
                :args $ [] 'String
                  :: 'Fn $ {} (:return 'Unit)
                    :args $ [] 'KeyboardEventHost
                :return 'Unit
          :examples $ []
          :ffi $ {} (:backend :js) (:kind :external-object) (:target :browser)
          :schema $ :: 'Trait
        'KeyboardEventHost $ %{} 'CodeEntry (:doc |)
          :code $ quote
            deftrait KeyboardEventHost (:shiftKey 'Bool) (:metaKey 'Bool) (:altKey 'Bool) (:keyCode 'Number)
          :examples $ []
          :ffi $ {} (:backend :js) (:kind :external-object) (:target :browser)
          :schema $ :: 'Trait
        'browser-window $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn browser-window () $ unsafe-coerce js/window BrowserWindowHost
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'BrowserWindowHost)
              :args $ []
              :features $ #{} :js-ffi
        'keyboard-code $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn keyboard-code (keyboard)
              let
                  text $ unsafe-coerce keyboard BrowserStringHost
                  upper $ unsafe-coerce (.!toUpperCase text) BrowserStringHost
                unsafe-coerce (.!charCodeAt upper 0) 'Number
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Number)
              :args $ [] 'String
              :features $ #{} :js-ffi
        'listen-devtools! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn listen-devtools! (keyboard dispatch!)
              do
                .!addEventListener (browser-window) |keydown $ fn (event)
                  hint-fn $ {}
                    :args $ [] 'KeyboardEventHost
                    :return 'Unit
                  if
                    and (.-shiftKey event) (.-metaKey event) (.-altKey event)
                      = (keyboard-code keyboard) (.-keyCode event)
                    do
                      dispatch! $ :: :reel/toggle
                      , &unit
                    , &unit
                , &unit
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Unit)
              :args $ [] 'String
                :: 'Fn $ {} (:return 'Unit)
                  :args $ [] 'Enum
              :features $ #{} :js-ffi
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote
          ns reel.util $ :require
