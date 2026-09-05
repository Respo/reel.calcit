
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
                  store $ reel.schema/read-field reel :store
                  states $ reel.schema/read-field store :states
                div
                  {} $ :class-name css/global
                  comp-todolist (>> states :todolist) (reel.schema/read-field store :tasks)
                  comp-reel (>> states :reel) reel nil
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote
          ns reel.app.comp.container $ :require
            respo.util.format :refer $ hsl
            respo-ui.core :as ui
            respo-ui.css :as css
            respo.core :refer $ defcomp <> >> div span
            respo.css :refer $ defstyle
            respo.comp.space :refer $ =<
            reel.comp.reel :refer $ comp-reel
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
            defatom *reel $ -> schema/reel (assoc :base schema/store) (assoc :store schema/store) (assoc :display? false)
          :examples $ []
          :schema $ :: 'Dynamic
        'dispatch! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn dispatch! (op) (println |Dispatch! op)
              let
                  new-reel $ reel-updater updater @*reel op
                ; println |Reel: new-reel
                reset! *reel new-reel
          :examples $ []
          :schema $ :: 'Dynamic
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
                reset! *reel $ refresh-reel @*reel schema/store updater
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
            reel.core :refer $ reel-updater refresh-reel
            reel.util :refer $ listen-devtools!
            reel.schema :as schema
            reel.app.updater :refer $ updater
            |./calcit.build-errors :default build-errors
            |bottom-tip :default hud!
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
          :schema $ :: 'Dynamic
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
                      records $ &map:get reel :records
                      base $ &map:get reel :base
                      store $ &map:get reel :base
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
                                :records $ .slice records pointer
                                :merged? true
                          {}
                            :base $ reel.schema/read-field reel :store
                            :pointer nil
                            :records $ []
                            :merged? true
                      (:reel/reset)
                        if stopped?
                          {} $ :records (.slice records 0 pointer)
                          {}
                            :store $ reel.schema/read-field reel :base
                            :pointer nil
                            :records $ []
                            :stopped? false
                      (:reel/remove idx)
                        if (&= 0 idx) reel $ -> reel (update :pointer dec)
                          update :records $ fn (records)
                            concat
                              .slice records 0 $ dec idx
                              .slice records idx
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
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote (ns reel.schema)
    'reel.style $ %{} 'FileEntry
      :defs $ {}
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote (ns reel.style)
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
                  :args $ []
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
            {} (:return 'reel.util/BrowserWindowHost)
              :args $ []
              :features $ #{} :js-ffi
        'keyboard-code $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn keyboard-code (keyboard)
              let
                  text $ unsafe-coerce keyboard BrowserStringHost
                  upper $ unsafe-coerce (.!toUpperCase text) BrowserStringHost
                unsafe-coerce (.!charCodeAt upper) 'Number
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
