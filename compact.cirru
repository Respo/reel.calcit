
{} (:package |reel)
  :configs $ {} (:init-fn |reel.app.main/main!) (:reload-fn |reel.app.main/reload!) (:version |0.5.8)
    :modules $ [] |respo.calcit/ |lilac/ |memof/ |respo-ui.calcit/
  :entries $ {}
  :files $ {}
    |reel.app.comp.container $ {}
      :defs $ {}
        |comp-container $ quote
          defcomp comp-container (reel)
            let
                store $ :store reel
                states $ :states store
              div
                {} $ :class-name css/global
                comp-todolist (>> states :todolist) (:tasks store)
                comp-reel (>> states :reel) reel nil
      :ns $ quote
        ns reel.app.comp.container $ :require
          respo.util.format :refer $ hsl
          respo-ui.core :as ui
          respo-ui.css :as css
          respo.core :refer $ defcomp <> >> div span
          respo.css :refer $ defstyle
          respo.comp.space :refer $ =<
          reel.comp.reel :refer $ comp-reel
          reel.app.comp.todolist :refer $ comp-todolist
    |reel.app.comp.task $ {}
      :defs $ {}
        |comp-task $ quote
          defcomp comp-task (task)
            div
              {} $ :style style-container
              div $ {} (:class-name css-done)
                :style $ if (:done? task)
                  {} $ :background-color (hsl 42 100 60)
                :on-click $ fn (e d!)
                  d! :task/toggle $ :id task
              =< 8 nil
              input $ {} (:placeholder "|Content of task") (:class-name css/input)
                :value $ :text task
                :on-input $ fn (e d!)
                  d! $ :: :task/edit (:id task) (:value e)
              =< 8 nil
              button
                {} (:class-name css/button)
                  :style $ {}
                    :background-color $ hsl 6 100 60
                    :color :white
                    :border :none
                  :on-click $ fn (e d!)
                    d! $ :: :task/remove (:id task)
                <> |Remove
        |css-done $ quote
          defstyle css-done $ {}
            "\"$0" $ {} (:width 32) (:height 32) (:display :inline-block)
              :background-color $ hsl 220 100 76
              :cursor :pointer
        |style-container $ quote
          def style-container $ {} (:margin "|8px 0") (:height "\"32px")
      :ns $ quote
        ns reel.app.comp.task $ :require
          respo.core :refer $ [] defcomp <> div button input
          respo.css :refer $ defstyle
          respo.util.format :refer $ [] hsl
          respo.comp.space :refer $ [] =<
          respo-ui.core :as ui
          respo-ui.css :as css
    |reel.app.comp.todolist $ {}
      :defs $ {}
        |comp-todolist $ quote
          defcomp comp-todolist (states tasks)
            let
                cursor $ :cursor states
                state $ either (:data states) |
              div
                {} $ :class-name (str-spaced css/fullscreen css-container)
                div ({})
                  input $ {} (:placeholder "|Task to add...") (:value state) (:class-name css/input)
                    :on-input $ fn (e d!)
                      d! cursor $ :value e
                    :on-keydown $ fn (e d!)
                      if
                        = (:keycode e) 13
                        do (d! :task/add state)
                          d! ([]) |
                  =< 8 nil
                  button
                    {} (:class-name css/button)
                      :on-click $ fn (e d!) (d! :task/add state) (d! cursor |)
                    <> |Add
                list-> ({})
                  -> tasks $ map
                    fn (task)
                      [] (:id task) (comp-task task)
        |css-container $ quote
          defstyle css-container $ {}
            "\"$0" $ {} (:padding 8) (:overflow :auto)
      :ns $ quote
        ns reel.app.comp.todolist $ :require
          respo.core :refer $ defcomp <> div span button input list->
          respo.css :refer $ defstyle
          respo.comp.space :refer $ =<
          respo-ui.core :as ui
          respo-ui.css :as css
          reel.app.comp.task :refer $ comp-task
    |reel.app.main $ {}
      :defs $ {}
        |*reel $ quote
          defatom *reel $ -> schema/reel (assoc :base schema/store) (assoc :store schema/store) (assoc :display? false)
        |dispatch! $ quote
          defn dispatch! (op ? op-data) (println |Dispatch! op op-data)
            if (list? op)
              recur $ : state op op-data
              if (tag? op)
                recur $ :: op op-data
                let
                    new-reel $ reel-updater updater @*reel op
                  ; println |Reel: new-reel
                  reset! *reel new-reel
        |main! $ quote
          defn main! () (load-console-formatter!) (render-app!)
            add-watch *reel :changes $ fn (reel prev) (render-app!)
            listen-devtools! |k dispatch!
            dispatch! $ :: :reel/toggle
            println "|App started!"
        |mount-target $ quote
          def mount-target $ .querySelector js/document |.app
        |reload! $ quote
          defn reload! () $ if (nil? build-errors)
            do (remove-watch *reel :changes) (clear-cache!)
              add-watch *reel :changes $ fn (reel prev) (render-app!)
              reset! *reel $ refresh-reel @*reel schema/store updater
              hud! "\"ok~" "\"Ok"
            hud! "\"error" build-errors
        |render-app! $ quote
          defn render-app! () $ render! mount-target (comp-container @*reel) dispatch!
      :ns $ quote
        ns reel.app.main $ :require
          respo.core :refer $ render! clear-cache!
          reel.app.comp.container :refer $ comp-container
          reel.core :refer $ reel-updater refresh-reel
          reel.util :refer $ listen-devtools!
          reel.schema :as schema
          reel.app.updater :refer $ updater
          "\"./calcit.build-errors" :default build-errors
          "\"bottom-tip" :default hud!
    |reel.app.updater $ {}
      :defs $ {}
        |updater $ quote
          defn updater (store op op-id op-time)
            tag-match op
                :states cursor s
                update-states store cursor s
              (:task/add text)
                update store :tasks $ fn (tasks)
                  prepend tasks $ {} (:id op-id) (:done? false) (:text text)
              (:task/remove id)
                update store :tasks $ fn (tasks)
                  filter tasks $ fn (task)
                    /= (:id task) id
              (:task/toggle id)
                update store :tasks $ fn (tasks)
                  map tasks $ fn (task)
                    if
                      = (:id task) id
                      update task :done? not
                      , task
              (:task/edit task-id text)
                update store :tasks $ fn (tasks)
                  map tasks $ fn (task)
                    if
                      = (:id task) task-id
                      assoc task :text text
                      , task
              _ $ do (js/console.log "\"Unknown op" op) store
      :ns $ quote
        ns reel.app.updater $ :require
          [] respo.cursor :refer $ [] update-states
    |reel.comp.records $ {}
      :defs $ {}
        |comp-records $ quote
          defcomp comp-records (records pointer)
            div
              {} $ :class-name (str-spaced css/font-code css-records)
              list-> ({})
                ->
                  prepend records $ [] :base nil :base
                  map-indexed $ fn (idx record)
                    [] (last record)
                      div
                        {} (:class-name css-record)
                          :style $ if (= pointer idx)
                            {}
                              :background-color $ hsl 220 100 76
                              :color :white
                          :on-click $ on-recall idx
                        <> $ pr-str (first record)
        |css-record $ quote
          defstyle css-record $ {}
            "\"$0" $ {} (:cursor :pointer) (:padding "|0 4px") (:white-space :nowrap) (:cursor :pointer) (:overflow :hidden) (:text-overflow :ellipsis)
            "\"$0:hover" $ {} (:background-color "\"#eee")
        |css-records $ quote
          defstyle css-records $ {}
            "\"$0" $ {} (:overflow :auto) (:flex-shrink 0) (:padding-bottom 120) (:padding-top 16) (:width 160) (:font-size 12)
        |on-recall $ quote
          defn on-recall (idx)
            fn (e dispatch!) (dispatch! :reel/recall idx)
        |style-data $ quote
          def style-data $ {} (:max-width 100) (:overflow :hidden) (:text-overflow :ellipsis) (:white-space :nowrap) (:display :inline-block) (:vertical-align :middle)
      :ns $ quote
        ns reel.comp.records $ :require
          respo.core :refer $ defcomp <> div span style list->
          respo.css :refer $ defstyle
          respo-ui.core :as ui
          respo-ui.css :as css
          respo.comp.space :refer $ =<
          reel.style :as reel-style
          respo.util.format :refer $ hsl
    |reel.comp.reel $ {}
      :defs $ {}
        |comp-reel $ quote
          defcomp comp-reel (states reel user-styles)
            if (:display? reel)
              div
                {}
                  :class-name $ str-spaced css/flex css/column css-reel
                  :style user-styles
                div
                  {} $ :style
                    {} $ :border-bottom
                      str "\"1px solid " $ hsl 0 0 90
                  render-button |Merge
                    fn (e d!) (d! :reel/merge nil)
                    , true
                  render-button |Reset
                    fn (e d!) (d! :reel/reset nil)
                    , true
                  render-button |Step
                    fn (e d!) (d! :reel/step nil)
                    :stopped? reel
                  render-button |Run
                    fn (e d!) (d! :reel/run nil)
                    :stopped? reel
                  render-button |Close
                    fn (e d!) (d! :reel/toggle nil)
                    not $ :stopped? reel
                div
                  {} $ :class-name (str-spaced css/expand css/row)
                  comp-records (:records reel) (:pointer reel)
                  div
                    {}
                      :class-name $ str-spaced css/column css/expand
                      :style $ {} (:overflow :auto) (:padding "|0 8px")
                        :border-left $ str "\"1px solid " (hsl 0 0 94)
                    let
                        records $ :records reel
                        pointer $ :pointer reel
                        record $ if (:stopped? reel)
                          if (> pointer 0)
                            get records $ dec pointer
                            , nil
                          last records
                      if (some? record)
                        let[] (action op-data op-id op-time) record $ div
                          {}
                            :class-name $ str-spaced css/font-code css/column
                            :style $ {} (:font-size 12)
                          div
                            {} (:class-name css/row-parted)
                              :style $ {}
                                :border-bottom $ str "\"1px solid " (hsl 0 0 94)
                            div ({})
                              <> $ str action
                              =< 24 nil
                              <> op-id
                              =< 8 nil
                              <> op-time
                            if
                              and (some? pointer) (not= pointer 0)
                              span $ {} (:inner-text |Remove) (:class-name css/font-fancy)
                                :style $ {} (:cursor :pointer) (:font-size 12)
                                  :color $ hsl 200 100 84
                                :on-click $ fn (e d!)
                                  d! :reel/remove $ :pointer reel
                          div
                            {} (:class-name css/expand)
                              :style $ {} (:max-height "\"200px")
                            <> $ pr-str op-data
                        <> "\"nil"
                    div
                      {} $ :class-name (str-spaced css/expand css/font-code css-snippet)
                      <> $ .trim
                        format-cirru-edn $ :store reel
              span $ {}
        |css-reel $ quote
          defstyle css-reel $ {}
            "\"$0" $ {} (:width |60%) (:height |80%) (:right "\"0px") (:bottom "\"0px") (:position :fixed)
              :background-color $ hsl 0 0 100 0.7
              :border $ str "|1px solid " (hsl 0 0 90)
              :font-size 14
              :backdrop-filter "|blur(2px)"
              :z-index 9999
        |css-snippet $ quote
          defstyle css-snippet $ {}
            "\"$0" $ {} (:font-size 12) (:white-space :pre) (:padding "\"16px 0px 200px 0px") (:line-height "\"20px") (:overflow :auto)
              :border-top $ str "\"1px solid " (hsl 0 0 94)
        |render-button $ quote
          defn render-button (guide on-click enabled?)
            div
              {} (:class-name css/link)
                :style $ merge
                  {} $ :user-select :none
                  if (not enabled?)
                    {} $ :color (hsl 0 0 90)
                :on-click $ if enabled? on-click
                  fn $ e d!
              <> guide
      :ns $ quote
        ns reel.comp.reel $ :require
          respo.core :refer $ defcomp <> >> div button span
          respo.css :refer $ defstyle
          respo.util.format :refer $ hsl
          respo.comp.inspect :refer $ comp-inspect
          respo-ui.core :as ui
          respo-ui.css :as css
          respo.comp.space :refer $ =<
          reel.comp.records :refer $ comp-records
          respo-value.comp.value :refer $ comp-value
          reel.style :as style
    |reel.core $ {}
      :defs $ {}
        |play-records $ quote
          defn play-records (store records updater pointer)
            if (&= 0 pointer) store $ let[] (op op-id op-time) (first records)
              &let
                next-store $ updater store op op-id op-time
                recur next-store (rest records) updater $ dec pointer
        |reel-updater $ quote
          defn reel-updater (updater reel op)
            ; println |Name: $ turn-string op
            let
                op-id $ generate-id!
                op-time $ js/Date.now
              if
                .starts-with?
                  str $ nth op 0
                  , |:reel/
                merge reel $ let
                    pointer $ &map:get reel :pointer
                    records $ &map:get reel :records
                    base $ &map:get reel :base
                    store $ &map:get reel :base
                    stopped? $ &map:get reel :stopped?
                  tag-match op
                      :reel/toggle
                      {} $ :display?
                        not $ :display? reel
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
                                next-record $ get records pointer
                              let[] (old-op old-id old-time) next-record $ {} (:pointer next-pointer)
                                :store $ updater (:store reel) old-op old-id old-time
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
                          :base $ :store reel
                          :pointer nil
                          :records $ []
                          :merged? true
                    (:reel/reset)
                      if stopped?
                        {} $ :records (.slice records 0 pointer)
                        {}
                          :store $ :base reel
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
                      assoc :store $ updater (:store reel) op op-id op-time
                      update :records $ fn (records) (conj records data-pack)
        |refresh-reel $ quote
          defn refresh-reel (reel base updater)
            let
                next-base $ if (:merged? reel) (:base reel) base
                records $ :records reel
              -> reel (assoc :base next-base)
                assoc :store $ play-records next-base records updater
                  if (:stopped? reel) (:pointer reel) (count records)
      :ns $ quote
        ns reel.core $ :require
    |reel.schema $ {}
      :defs $ {}
        |reel $ quote
          def reel $ {}
            :records $ []
            :base nil
            :store nil
            :pointer nil
            :stopped? false
            :display? false
            :merged? false
        |store $ quote
          def store $ {}
            :states $ {}
            :tasks $ []
      :ns $ quote (ns reel.schema)
    |reel.style $ {}
      :defs $ {}
      :ns $ quote (ns reel.style)
    |reel.util $ {}
      :defs $ {}
        |listen-devtools! $ quote
          defn listen-devtools! (keyboard dispatch!)
            .!addEventListener js/window |keydown $ fn (event)
              if
                and (.-shiftKey event) (.-metaKey event) (.-altKey event)
                  =
                    .!charCodeAt $ .!toUpperCase keyboard
                    .-keyCode event
                dispatch! :reel/toggle nil
      :ns $ quote
        ns reel.util $ :require
