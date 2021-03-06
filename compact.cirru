
{} (:package |reel)
  :configs $ {} (:init-fn |reel.app.main/main!) (:reload-fn |reel.app.main/reload!)
    :modules $ [] |respo.calcit/compact.cirru |lilac/compact.cirru |memof/compact.cirru |respo-ui.calcit/compact.cirru
    :version |0.5.6
  :files $ {}
    |reel.comp.reel $ {}
      :ns $ quote
        ns reel.comp.reel $ :require
          [] respo.core :refer $ [] defcomp <> >> div button span
          [] respo.util.format :refer $ [] hsl
          [] respo.comp.inspect :refer $ [] comp-inspect
          [] respo-ui.core :as ui
          [] respo.comp.space :refer $ [] =<
          [] reel.comp.records :refer $ [] comp-records
          [] respo-value.comp.value :refer $ [] comp-value
          [] reel.style :as style
      :defs $ {}
        |comp-reel $ quote
          defcomp comp-reel (states reel user-styles)
            if (:display? reel)
              div
                {} $ :style (merge ui/flex ui/column style-reel user-styles)
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
                  {} $ :style (merge ui/expand ui/row)
                  comp-records (:records reel) (:pointer reel)
                  div
                    {} $ :style
                      merge ui/column ui/expand $ {} (:overflow :auto) (:padding "|0 8px")
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
                          {} $ :style
                            merge ui/column style/code $ {} (:font-size 12)
                          div
                            {} $ :style
                              merge ui/row-parted $ {}
                                :border-bottom $ str "\"1px solid " (hsl 0 0 94)
                            div ({})
                              <> $ str action
                              =< 24 nil
                              <> op-id
                              =< 8 nil
                              <> op-time
                            if
                              and (some? pointer) (/= pointer 0)
                              span $ {} (:inner-text |Remove)
                                :style $ {} (:cursor :pointer) (:font-size 12) (:font-family ui/font-fancy)
                                  :color $ hsl 200 100 84
                                :on-click $ fn (e d!)
                                  d! :reel/remove $ :pointer reel
                          div
                            {} $ :style
                              merge ui/expand $ {} (:max-height "\"200px")
                            <> $ pr-str op-data
                        <> "\"nil"
                    div
                      {} $ :style
                        merge ui/expand style/code $ {} (:font-size 12) (:white-space :pre) (:padding "\"16px 0px 200px 0px") (:line-height "\"20px") (:overflow :auto)
                          :border-top $ str "\"1px solid " (hsl 0 0 94)
                      <> $ .trim
                        format-cirru-edn $ :store reel
              span $ {}
        |render-button $ quote
          defn render-button (guide on-click enabled?)
            div
              {}
                :style $ merge ui/link
                  {} $ :user-select :none
                  if (not enabled?)
                    {} $ :color (hsl 0 0 90)
                :on-click $ if enabled? on-click
                  fn $ e d!
              <> guide
        |style-reel $ quote
          def style-reel $ {} (:width |60%) (:height |80%) (:right "\"0px") (:bottom "\"0px") (:position :fixed)
            :background-color $ hsl 0 0 100 0.7
            :border $ str "|1px solid " (hsl 0 0 90)
            :font-size 14
            :backdrop-filter "|blur(2px)"
            :z-index 9999
      :proc $ quote ()
    |reel.app.comp.todolist $ {}
      :ns $ quote
        ns reel.app.comp.todolist $ :require
          [] respo.core :refer $ [] defcomp <> div span button input list->
          [] respo.comp.space :refer $ [] =<
          [] respo-ui.core :as ui
          [] reel.app.comp.task :refer $ [] comp-task
      :defs $ {}
        |comp-todolist $ quote
          defcomp comp-todolist (states tasks)
            let
                cursor $ :cursor states
                state $ either (:data states) |
              div
                {} $ :style (merge ui/fullscreen style-container)
                div ({})
                  input $ {} (:placeholder "|Task to add...") (:value state) (:style ui/input)
                    :on-input $ fn (e d!)
                      d! cursor $ :value e
                    :on-keydown $ fn (e d!)
                      if
                        = (:keycode e) 13
                        do (d! :task/add state)
                          d! ([]) |
                  =< 8 nil
                  button
                    {} (:style ui/button)
                      :on-click $ fn (e d!) (d! :task/add state) (d! cursor |)
                    <> |Add
                list-> ({})
                  -> tasks $ map
                    fn (task)
                      [] (:id task) (comp-task task)
        |style-container $ quote
          def style-container $ {} (:padding 8) (:overflow :auto)
      :proc $ quote ()
    |reel.app.main $ {}
      :ns $ quote
        ns reel.app.main $ :require
          [] respo.core :refer $ [] render! clear-cache! realize-ssr!
          [] reel.app.comp.container :refer $ [] comp-container
          [] reel.core :refer $ [] reel-updater refresh-reel
          [] reel.util :refer $ [] listen-devtools!
          [] reel.schema :as schema
          [] reel.app.updater :refer $ [] updater
      :defs $ {}
        |*reel $ quote
          defatom *reel $ -> schema/reel (assoc :base schema/store) (assoc :store schema/store) (assoc :display? false)
        |dispatch! $ quote
          defn dispatch! (op op-data) (println |Dispatch! op op-data)
            if (list? op)
              recur :states $ [] op op-data
              let
                  new-reel $ reel-updater updater @*reel op op-data
                ; println |Reel: new-reel
                reset! *reel new-reel
        |main! $ quote
          defn main! () (load-console-formatter!)
            if ssr? $ render-app! realize-ssr!
            render-app! render!
            add-watch *reel :changes $ fn (reel prev) (render-app! render!)
            listen-devtools! |k dispatch!
            dispatch! :reel/toggle nil
            println "|App started!"
        |mount-target $ quote
          def mount-target $ .querySelector js/document |.app
        |reload! $ quote
          defn reload! () (clear-cache!) (remove-watch *reel :changes)
            add-watch *reel :changes $ fn (reel prev) (render-app! render!)
            reset! *reel $ refresh-reel @*reel schema/store updater
            println "|code update."
        |render-app! $ quote
          defn render-app! (renderer)
            renderer mount-target (comp-container @*reel) dispatch!
        |ssr? $ quote
          def ssr? $ some? (.querySelector js/document |meta.respo-ssr)
      :proc $ quote ()
    |reel.schema $ {}
      :ns $ quote (ns reel.schema)
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
      :proc $ quote ()
    |reel.app.comp.task $ {}
      :ns $ quote
        ns reel.app.comp.task $ :require
          [] respo.core :refer $ [] defcomp <> div button input
          [] respo.util.format :refer $ [] hsl
          [] respo.comp.space :refer $ [] =<
          [] respo-ui.core :as ui
      :defs $ {}
        |comp-task $ quote
          defcomp comp-task (task)
            div
              {} $ :style style-container
              div $ {}
                :style $ merge style-done
                  if (:done? task)
                    {} $ :background-color (hsl 42 100 60)
                :on-click $ fn (e d!)
                  d! :task/toggle $ :id task
              =< 8 nil
              input $ {}
                :value $ :text task
                :placeholder "|Content of task"
                :on-input $ fn (e d!)
                  d! :task/edit $ [] (:id task) (:value e)
                :style ui/input
              =< 8 nil
              button
                {}
                  :style $ merge ui/button
                    {}
                      :background-color $ hsl 6 100 60
                      :color :white
                      :border :none
                  :on-click $ fn (e d!)
                    d! :task/remove $ :id task
                <> |Remove
        |style-container $ quote
          def style-container $ {} (:margin "|8px 0") (:height "\"32px")
        |style-done $ quote
          def style-done $ {} (:width 32) (:height 32) (:display :inline-block)
            :background-color $ hsl 220 100 76
            :cursor :pointer
      :proc $ quote ()
    |reel.comp.records $ {}
      :ns $ quote
        ns reel.comp.records $ :require
          [] respo.core :refer $ [] defcomp <> div span style list->
          [] respo-ui.core :as ui
          [] respo.comp.space :refer $ [] =<
          [] reel.style :as reel-style
          [] respo.util.format :refer $ [] hsl
      :defs $ {}
        |comp-records $ quote
          defcomp comp-records (records pointer)
            div
              {} $ :style (merge reel-style/code style-container)
              style $ {} (:innerHTML "|.record-item:hover{\n  background-color: #eee;\n}")
              list-> ({})
                ->
                  prepend records $ [] :base nil :base
                  map-indexed $ fn (idx record)
                    [] (last record)
                      div
                        {} (:class-name |record-item)
                          :style $ merge style-record
                            if (= pointer idx)
                              {}
                                :background-color $ hsl 220 100 76
                                :color :white
                          :on-click $ on-recall idx
                        <> $ pr-str (first record)
        |on-recall $ quote
          defn on-recall (idx)
            fn (e dispatch!) (dispatch! :reel/recall idx)
        |style-container $ quote
          def style-container $ {} (:overflow :auto) (:flex-shrink 0) (:padding-bottom 120) (:padding-top 16) (:width 160) (:font-size 12)
        |style-data $ quote
          def style-data $ {} (:max-width 100) (:overflow :hidden) (:text-overflow :ellipsis) (:white-space :nowrap) (:display :inline-block) (:vertical-align :middle)
        |style-record $ quote
          def style-record $ {} (:cursor :pointer) (:padding "|0 4px") (:white-space :nowrap) (:cursor :pointer) (:overflow :hidden) (:text-overflow :ellipsis)
      :proc $ quote ()
    |reel.util $ {}
      :ns $ quote
        ns reel.util $ :require
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
      :proc $ quote ()
    |reel.style $ {}
      :ns $ quote (ns reel.style)
      :defs $ {}
        |code $ quote
          def code $ {} (:font-family "|Source Code Pro, Menlo, monospace")
      :proc $ quote ()
    |reel.core $ {}
      :ns $ quote
        ns reel.core $ :require
      :defs $ {}
        |play-records $ quote
          defn play-records (store records updater pointer)
            if (&= 0 pointer) store $ let[] (op op-data op-id op-time) (first records)
              &let
                next-store $ updater store op op-data op-id op-time
                recur next-store (rest records) updater $ dec pointer
        |reel-updater $ quote
          defn reel-updater (updater reel op op-data)
            ; println |Name: $ turn-string op
            let
                op-id $ generate-id!
                op-time $ js/Date.now
              if
                .starts-with? (str op) |:reel/
                merge reel $ let
                    pointer $ &map:get reel :pointer
                    records $ &map:get reel :records
                    base $ &map:get reel :base
                    store $ &map:get reel :base
                    stopped? $ &map:get reel :stopped?
                  case-default op
                    do (js/console.warn "|Unknown reel/ op:" op) nil
                    :reel/toggle $ {}
                      :display? $ not (:display? reel)
                    :reel/recall $ let
                        idx op-data
                        new-store $ play-records base records updater idx
                      {} (:pointer idx) (:stopped? true) (:store new-store)
                    :reel/run $ let
                        new-store $ play-records base records updater (count records)
                      {} (:store new-store) (:stopped? false) (:pointer nil)
                    :reel/step $ if stopped?
                      if
                        < (count records) 2
                        , nil $ if
                          < pointer $ count records
                          let
                              next-pointer $ inc pointer
                              next-record $ get records pointer
                            let[] (old-op old-data old-id old-time) next-record $ {} (:pointer next-pointer)
                              :store $ updater (:store reel) old-op old-data old-id old-time
                          {} (:store base) (:pointer 0)
                      , nil
                    :reel/merge $ if stopped?
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
                    :reel/reset $ if stopped?
                      {} $ :records (.slice records 0 pointer)
                      {}
                        :store $ :base reel
                        :pointer nil
                        :records $ []
                        :stopped? false
                    :reel/remove $ let
                        idx op-data
                      if (&= 0 idx) reel $ -> reel (update :pointer dec)
                        update :records $ fn (records)
                          concat
                            .slice records 0 $ dec idx
                            .slice records idx
                        assoc :store $ play-records base records updater (dec idx)
                let
                    data-pack $ [] op op-data op-id op-time
                  if (&map:get reel :stopped?)
                    -> reel $ update :records
                      fn (records) (conj records data-pack)
                    -> reel
                      assoc :store $ updater (:store reel) op op-data op-id op-time
                      update :records $ fn (records) (conj records data-pack)
        |refresh-reel $ quote
          defn refresh-reel (reel base updater)
            let
                next-base $ if (:merged? reel) (:base reel) base
                records $ :records reel
              -> reel (assoc :base next-base)
                assoc :store $ play-records next-base records updater
                  if (:stopped? reel) (:pointer reel) (count records)
      :proc $ quote ()
    |reel.app.comp.container $ {}
      :ns $ quote
        ns reel.app.comp.container $ :require
          [] respo.util.format :refer $ [] hsl
          [] respo-ui.core :as ui
          [] respo.core :refer $ [] defcomp <> >> div span
          [] respo.comp.space :refer $ [] =<
          [] reel.comp.reel :refer $ [] comp-reel
          [] reel.app.comp.todolist :refer $ [] comp-todolist
      :defs $ {}
        |comp-container $ quote
          defcomp comp-container (reel)
            let
                store $ :store reel
                states $ :states store
              div
                {} $ :style (merge ui/global)
                comp-todolist (>> states :todolist) (:tasks store)
                comp-reel (>> states :reel) reel nil
      :proc $ quote ()
    |reel.app.updater $ {}
      :ns $ quote
        ns reel.app.updater $ :require
          [] respo.cursor :refer $ [] update-states
      :defs $ {}
        |updater $ quote
          defn updater (store op op-data op-id op-time)
            case-default op
              do (js/console.log "\"unknown op" op) store
              :states $ update-states store op-data
              :task/add $ update store :tasks
                fn (tasks)
                  prepend tasks $ {} (:id op-id) (:done? false) (:text op-data)
              :task/remove $ update store :tasks
                fn (tasks)
                  filter tasks $ fn (task)
                    /= (:id task) op-data
              :task/toggle $ update store :tasks
                fn (tasks)
                  map tasks $ fn (task)
                    if
                      = (:id task) op-data
                      update task :done? not
                      , task
              :task/edit $ update store :tasks
                fn (tasks)
                  map tasks $ fn (task)
                    let[] (task-id text) op-data $ if
                      = (:id task) task-id
                      assoc task :text text
                      , task
      :proc $ quote ()
