
{} (:package |reel)
  :configs $ {} (:init-fn |reel.app.main/main!) (:output |src) (:port 6001) (:reload-fn |reel.app.main/reload!) (:storage-key |calcit.cirru) (:version |0.6.0-a2)
    :modules $ [] |respo.calcit/ |lilac/ |memof/ |respo-ui.calcit/
  :entries $ {}
  :files $ {}
    |reel.app.comp.container $ %{} :FileEntry
      :defs $ {}
        |comp-container $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1507357346880) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1507358210544) (:by |root) (:text |defcomp)
              |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |comp-container)
              |n $ %{} :Expr (:at 1507357346880) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |reel)
              |r $ %{} :Expr (:at 1507357346880) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |let)
                  |j $ %{} :Expr (:at 1507357346880) (:by nil)
                    :data $ {}
                      |T $ %{} :Expr (:at 1507357346880) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |store)
                          |j $ %{} :Expr (:at 1507357346880) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:store)
                              |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |reel)
                      |j $ %{} :Expr (:at 1507357346880) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |states)
                          |j $ %{} :Expr (:at 1507357346880) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:states)
                              |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |store)
                  |r $ %{} :Expr (:at 1507357346880) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |div)
                      |j $ %{} :Expr (:at 1507357346880) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |{})
                          |j $ %{} :Expr (:at 1507357346880) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1657820246283) (:by |Oj4l0GxFU) (:text |:class-name)
                              |j $ %{} :Leaf (:at 1657820244042) (:by |Oj4l0GxFU) (:text |css/global)
                      |r $ %{} :Expr (:at 1507357346880) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |comp-todolist)
                          |j $ %{} :Expr (:at 1590304311062) (:by |Oj4l0GxFU)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1590304311733) (:by |Oj4l0GxFU) (:text |>>)
                              |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |states)
                              |j $ %{} :Leaf (:at 1590304313707) (:by |Oj4l0GxFU) (:text |:todolist)
                          |r $ %{} :Expr (:at 1507357346880) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:tasks)
                              |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |store)
                      |v $ %{} :Expr (:at 1507357346880) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |comp-reel)
                          |b $ %{} :Expr (:at 1584768677949) (:by |Oj4l0GxFU)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1584768678728) (:by |Oj4l0GxFU) (:text |>>)
                              |T $ %{} :Leaf (:at 1508566100205) (:by |root) (:text |states)
                              |j $ %{} :Leaf (:at 1584768679487) (:by |Oj4l0GxFU) (:text |:reel)
                          |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |reel)
                          |r $ %{} :Leaf (:at 1508641933970) (:by |root) (:text |nil)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1507357346880) (:by nil)
          :data $ {}
            |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |reel.app.comp.container)
            |r $ %{} :Expr (:at 1507357346880) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:require)
                |j $ %{} :Expr (:at 1507357346880) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1610609578128) (:by |Oj4l0GxFU) (:text |respo.util.format)
                    |r $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1507357346880) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |hsl)
                |r $ %{} :Expr (:at 1507357346880) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1516431417661) (:by |root) (:text |respo-ui.core)
                    |r $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |ui)
                |t $ %{} :Expr (:at 1657820224629) (:by |Oj4l0GxFU)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1657820227469) (:by |Oj4l0GxFU) (:text |respo-ui.css)
                    |b $ %{} :Leaf (:at 1657820227848) (:by |Oj4l0GxFU) (:text |:as)
                    |h $ %{} :Leaf (:at 1657820228397) (:by |Oj4l0GxFU) (:text |css)
                |v $ %{} :Expr (:at 1507358175386) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1540918177075) (:by |root) (:text |respo.core)
                    |r $ %{} :Leaf (:at 1507358179319) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1507358179519) (:by |root)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1507358184598) (:by |root) (:text |defcomp)
                        |r $ %{} :Leaf (:at 1507358186074) (:by |root) (:text |<>)
                        |t $ %{} :Leaf (:at 1584768686104) (:by |Oj4l0GxFU) (:text |>>)
                        |v $ %{} :Leaf (:at 1507358188308) (:by |root) (:text |div)
                        |x $ %{} :Leaf (:at 1507358188936) (:by |root) (:text |span)
                |w $ %{} :Expr (:at 1657820230439) (:by |Oj4l0GxFU)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1657820232175) (:by |Oj4l0GxFU) (:text |respo.css)
                    |b $ %{} :Leaf (:at 1657820233502) (:by |Oj4l0GxFU) (:text |:refer)
                    |h $ %{} :Expr (:at 1657820233679) (:by |Oj4l0GxFU)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1657820234744) (:by |Oj4l0GxFU) (:text |defstyle)
                |x $ %{} :Expr (:at 1507357346880) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |respo.comp.space)
                    |r $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1507357346880) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1507358200200) (:by |root) (:text |=<)
                |yT $ %{} :Expr (:at 1507357346880) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |reel.comp.reel)
                    |r $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1507357346880) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |comp-reel)
                |yj $ %{} :Expr (:at 1507357346880) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1624006697972) (:by |Oj4l0GxFU) (:text |reel.app.comp.todolist)
                    |r $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1507357346880) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |comp-todolist)
    |reel.app.comp.task $ %{} :FileEntry
      :defs $ {}
        |comp-task $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1507357346880) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1507358322100) (:by |root) (:text |defcomp)
              |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |comp-task)
              |n $ %{} :Expr (:at 1507358325362) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1507358326645) (:by |root) (:text |task)
              |r $ %{} :Expr (:at 1507357346880) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |div)
                  |j $ %{} :Expr (:at 1507357346880) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |{})
                      |j $ %{} :Expr (:at 1507357346880) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:style)
                          |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |style-container)
                  |r $ %{} :Expr (:at 1507357346880) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |div)
                      |j $ %{} :Expr (:at 1507357346880) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |{})
                          |b $ %{} :Expr (:at 1657820349070) (:by |Oj4l0GxFU)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1657820351510) (:by |Oj4l0GxFU) (:text |:class-name)
                              |b $ %{} :Leaf (:at 1657820351861) (:by |Oj4l0GxFU) (:text |css-done)
                          |j $ %{} :Expr (:at 1507357346880) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:style)
                              |j $ %{} :Expr (:at 1507357346880) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |if)
                                  |j $ %{} :Expr (:at 1507357346880) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:done?)
                                      |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |task)
                                  |r $ %{} :Expr (:at 1507357346880) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |{})
                                      |j $ %{} :Expr (:at 1507357346880) (:by nil)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:background-color)
                                          |j $ %{} :Expr (:at 1558450812868) (:by |Oj4l0GxFU)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1558450818081) (:by |Oj4l0GxFU) (:text |hsl)
                                              |j $ %{} :Leaf (:at 1558450818664) (:by |Oj4l0GxFU) (:text |42)
                                              |r $ %{} :Leaf (:at 1558450819544) (:by |Oj4l0GxFU) (:text |100)
                                              |v $ %{} :Leaf (:at 1558450820012) (:by |Oj4l0GxFU) (:text |60)
                          |r $ %{} :Expr (:at 1507357346880) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1515690395896) (:by |root) (:text |:on-click)
                              |j $ %{} :Expr (:at 1590304272485) (:by |Oj4l0GxFU)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1590304272485) (:by |Oj4l0GxFU) (:text |fn)
                                  |j $ %{} :Expr (:at 1590304272485) (:by |Oj4l0GxFU)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1590304272485) (:by |Oj4l0GxFU) (:text |e)
                                      |j $ %{} :Leaf (:at 1590304278500) (:by |Oj4l0GxFU) (:text |d!)
                                  |r $ %{} :Expr (:at 1590304272485) (:by |Oj4l0GxFU)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1590304279355) (:by |Oj4l0GxFU) (:text |d!)
                                      |j $ %{} :Expr (:at 1688398318461) (:by |Oj4l0GxFU)
                                        :data $ {}
                                          |D $ %{} :Leaf (:at 1688398319087) (:by |Oj4l0GxFU) (:text |::)
                                          |T $ %{} :Leaf (:at 1590304272485) (:by |Oj4l0GxFU) (:text |:task/toggle)
                                          |b $ %{} :Expr (:at 1688398321279) (:by |Oj4l0GxFU)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1688398321279) (:by |Oj4l0GxFU) (:text |:id)
                                              |b $ %{} :Leaf (:at 1688398321279) (:by |Oj4l0GxFU) (:text |task)
                  |v $ %{} :Expr (:at 1507357346880) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1507358339946) (:by |root) (:text |=<)
                      |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |8)
                      |r $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |nil)
                  |x $ %{} :Expr (:at 1507357346880) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |input)
                      |j $ %{} :Expr (:at 1507357346880) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |{})
                          |p $ %{} :Expr (:at 1507357346880) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:placeholder)
                              |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text "||Content of task")
                          |pT $ %{} :Expr (:at 1657820363166) (:by |Oj4l0GxFU)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1657820365113) (:by |Oj4l0GxFU) (:text |:class-name)
                              |b $ %{} :Leaf (:at 1657820366487) (:by |Oj4l0GxFU) (:text |css/input)
                          |q $ %{} :Expr (:at 1657820360444) (:by |Oj4l0GxFU)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1657820360444) (:by |Oj4l0GxFU) (:text |:value)
                              |b $ %{} :Expr (:at 1657820360444) (:by |Oj4l0GxFU)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1657820360444) (:by |Oj4l0GxFU) (:text |:text)
                                  |b $ %{} :Leaf (:at 1657820360444) (:by |Oj4l0GxFU) (:text |task)
                          |r $ %{} :Expr (:at 1507357346880) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1515690392313) (:by |root) (:text |:on-input)
                              |j $ %{} :Expr (:at 1590304239489) (:by |Oj4l0GxFU)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1590304239489) (:by |Oj4l0GxFU) (:text |fn)
                                  |j $ %{} :Expr (:at 1590304239489) (:by |Oj4l0GxFU)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1590304239489) (:by |Oj4l0GxFU) (:text |e)
                                      |j $ %{} :Leaf (:at 1590304247523) (:by |Oj4l0GxFU) (:text |d!)
                                  |r $ %{} :Expr (:at 1590304239489) (:by |Oj4l0GxFU)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1590304246494) (:by |Oj4l0GxFU) (:text |d!)
                                      |r $ %{} :Expr (:at 1590304239489) (:by |Oj4l0GxFU)
                                        :data $ {}
                                          |L $ %{} :Leaf (:at 1687780828092) (:by |Oj4l0GxFU) (:text |::)
                                          |X $ %{} :Leaf (:at 1687780826162) (:by |Oj4l0GxFU) (:text |:task/edit)
                                          |j $ %{} :Expr (:at 1590304242852) (:by |Oj4l0GxFU)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1590304243932) (:by |Oj4l0GxFU) (:text |:id)
                                              |j $ %{} :Leaf (:at 1590304244538) (:by |Oj4l0GxFU) (:text |task)
                                          |r $ %{} :Expr (:at 1590304239489) (:by |Oj4l0GxFU)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1590304239489) (:by |Oj4l0GxFU) (:text |:value)
                                              |j $ %{} :Leaf (:at 1590304239489) (:by |Oj4l0GxFU) (:text |e)
                  |y $ %{} :Expr (:at 1507357346880) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1507358337527) (:by |root) (:text |=<)
                      |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |8)
                      |r $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |nil)
                  |yT $ %{} :Expr (:at 1507357346880) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |button)
                      |j $ %{} :Expr (:at 1507357346880) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |{})
                          |b $ %{} :Expr (:at 1657820372412) (:by |Oj4l0GxFU)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1657820374127) (:by |Oj4l0GxFU) (:text |:class-name)
                              |b $ %{} :Leaf (:at 1657820376274) (:by |Oj4l0GxFU) (:text |css/button)
                          |j $ %{} :Expr (:at 1507357346880) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:style)
                              |j $ %{} :Expr (:at 1507357346880) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |{})
                                  |j $ %{} :Expr (:at 1507357346880) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:background-color)
                                      |j $ %{} :Expr (:at 1558450826662) (:by |Oj4l0GxFU)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1558450827855) (:by |Oj4l0GxFU) (:text |hsl)
                                          |j $ %{} :Leaf (:at 1558450828403) (:by |Oj4l0GxFU) (:text |6)
                                          |r $ %{} :Leaf (:at 1558450829747) (:by |Oj4l0GxFU) (:text |100)
                                          |v $ %{} :Leaf (:at 1558450830369) (:by |Oj4l0GxFU) (:text |60)
                                  |r $ %{} :Expr (:at 1558451406306) (:by |Oj4l0GxFU)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1558451411923) (:by |Oj4l0GxFU) (:text |:color)
                                      |j $ %{} :Leaf (:at 1558451410374) (:by |Oj4l0GxFU) (:text |:white)
                                  |v $ %{} :Expr (:at 1558451415837) (:by |Oj4l0GxFU)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1558451417312) (:by |Oj4l0GxFU) (:text |:border)
                                      |j $ %{} :Leaf (:at 1558451421784) (:by |Oj4l0GxFU) (:text |:none)
                          |r $ %{} :Expr (:at 1507357346880) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1515690401224) (:by |root) (:text |:on-click)
                              |j $ %{} :Expr (:at 1590304256495) (:by |Oj4l0GxFU)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1590304256495) (:by |Oj4l0GxFU) (:text |fn)
                                  |j $ %{} :Expr (:at 1590304256495) (:by |Oj4l0GxFU)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1590304256495) (:by |Oj4l0GxFU) (:text |e)
                                      |j $ %{} :Leaf (:at 1590304262402) (:by |Oj4l0GxFU) (:text |d!)
                                  |r $ %{} :Expr (:at 1590304256495) (:by |Oj4l0GxFU)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1590304263087) (:by |Oj4l0GxFU) (:text |d!)
                                      |j $ %{} :Expr (:at 1687781013018) (:by |Oj4l0GxFU)
                                        :data $ {}
                                          |D $ %{} :Leaf (:at 1687781014782) (:by |Oj4l0GxFU) (:text |::)
                                          |T $ %{} :Leaf (:at 1590304256495) (:by |Oj4l0GxFU) (:text |:task/remove)
                                          |b $ %{} :Expr (:at 1687781017368) (:by |Oj4l0GxFU)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1687781017368) (:by |Oj4l0GxFU) (:text |:id)
                                              |b $ %{} :Leaf (:at 1687781017368) (:by |Oj4l0GxFU) (:text |task)
                      |r $ %{} :Expr (:at 1507357346880) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1507358342151) (:by |root) (:text |<>)
                          |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text ||Remove)
        |css-done $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1507357346880) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1657820340018) (:by |Oj4l0GxFU) (:text |defstyle)
              |j $ %{} :Leaf (:at 1657820320736) (:by |Oj4l0GxFU) (:text |css-done)
              |r $ %{} :Expr (:at 1657820340669) (:by |Oj4l0GxFU)
                :data $ {}
                  |D $ %{} :Leaf (:at 1657820341141) (:by |Oj4l0GxFU) (:text |{})
                  |T $ %{} :Expr (:at 1657820342279) (:by |Oj4l0GxFU)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1657820343622) (:by |Oj4l0GxFU) (:text "|\"$0")
                      |T $ %{} :Expr (:at 1507357346880) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |{})
                          |j $ %{} :Expr (:at 1507357346880) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:width)
                              |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |32)
                          |r $ %{} :Expr (:at 1507357346880) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:height)
                              |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |32)
                          |v $ %{} :Expr (:at 1507357346880) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:display)
                              |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:inline-block)
                          |x $ %{} :Expr (:at 1507357346880) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:background-color)
                              |j $ %{} :Expr (:at 1558450801069) (:by |Oj4l0GxFU)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1558450801800) (:by |Oj4l0GxFU) (:text |hsl)
                                  |j $ %{} :Leaf (:at 1558451493925) (:by |Oj4l0GxFU) (:text |220)
                                  |r $ %{} :Leaf (:at 1558451496673) (:by |Oj4l0GxFU) (:text |100)
                                  |v $ %{} :Leaf (:at 1558451498489) (:by |Oj4l0GxFU) (:text |76)
                          |y $ %{} :Expr (:at 1508646867274) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1508646868892) (:by |root) (:text |:cursor)
                              |j $ %{} :Leaf (:at 1508646870114) (:by |root) (:text |:pointer)
        |style-container $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1507357346880) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |def)
              |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |style-container)
              |r $ %{} :Expr (:at 1507357346880) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |{})
                  |j $ %{} :Expr (:at 1507357346880) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:margin)
                      |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text "||8px 0")
                  |r $ %{} :Expr (:at 1507357346880) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:height)
                      |j $ %{} :Leaf (:at 1623953414162) (:by |Oj4l0GxFU) (:text "|\"32px")
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1507357346880) (:by nil)
          :data $ {}
            |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |reel.app.comp.task)
            |r $ %{} :Expr (:at 1507357346880) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:require)
                |j $ %{} :Expr (:at 1507358278005) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1540918191585) (:by |root) (:text |respo.core)
                    |r $ %{} :Leaf (:at 1507358281703) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1507358281878) (:by |root)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1507358284967) (:by |root) (:text |[])
                        |b $ %{} :Leaf (:at 1507358289368) (:by |root) (:text |defcomp)
                        |f $ %{} :Leaf (:at 1507358289810) (:by |root) (:text |<>)
                        |j $ %{} :Leaf (:at 1507358286956) (:by |root) (:text |div)
                        |r $ %{} :Leaf (:at 1507358885670) (:by |root) (:text |button)
                        |v $ %{} :Leaf (:at 1507358912688) (:by |root) (:text |input)
                |n $ %{} :Expr (:at 1657820322926) (:by |Oj4l0GxFU)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1657820324522) (:by |Oj4l0GxFU) (:text |respo.css)
                    |b $ %{} :Leaf (:at 1657820325248) (:by |Oj4l0GxFU) (:text |:refer)
                    |h $ %{} :Expr (:at 1657820325444) (:by |Oj4l0GxFU)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1657820327547) (:by |Oj4l0GxFU) (:text |defstyle)
                |r $ %{} :Expr (:at 1507357346880) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1610609567121) (:by |Oj4l0GxFU) (:text |respo.util.format)
                    |r $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1507357346880) (:by nil)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |[])
                        |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |hsl)
                |x $ %{} :Expr (:at 1507357346880) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |respo.comp.space)
                    |r $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1507357346880) (:by nil)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |[])
                        |j $ %{} :Leaf (:at 1507358306265) (:by |root) (:text |=<)
                |y $ %{} :Expr (:at 1507357346880) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1516431439001) (:by |root) (:text |respo-ui.core)
                    |r $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |ui)
                |z $ %{} :Expr (:at 1657820330282) (:by |Oj4l0GxFU)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1657820336063) (:by |Oj4l0GxFU) (:text |respo-ui.css)
                    |b $ %{} :Leaf (:at 1657820336780) (:by |Oj4l0GxFU) (:text |:as)
                    |h $ %{} :Leaf (:at 1657820337500) (:by |Oj4l0GxFU) (:text |css)
    |reel.app.comp.todolist $ %{} :FileEntry
      :defs $ {}
        |comp-todolist $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1507357346880) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1507358791511) (:by |root) (:text |defcomp)
              |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |comp-todolist)
              |n $ %{} :Expr (:at 1507357346880) (:by nil)
                :data $ {}
                  |5 $ %{} :Leaf (:at 1507358868886) (:by |root) (:text |states)
                  |D $ %{} :Leaf (:at 1507358849249) (:by |root) (:text |tasks)
              |r $ %{} :Expr (:at 1507357346880) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |let)
                  |j $ %{} :Expr (:at 1507357346880) (:by nil)
                    :data $ {}
                      |D $ %{} :Expr (:at 1590304171515) (:by |Oj4l0GxFU)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1590304172927) (:by |Oj4l0GxFU) (:text |cursor)
                          |j $ %{} :Expr (:at 1590304173132) (:by |Oj4l0GxFU)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1590304175376) (:by |Oj4l0GxFU) (:text |:cursor)
                              |j $ %{} :Leaf (:at 1590304177217) (:by |Oj4l0GxFU) (:text |states)
                      |T $ %{} :Expr (:at 1507357346880) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |state)
                          |j $ %{} :Expr (:at 1507357346880) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1610611924304) (:by |Oj4l0GxFU) (:text |either)
                              |j $ %{} :Expr (:at 1507357346880) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:data)
                                  |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |states)
                              |r $ %{} :Leaf (:at 1507357346880) (:by |root) (:text ||)
                  |r $ %{} :Expr (:at 1507357346880) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |div)
                      |j $ %{} :Expr (:at 1507357346880) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |{})
                          |j $ %{} :Expr (:at 1507357346880) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1657820253215) (:by |Oj4l0GxFU) (:text |:class-name)
                              |j $ %{} :Expr (:at 1508568973621) (:by |root)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1657820258109) (:by |Oj4l0GxFU) (:text |str-spaced)
                                  |L $ %{} :Leaf (:at 1657820260806) (:by |Oj4l0GxFU) (:text |css/fullscreen)
                                  |T $ %{} :Leaf (:at 1657820293728) (:by |Oj4l0GxFU) (:text |css-container)
                      |r $ %{} :Expr (:at 1507357346880) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |div)
                          |j $ %{} :Expr (:at 1507357346880) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |{})
                          |r $ %{} :Expr (:at 1507357346880) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |input)
                              |j $ %{} :Expr (:at 1507357346880) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |{})
                                  |b $ %{} :Expr (:at 1507357346880) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:placeholder)
                                      |j $ %{} :Leaf (:at 1507368472373) (:by |root) (:text "||Task to add...")
                                  |f $ %{} :Expr (:at 1507357346880) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:value)
                                      |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |state)
                                  |j $ %{} :Expr (:at 1507357346880) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1657820298098) (:by |Oj4l0GxFU) (:text |:class-name)
                                      |j $ %{} :Leaf (:at 1657820299431) (:by |Oj4l0GxFU) (:text |css/input)
                                  |r $ %{} :Expr (:at 1507357346880) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1515690437585) (:by |root) (:text |:on-input)
                                      |j $ %{} :Expr (:at 1590304166953) (:by |Oj4l0GxFU)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1590304167293) (:by |Oj4l0GxFU) (:text |fn)
                                          |j $ %{} :Expr (:at 1590304168080) (:by |Oj4l0GxFU)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1590304167752) (:by |Oj4l0GxFU) (:text |e)
                                              |j $ %{} :Leaf (:at 1590304169075) (:by |Oj4l0GxFU) (:text |d!)
                                          |r $ %{} :Expr (:at 1590304169958) (:by |Oj4l0GxFU)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1590304169958) (:by |Oj4l0GxFU) (:text |d!)
                                              |j $ %{} :Expr (:at 1688398340139) (:by |Oj4l0GxFU)
                                                :data $ {}
                                                  |D $ %{} :Leaf (:at 1688398340931) (:by |Oj4l0GxFU) (:text |::)
                                                  |L $ %{} :Leaf (:at 1688398343891) (:by |Oj4l0GxFU) (:text |:states)
                                                  |T $ %{} :Leaf (:at 1590304169958) (:by |Oj4l0GxFU) (:text |cursor)
                                                  |b $ %{} :Expr (:at 1688398347242) (:by |Oj4l0GxFU)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1688398347242) (:by |Oj4l0GxFU) (:text |:value)
                                                      |b $ %{} :Leaf (:at 1688398347242) (:by |Oj4l0GxFU) (:text |e)
                                  |v $ %{} :Expr (:at 1508644894529) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1515690440441) (:by |root) (:text |:on-keydown)
                                      |j $ %{} :Expr (:at 1508644901092) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1508644902692) (:by |root) (:text |fn)
                                          |j $ %{} :Expr (:at 1508644903023) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1508644903229) (:by |root) (:text |e)
                                              |j $ %{} :Leaf (:at 1508644904639) (:by |root) (:text |d!)
                                          |r $ %{} :Expr (:at 1508644929146) (:by |root)
                                            :data $ {}
                                              |D $ %{} :Leaf (:at 1508644929838) (:by |root) (:text |if)
                                              |L $ %{} :Expr (:at 1508644930067) (:by |root)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1508644930417) (:by |root) (:text |=)
                                                  |j $ %{} :Expr (:at 1508644931675) (:by |root)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1508644932666) (:by |root) (:text |:keycode)
                                                      |j $ %{} :Leaf (:at 1508644932950) (:by |root) (:text |e)
                                                  |r $ %{} :Leaf (:at 1558452617077) (:by |Oj4l0GxFU) (:text |13)
                                              |T $ %{} :Expr (:at 1508644939608) (:by |root)
                                                :data $ {}
                                                  |D $ %{} :Leaf (:at 1508644940231) (:by |root) (:text |do)
                                                  |T $ %{} :Expr (:at 1507357346880) (:by nil)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1508644981466) (:by |root) (:text |d!)
                                                      |j $ %{} :Expr (:at 1688398350733) (:by |Oj4l0GxFU)
                                                        :data $ {}
                                                          |D $ %{} :Leaf (:at 1688398351456) (:by |Oj4l0GxFU) (:text |::)
                                                          |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:task/add)
                                                          |b $ %{} :Leaf (:at 1688398353897) (:by |Oj4l0GxFU) (:text |state)
                                                  |j $ %{} :Expr (:at 1507366069752) (:by |root)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1590304130347) (:by |Oj4l0GxFU) (:text |d!)
                                                      |b $ %{} :Expr (:at 1688398357156) (:by |Oj4l0GxFU)
                                                        :data $ {}
                                                          |D $ %{} :Leaf (:at 1688398358158) (:by |Oj4l0GxFU) (:text |::)
                                                          |L $ %{} :Leaf (:at 1688398364256) (:by |Oj4l0GxFU) (:text |:states)
                                                          |T $ %{} :Expr (:at 1590304134750) (:by |Oj4l0GxFU)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1590304135116) (:by |Oj4l0GxFU) (:text |[])
                                                          |b $ %{} :Leaf (:at 1688398360042) (:by |Oj4l0GxFU) (:text ||)
                          |v $ %{} :Expr (:at 1507357346880) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1507358820823) (:by |root) (:text |=<)
                              |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |8)
                              |r $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |nil)
                          |x $ %{} :Expr (:at 1507357346880) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |button)
                              |j $ %{} :Expr (:at 1507357346880) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |{})
                                  |j $ %{} :Expr (:at 1507357346880) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1657820304175) (:by |Oj4l0GxFU) (:text |:class-name)
                                      |j $ %{} :Leaf (:at 1657820305584) (:by |Oj4l0GxFU) (:text |css/button)
                                  |r $ %{} :Expr (:at 1507357346880) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1515690431926) (:by |root) (:text |:on-click)
                                      |j $ %{} :Expr (:at 1590304196912) (:by |Oj4l0GxFU)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1590304196912) (:by |Oj4l0GxFU) (:text |fn)
                                          |j $ %{} :Expr (:at 1590304196912) (:by |Oj4l0GxFU)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1590304196912) (:by |Oj4l0GxFU) (:text |e)
                                              |j $ %{} :Leaf (:at 1590304206777) (:by |Oj4l0GxFU) (:text |d!)
                                          |r $ %{} :Expr (:at 1590304196912) (:by |Oj4l0GxFU)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1590304208204) (:by |Oj4l0GxFU) (:text |d!)
                                              |j $ %{} :Expr (:at 1688398366172) (:by |Oj4l0GxFU)
                                                :data $ {}
                                                  |D $ %{} :Leaf (:at 1688398366861) (:by |Oj4l0GxFU) (:text |::)
                                                  |T $ %{} :Leaf (:at 1590304196912) (:by |Oj4l0GxFU) (:text |:task/add)
                                                  |b $ %{} :Leaf (:at 1688398368665) (:by |Oj4l0GxFU) (:text |state)
                                          |v $ %{} :Expr (:at 1590304196912) (:by |Oj4l0GxFU)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1590304200024) (:by |Oj4l0GxFU) (:text |d!)
                                              |b $ %{} :Expr (:at 1688398372269) (:by |Oj4l0GxFU)
                                                :data $ {}
                                                  |D $ %{} :Leaf (:at 1688398373145) (:by |Oj4l0GxFU) (:text |::)
                                                  |L $ %{} :Leaf (:at 1688398490023) (:by |Oj4l0GxFU) (:text |:states)
                                                  |T $ %{} :Leaf (:at 1590304201427) (:by |Oj4l0GxFU) (:text |cursor)
                                                  |b $ %{} :Leaf (:at 1688398377739) (:by |Oj4l0GxFU) (:text ||)
                              |r $ %{} :Expr (:at 1507357346880) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1507358827886) (:by |root) (:text |<>)
                                  |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text ||Add)
                      |v $ %{} :Expr (:at 1507357346880) (:by nil)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1509190185032) (:by |root) (:text |list->)
                          |j $ %{} :Expr (:at 1507357346880) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |{})
                          |r $ %{} :Expr (:at 1507357346880) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1619600081223) (:by |Oj4l0GxFU) (:text |->)
                              |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |tasks)
                              |r $ %{} :Expr (:at 1507357346880) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |map)
                                  |j $ %{} :Expr (:at 1507357346880) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |fn)
                                      |j $ %{} :Expr (:at 1507357346880) (:by nil)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |task)
                                      |r $ %{} :Expr (:at 1507357346880) (:by nil)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |[])
                                          |j $ %{} :Expr (:at 1507357346880) (:by nil)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:id)
                                              |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |task)
                                          |r $ %{} :Expr (:at 1507357346880) (:by nil)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |comp-task)
                                              |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |task)
        |css-container $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1507357346880) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1657820267489) (:by |Oj4l0GxFU) (:text |defstyle)
              |j $ %{} :Leaf (:at 1657820265963) (:by |Oj4l0GxFU) (:text |css-container)
              |r $ %{} :Expr (:at 1657820287496) (:by |Oj4l0GxFU)
                :data $ {}
                  |D $ %{} :Leaf (:at 1657820288023) (:by |Oj4l0GxFU) (:text |{})
                  |T $ %{} :Expr (:at 1657820289412) (:by |Oj4l0GxFU)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1657820290677) (:by |Oj4l0GxFU) (:text "|\"$0")
                      |T $ %{} :Expr (:at 1507357346880) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |{})
                          |j $ %{} :Expr (:at 1507357346880) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:padding)
                              |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |8)
                          |r $ %{} :Expr (:at 1508568996559) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1508569001928) (:by |root) (:text |:overflow)
                              |j $ %{} :Leaf (:at 1508569213513) (:by |root) (:text |:auto)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1507357346880) (:by nil)
          :data $ {}
            |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |reel.app.comp.todolist)
            |r $ %{} :Expr (:at 1507357346880) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:require)
                |j $ %{} :Expr (:at 1507358243098) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1540918197472) (:by |root) (:text |respo.core)
                    |r $ %{} :Leaf (:at 1507358247620) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1507358247812) (:by |root)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1507358252645) (:by |root) (:text |defcomp)
                        |r $ %{} :Leaf (:at 1507358253329) (:by |root) (:text |<>)
                        |v $ %{} :Leaf (:at 1507358254041) (:by |root) (:text |div)
                        |x $ %{} :Leaf (:at 1507358254625) (:by |root) (:text |span)
                        |y $ %{} :Leaf (:at 1507358256166) (:by |root) (:text |button)
                        |yT $ %{} :Leaf (:at 1507358257458) (:by |root) (:text |input)
                        |yj $ %{} :Leaf (:at 1509190192632) (:by |root) (:text |list->)
                |p $ %{} :Expr (:at 1657820270484) (:by |Oj4l0GxFU)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1657820272224) (:by |Oj4l0GxFU) (:text |respo.css)
                    |b $ %{} :Leaf (:at 1657820273849) (:by |Oj4l0GxFU) (:text |:refer)
                    |h $ %{} :Expr (:at 1657820274157) (:by |Oj4l0GxFU)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1657820275207) (:by |Oj4l0GxFU) (:text |defstyle)
                |v $ %{} :Expr (:at 1507357346880) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |respo.comp.space)
                    |r $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1507357346880) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1507358270511) (:by |root) (:text |=<)
                |x $ %{} :Expr (:at 1507357346880) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1516431448087) (:by |root) (:text |respo-ui.core)
                    |r $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |ui)
                |xT $ %{} :Expr (:at 1657820276956) (:by |Oj4l0GxFU)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1657820279046) (:by |Oj4l0GxFU) (:text |respo-ui.css)
                    |b $ %{} :Leaf (:at 1657820279413) (:by |Oj4l0GxFU) (:text |:as)
                    |h $ %{} :Leaf (:at 1657820280011) (:by |Oj4l0GxFU) (:text |css)
                |y $ %{} :Expr (:at 1507357346880) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1624006726100) (:by |Oj4l0GxFU) (:text |reel.app.comp.task)
                    |r $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1507357346880) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |comp-task)
    |reel.app.main $ %{} :FileEntry
      :defs $ {}
        |*reel $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1507357346880) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1610610644089) (:by |Oj4l0GxFU) (:text |defatom)
              |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |*reel)
              |r $ %{} :Expr (:at 1507357346880) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |->)
                  |j $ %{} :Leaf (:at 1507366360382) (:by |root) (:text |schema/reel)
                  |r $ %{} :Expr (:at 1507357346880) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |assoc)
                      |j $ %{} :Leaf (:at 1507369658184) (:by |root) (:text |:base)
                      |r $ %{} :Leaf (:at 1507367971855) (:by |root) (:text |schema/store)
                  |v $ %{} :Expr (:at 1507357346880) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |assoc)
                      |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:store)
                      |r $ %{} :Leaf (:at 1507367940679) (:by |root) (:text |schema/store)
                  |x $ %{} :Expr (:at 1507461076178) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1507461080271) (:by |root) (:text |assoc)
                      |j $ %{} :Leaf (:at 1507461082449) (:by |root) (:text |:display?)
                      |r $ %{} :Leaf (:at 1508651996720) (:by |root) (:text |false)
        |dispatch! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1507357346880) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |dispatch!)
              |r $ %{} :Expr (:at 1507357346880) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |op)
              |v $ %{} :Expr (:at 1507357346880) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |println)
                  |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text ||Dispatch!)
                  |r $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |op)
              |x $ %{} :Expr (:at 1507357346880) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |let)
                  |j $ %{} :Expr (:at 1507357346880) (:by nil)
                    :data $ {}
                      |j $ %{} :Expr (:at 1507357346880) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |new-reel)
                          |j $ %{} :Expr (:at 1507357346880) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |reel-updater)
                              |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |updater)
                              |r $ %{} :Leaf (:at 1507365961033) (:by |root) (:text |@*reel)
                              |v $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |op)
                  |r $ %{} :Expr (:at 1507357346880) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |;)
                      |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |println)
                      |r $ %{} :Leaf (:at 1507357346880) (:by |root) (:text ||Reel:)
                      |v $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |new-reel)
                  |v $ %{} :Expr (:at 1507357346880) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |reset!)
                      |j $ %{} :Leaf (:at 1507365999031) (:by |root) (:text |*reel)
                      |r $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |new-reel)
        |main! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1507357346880) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1507358605615) (:by |root) (:text |main!)
              |r $ %{} :Expr (:at 1507357346880) (:by nil)
                :data $ {}
              |u $ %{} :Expr (:at 1623953743812) (:by |Oj4l0GxFU)
                :data $ {}
                  |T $ %{} :Leaf (:at 1623953749594) (:by |Oj4l0GxFU) (:text |load-console-formatter!)
              |y $ %{} :Expr (:at 1507357346880) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |render-app!)
              |yT $ %{} :Expr (:at 1507357346880) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |add-watch)
                  |j $ %{} :Leaf (:at 1507365935160) (:by |root) (:text |*reel)
                  |r $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:changes)
                  |v $ %{} :Expr (:at 1507358593848) (:by |root)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1507358594488) (:by |root) (:text |fn)
                      |L $ %{} :Expr (:at 1507358594755) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1612764336954) (:by |Oj4l0GxFU) (:text |reel)
                          |j $ %{} :Leaf (:at 1612764337594) (:by |Oj4l0GxFU) (:text |prev)
                      |T $ %{} :Expr (:at 1507358596685) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |render-app!)
              |yf $ %{} :Expr (:at 1507451576440) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1507451577129) (:by |root) (:text |listen-devtools!)
                  |b $ %{} :Leaf (:at 1615567741765) (:by |Oj4l0GxFU) (:text ||k)
                  |j $ %{} :Leaf (:at 1507451579448) (:by |root) (:text |dispatch!)
              |yh $ %{} :Expr (:at 1540958305572) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1540958305572) (:by |root) (:text |dispatch!)
                  |j $ %{} :Expr (:at 1687780422248) (:by |Oj4l0GxFU)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1687780428960) (:by |Oj4l0GxFU) (:text |::)
                      |T $ %{} :Leaf (:at 1687780429839) (:by |Oj4l0GxFU) (:text |:reel/toggle)
              |yj $ %{} :Expr (:at 1507357346880) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |println)
                  |j $ %{} :Leaf (:at 1507358601099) (:by |root) (:text "||App started!")
        |mount-target $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1507358657837) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1507358658932) (:by |root) (:text |def)
              |j $ %{} :Leaf (:at 1507358657837) (:by |root) (:text |mount-target)
              |r $ %{} :Expr (:at 1507357346880) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |.querySelector)
                  |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |js/document)
                  |r $ %{} :Leaf (:at 1507358662749) (:by |root) (:text ||.app)
        |reload! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1657820628160) (:by |Oj4l0GxFU)
            :data $ {}
              |T $ %{} :Leaf (:at 1657820628160) (:by |Oj4l0GxFU) (:text |defn)
              |b $ %{} :Leaf (:at 1657820628160) (:by |Oj4l0GxFU) (:text |reload!)
              |h $ %{} :Expr (:at 1657820628160) (:by |Oj4l0GxFU)
                :data $ {}
              |l $ %{} :Expr (:at 1657820628160) (:by |Oj4l0GxFU)
                :data $ {}
                  |T $ %{} :Leaf (:at 1657820628160) (:by |Oj4l0GxFU) (:text |if)
                  |b $ %{} :Expr (:at 1657820628160) (:by |Oj4l0GxFU)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1657820628160) (:by |Oj4l0GxFU) (:text |nil?)
                      |b $ %{} :Leaf (:at 1657820628160) (:by |Oj4l0GxFU) (:text |build-errors)
                  |h $ %{} :Expr (:at 1657820628160) (:by |Oj4l0GxFU)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1657820628160) (:by |Oj4l0GxFU) (:text |do)
                      |b $ %{} :Expr (:at 1657820628160) (:by |Oj4l0GxFU)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1657820628160) (:by |Oj4l0GxFU) (:text |remove-watch)
                          |b $ %{} :Leaf (:at 1657820628160) (:by |Oj4l0GxFU) (:text |*reel)
                          |h $ %{} :Leaf (:at 1657820628160) (:by |Oj4l0GxFU) (:text |:changes)
                      |h $ %{} :Expr (:at 1657820628160) (:by |Oj4l0GxFU)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1657820628160) (:by |Oj4l0GxFU) (:text |clear-cache!)
                      |l $ %{} :Expr (:at 1657820628160) (:by |Oj4l0GxFU)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1657820628160) (:by |Oj4l0GxFU) (:text |add-watch)
                          |b $ %{} :Leaf (:at 1657820628160) (:by |Oj4l0GxFU) (:text |*reel)
                          |h $ %{} :Leaf (:at 1657820628160) (:by |Oj4l0GxFU) (:text |:changes)
                          |l $ %{} :Expr (:at 1657820628160) (:by |Oj4l0GxFU)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1657820628160) (:by |Oj4l0GxFU) (:text |fn)
                              |b $ %{} :Expr (:at 1657820628160) (:by |Oj4l0GxFU)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1657820628160) (:by |Oj4l0GxFU) (:text |reel)
                                  |b $ %{} :Leaf (:at 1657820628160) (:by |Oj4l0GxFU) (:text |prev)
                              |h $ %{} :Expr (:at 1657820628160) (:by |Oj4l0GxFU)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1657820628160) (:by |Oj4l0GxFU) (:text |render-app!)
                      |o $ %{} :Expr (:at 1657820628160) (:by |Oj4l0GxFU)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1657820628160) (:by |Oj4l0GxFU) (:text |reset!)
                          |b $ %{} :Leaf (:at 1657820628160) (:by |Oj4l0GxFU) (:text |*reel)
                          |h $ %{} :Expr (:at 1657820628160) (:by |Oj4l0GxFU)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1657820628160) (:by |Oj4l0GxFU) (:text |refresh-reel)
                              |b $ %{} :Leaf (:at 1657820628160) (:by |Oj4l0GxFU) (:text |@*reel)
                              |h $ %{} :Leaf (:at 1657820628160) (:by |Oj4l0GxFU) (:text |schema/store)
                              |l $ %{} :Leaf (:at 1657820628160) (:by |Oj4l0GxFU) (:text |updater)
                      |q $ %{} :Expr (:at 1657820628160) (:by |Oj4l0GxFU)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1657820628160) (:by |Oj4l0GxFU) (:text |hud!)
                          |b $ %{} :Leaf (:at 1657820628160) (:by |Oj4l0GxFU) (:text "|\"ok~")
                          |h $ %{} :Leaf (:at 1657820628160) (:by |Oj4l0GxFU) (:text "|\"Ok")
                  |l $ %{} :Expr (:at 1657820628160) (:by |Oj4l0GxFU)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1657820628160) (:by |Oj4l0GxFU) (:text |hud!)
                      |b $ %{} :Leaf (:at 1657820628160) (:by |Oj4l0GxFU) (:text "|\"error")
                      |h $ %{} :Leaf (:at 1657820628160) (:by |Oj4l0GxFU) (:text |build-errors)
        |render-app! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1507357346880) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |render-app!)
              |r $ %{} :Expr (:at 1507357346880) (:by nil)
                :data $ {}
              |v $ %{} :Expr (:at 1507357346880) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1657820672919) (:by |Oj4l0GxFU) (:text |render!)
                  |b $ %{} :Leaf (:at 1507358657404) (:by |root) (:text |mount-target)
                  |j $ %{} :Expr (:at 1507357346880) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |comp-container)
                      |j $ %{} :Leaf (:at 1507365943449) (:by |root) (:text |@*reel)
                  |v $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |dispatch!)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1507357346880) (:by nil)
          :data $ {}
            |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |reel.app.main)
            |r $ %{} :Expr (:at 1507357346880) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:require)
                |j $ %{} :Expr (:at 1507357346880) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |respo.core)
                    |r $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1507357346880) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |render!)
                        |r $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |clear-cache!)
                |r $ %{} :Expr (:at 1507357346880) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1624006745201) (:by |Oj4l0GxFU) (:text |reel.app.comp.container)
                    |r $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1507357346880) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |comp-container)
                |y $ %{} :Expr (:at 1507357346880) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1507367745652) (:by |root) (:text |reel.core)
                    |r $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1507357346880) (:by nil)
                      :data $ {}
                        |r $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |reel-updater)
                        |yj $ %{} :Leaf (:at 1507458281132) (:by |root) (:text |refresh-reel)
                |y5 $ %{} :Expr (:at 1518143604727) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1518143607809) (:by |root) (:text |reel.util)
                    |r $ %{} :Leaf (:at 1518143608588) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1518143608810) (:by |root)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1518143610079) (:by |root) (:text |listen-devtools!)
                |yD $ %{} :Expr (:at 1507366341139) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1507366344162) (:by |root) (:text |reel.schema)
                    |r $ %{} :Leaf (:at 1507366345580) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1507366347238) (:by |root) (:text |schema)
                |yT $ %{} :Expr (:at 1507357346880) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1624006762929) (:by |Oj4l0GxFU) (:text |reel.app.updater)
                    |r $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1507357346880) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |updater)
                |z $ %{} :Expr (:at 1657820639826) (:by |Oj4l0GxFU)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1657820639826) (:by |Oj4l0GxFU) (:text "|\"./calcit.build-errors")
                    |b $ %{} :Leaf (:at 1657820639826) (:by |Oj4l0GxFU) (:text |:default)
                    |h $ %{} :Leaf (:at 1657820639826) (:by |Oj4l0GxFU) (:text |build-errors)
                |zD $ %{} :Expr (:at 1657820644030) (:by |Oj4l0GxFU)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1657820644030) (:by |Oj4l0GxFU) (:text "|\"bottom-tip")
                    |b $ %{} :Leaf (:at 1657820644030) (:by |Oj4l0GxFU) (:text |:default)
                    |h $ %{} :Leaf (:at 1657820644030) (:by |Oj4l0GxFU) (:text |hud!)
    |reel.app.updater $ %{} :FileEntry
      :defs $ {}
        |updater $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1507357346880) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |updater)
              |r $ %{} :Expr (:at 1507357346880) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |store)
                  |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |op)
                  |v $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |op-id)
                  |x $ %{} :Leaf (:at 1518146071125) (:by |root) (:text |op-time)
              |v $ %{} :Expr (:at 1507357346880) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1687780140797) (:by |Oj4l0GxFU) (:text |tag-match)
                  |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |op)
                  |r $ %{} :Expr (:at 1507357346880) (:by nil)
                    :data $ {}
                      |T $ %{} :Expr (:at 1687780147852) (:by |Oj4l0GxFU)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1687780601468) (:by |Oj4l0GxFU) (:text |:states)
                          |b $ %{} :Leaf (:at 1687780152259) (:by |Oj4l0GxFU) (:text |cursor)
                          |h $ %{} :Leaf (:at 1687780152470) (:by |Oj4l0GxFU) (:text |s)
                      |b $ %{} :Expr (:at 1590304401417) (:by |Oj4l0GxFU)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1590304402874) (:by |Oj4l0GxFU) (:text |update-states)
                          |j $ %{} :Leaf (:at 1590304403982) (:by |Oj4l0GxFU) (:text |store)
                          |r $ %{} :Leaf (:at 1687780155402) (:by |Oj4l0GxFU) (:text |cursor)
                          |t $ %{} :Leaf (:at 1687780155874) (:by |Oj4l0GxFU) (:text |s)
                  |v $ %{} :Expr (:at 1507357346880) (:by nil)
                    :data $ {}
                      |T $ %{} :Expr (:at 1687780160040) (:by |Oj4l0GxFU)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:task/add)
                          |b $ %{} :Leaf (:at 1687780161313) (:by |Oj4l0GxFU) (:text |text)
                      |j $ %{} :Expr (:at 1507357346880) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |update)
                          |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |store)
                          |r $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:tasks)
                          |v $ %{} :Expr (:at 1507357346880) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |fn)
                              |j $ %{} :Expr (:at 1507357346880) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |tasks)
                              |r $ %{} :Expr (:at 1507357346880) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1610611880811) (:by |Oj4l0GxFU) (:text |prepend)
                                  |n $ %{} :Leaf (:at 1507458407060) (:by |root) (:text |tasks)
                                  |t $ %{} :Expr (:at 1610611881848) (:by |Oj4l0GxFU)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1610611881848) (:by |Oj4l0GxFU) (:text |{})
                                      |j $ %{} :Expr (:at 1610611881848) (:by |Oj4l0GxFU)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1610611881848) (:by |Oj4l0GxFU) (:text |:id)
                                          |j $ %{} :Leaf (:at 1610611881848) (:by |Oj4l0GxFU) (:text |op-id)
                                      |r $ %{} :Expr (:at 1610611881848) (:by |Oj4l0GxFU)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1610611881848) (:by |Oj4l0GxFU) (:text |:done?)
                                          |j $ %{} :Leaf (:at 1610611881848) (:by |Oj4l0GxFU) (:text |false)
                                      |v $ %{} :Expr (:at 1610611881848) (:by |Oj4l0GxFU)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1610611881848) (:by |Oj4l0GxFU) (:text |:text)
                                          |j $ %{} :Leaf (:at 1687780163232) (:by |Oj4l0GxFU) (:text |text)
                  |x $ %{} :Expr (:at 1507357346880) (:by nil)
                    :data $ {}
                      |T $ %{} :Expr (:at 1687780166812) (:by |Oj4l0GxFU)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:task/remove)
                          |b $ %{} :Leaf (:at 1687780167915) (:by |Oj4l0GxFU) (:text |id)
                      |j $ %{} :Expr (:at 1507357346880) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |update)
                          |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |store)
                          |r $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:tasks)
                          |v $ %{} :Expr (:at 1507357346880) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |fn)
                              |j $ %{} :Expr (:at 1507357346880) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |tasks)
                              |r $ %{} :Expr (:at 1507357346880) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |filter)
                                  |b $ %{} :Leaf (:at 1619600123710) (:by |Oj4l0GxFU) (:text |tasks)
                                  |j $ %{} :Expr (:at 1507357346880) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |fn)
                                      |j $ %{} :Expr (:at 1507357346880) (:by nil)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |task)
                                      |r $ %{} :Expr (:at 1507357346880) (:by nil)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1610611913512) (:by |Oj4l0GxFU) (:text |/=)
                                          |j $ %{} :Expr (:at 1507357346880) (:by nil)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:id)
                                              |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |task)
                                          |r $ %{} :Leaf (:at 1687780170477) (:by |Oj4l0GxFU) (:text |id)
                  |y $ %{} :Expr (:at 1507357346880) (:by nil)
                    :data $ {}
                      |T $ %{} :Expr (:at 1687780172188) (:by |Oj4l0GxFU)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1507367439628) (:by |root) (:text |:task/toggle)
                          |b $ %{} :Leaf (:at 1687780172627) (:by |Oj4l0GxFU) (:text |id)
                      |j $ %{} :Expr (:at 1507357346880) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |update)
                          |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |store)
                          |r $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:tasks)
                          |v $ %{} :Expr (:at 1507357346880) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |fn)
                              |j $ %{} :Expr (:at 1507357346880) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |tasks)
                              |r $ %{} :Expr (:at 1507357346880) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |map)
                                  |b $ %{} :Leaf (:at 1619600147624) (:by |Oj4l0GxFU) (:text |tasks)
                                  |j $ %{} :Expr (:at 1507357346880) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |fn)
                                      |j $ %{} :Expr (:at 1507357346880) (:by nil)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |task)
                                      |r $ %{} :Expr (:at 1507357346880) (:by nil)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |if)
                                          |j $ %{} :Expr (:at 1507357346880) (:by nil)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |=)
                                              |j $ %{} :Expr (:at 1507357346880) (:by nil)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:id)
                                                  |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |task)
                                              |r $ %{} :Leaf (:at 1687780174711) (:by |Oj4l0GxFU) (:text |id)
                                          |r $ %{} :Expr (:at 1507357346880) (:by nil)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |update)
                                              |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |task)
                                              |r $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:done?)
                                              |v $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |not)
                                          |v $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |task)
                  |yT $ %{} :Expr (:at 1507357346880) (:by nil)
                    :data $ {}
                      |T $ %{} :Expr (:at 1687780181465) (:by |Oj4l0GxFU)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1507367270198) (:by |root) (:text |:task/edit)
                          |b $ %{} :Leaf (:at 1687780183499) (:by |Oj4l0GxFU) (:text |task-id)
                          |h $ %{} :Leaf (:at 1687780184816) (:by |Oj4l0GxFU) (:text |text)
                      |j $ %{} :Expr (:at 1507357346880) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |update)
                          |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |store)
                          |r $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:tasks)
                          |v $ %{} :Expr (:at 1507357346880) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |fn)
                              |j $ %{} :Expr (:at 1507357346880) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |tasks)
                              |r $ %{} :Expr (:at 1507357346880) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |map)
                                  |b $ %{} :Leaf (:at 1619600169601) (:by |Oj4l0GxFU) (:text |tasks)
                                  |j $ %{} :Expr (:at 1507357346880) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |fn)
                                      |j $ %{} :Expr (:at 1507357346880) (:by nil)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |task)
                                      |r $ %{} :Expr (:at 1507357346880) (:by nil)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |if)
                                          |j $ %{} :Expr (:at 1507357346880) (:by nil)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |=)
                                              |j $ %{} :Expr (:at 1507357346880) (:by nil)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:id)
                                                  |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |task)
                                              |r $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |task-id)
                                          |r $ %{} :Expr (:at 1507357346880) (:by nil)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |assoc)
                                              |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |task)
                                              |r $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:text)
                                              |v $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |text)
                                          |v $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |task)
                  |z $ %{} :Expr (:at 1687780145230) (:by |Oj4l0GxFU)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1687780145685) (:by |Oj4l0GxFU) (:text |_)
                      |T $ %{} :Expr (:at 1687780143973) (:by |Oj4l0GxFU)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1687780143973) (:by |Oj4l0GxFU) (:text |do)
                          |b $ %{} :Expr (:at 1687780143973) (:by |Oj4l0GxFU)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1687780143973) (:by |Oj4l0GxFU) (:text |js/console.log)
                              |b $ %{} :Leaf (:at 1687780463166) (:by |Oj4l0GxFU) (:text "|\"Unknown op")
                              |h $ %{} :Leaf (:at 1687780143973) (:by |Oj4l0GxFU) (:text |op)
                          |h $ %{} :Leaf (:at 1687780143973) (:by |Oj4l0GxFU) (:text |store)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1507357346880) (:by nil)
          :data $ {}
            |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |reel.app.updater)
            |r $ %{} :Expr (:at 1590304389453) (:by |Oj4l0GxFU)
              :data $ {}
                |T $ %{} :Leaf (:at 1590304390289) (:by |Oj4l0GxFU) (:text |:require)
                |j $ %{} :Expr (:at 1590304390441) (:by |Oj4l0GxFU)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1590304391569) (:by |Oj4l0GxFU) (:text |[])
                    |j $ %{} :Leaf (:at 1590304395114) (:by |Oj4l0GxFU) (:text |respo.cursor)
                    |r $ %{} :Leaf (:at 1590304396018) (:by |Oj4l0GxFU) (:text |:refer)
                    |v $ %{} :Expr (:at 1590304396155) (:by |Oj4l0GxFU)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1590304396413) (:by |Oj4l0GxFU) (:text |[])
                        |j $ %{} :Leaf (:at 1590304397873) (:by |Oj4l0GxFU) (:text |update-states)
    |reel.comp.records $ %{} :FileEntry
      :defs $ {}
        |comp-records $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1507357346880) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1507358427417) (:by |root) (:text |defcomp)
              |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |comp-records)
              |n $ %{} :Expr (:at 1507357346880) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |records)
                  |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |pointer)
              |r $ %{} :Expr (:at 1507357346880) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |div)
                  |j $ %{} :Expr (:at 1507357346880) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |{})
                      |b $ %{} :Expr (:at 1657820528963) (:by |Oj4l0GxFU)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1657820596616) (:by |Oj4l0GxFU) (:text |:class-name)
                          |b $ %{} :Expr (:at 1657820798376) (:by |Oj4l0GxFU)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1657820800032) (:by |Oj4l0GxFU) (:text |str-spaced)
                              |T $ %{} :Leaf (:at 1657820534505) (:by |Oj4l0GxFU) (:text |css/font-code)
                              |b $ %{} :Leaf (:at 1657820802800) (:by |Oj4l0GxFU) (:text |css-records)
                  |r $ %{} :Expr (:at 1508566559298) (:by |root)
                    :data $ {}
                      |5 $ %{} :Leaf (:at 1509190203048) (:by |root) (:text |list->)
                      |L $ %{} :Expr (:at 1508566560350) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1508566651466) (:by |root) (:text |{})
                      |T $ %{} :Expr (:at 1507357346880) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1619600094090) (:by |Oj4l0GxFU) (:text |->)
                          |j $ %{} :Expr (:at 1610611771947) (:by |Oj4l0GxFU)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1610611773672) (:by |Oj4l0GxFU) (:text |prepend)
                              |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |records)
                              |j $ %{} :Expr (:at 1610611776359) (:by |Oj4l0GxFU)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1610611776359) (:by |Oj4l0GxFU) (:text |[])
                                  |j $ %{} :Leaf (:at 1610611776359) (:by |Oj4l0GxFU) (:text |:base)
                                  |r $ %{} :Leaf (:at 1610611776359) (:by |Oj4l0GxFU) (:text |nil)
                                  |v $ %{} :Leaf (:at 1610611776359) (:by |Oj4l0GxFU) (:text |:base)
                          |v $ %{} :Expr (:at 1507357346880) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |map-indexed)
                              |j $ %{} :Expr (:at 1507357346880) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |fn)
                                  |j $ %{} :Expr (:at 1507357346880) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |idx)
                                      |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |record)
                                  |r $ %{} :Expr (:at 1507357346880) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |[])
                                      |j $ %{} :Expr (:at 1507357346880) (:by nil)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |last)
                                          |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |record)
                                      |r $ %{} :Expr (:at 1507357346880) (:by nil)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |div)
                                          |j $ %{} :Expr (:at 1507357346880) (:by nil)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |{})
                                              |b $ %{} :Expr (:at 1508566544302) (:by |root)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1508566545840) (:by |root) (:text |:class-name)
                                                  |j $ %{} :Leaf (:at 1657820856717) (:by |Oj4l0GxFU) (:text |css-record)
                                              |j $ %{} :Expr (:at 1507357346880) (:by nil)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:style)
                                                  |j $ %{} :Expr (:at 1507357346880) (:by nil)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |if)
                                                      |j $ %{} :Expr (:at 1507357346880) (:by nil)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |=)
                                                          |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |pointer)
                                                          |r $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |idx)
                                                      |r $ %{} :Expr (:at 1507357346880) (:by nil)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |{})
                                                          |j $ %{} :Expr (:at 1507357346880) (:by nil)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:background-color)
                                                              |j $ %{} :Expr (:at 1558450931392) (:by |Oj4l0GxFU)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1558450932264) (:by |Oj4l0GxFU) (:text |hsl)
                                                                  |j $ %{} :Leaf (:at 1558450936231) (:by |Oj4l0GxFU) (:text |220)
                                                                  |r $ %{} :Leaf (:at 1558450937100) (:by |Oj4l0GxFU) (:text |100)
                                                                  |v $ %{} :Leaf (:at 1558450938758) (:by |Oj4l0GxFU) (:text |76)
                                                          |r $ %{} :Expr (:at 1507357346880) (:by nil)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:color)
                                                              |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:white)
                                              |r $ %{} :Expr (:at 1507357346880) (:by nil)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1515690329205) (:by |root) (:text |:on-click)
                                                  |j $ %{} :Expr (:at 1507357346880) (:by nil)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |on-recall)
                                                      |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |idx)
                                          |r $ %{} :Expr (:at 1507357346880) (:by nil)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1507358962852) (:by |root) (:text |<>)
                                              |j $ %{} :Expr (:at 1507456120844) (:by |root)
                                                :data $ {}
                                                  |D $ %{} :Leaf (:at 1693243786581) (:by |Oj4l0GxFU) (:text |to-lispy-string)
                                                  |T $ %{} :Expr (:at 1507357346880) (:by nil)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |first)
                                                      |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |record)
        |css-record $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1507357346880) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1657820831550) (:by |Oj4l0GxFU) (:text |defstyle)
              |j $ %{} :Leaf (:at 1657820830046) (:by |Oj4l0GxFU) (:text |css-record)
              |r $ %{} :Expr (:at 1657820832481) (:by |Oj4l0GxFU)
                :data $ {}
                  |D $ %{} :Leaf (:at 1657820832994) (:by |Oj4l0GxFU) (:text |{})
                  |T $ %{} :Expr (:at 1657820833438) (:by |Oj4l0GxFU)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1657820835229) (:by |Oj4l0GxFU) (:text "|\"$0")
                      |T $ %{} :Expr (:at 1507357346880) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |{})
                          |j $ %{} :Expr (:at 1507357346880) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:cursor)
                              |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:pointer)
                          |r $ %{} :Expr (:at 1507357346880) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:padding)
                              |j $ %{} :Leaf (:at 1593103528009) (:by |Oj4l0GxFU) (:text "||0 4px")
                          |v $ %{} :Expr (:at 1507461148686) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1507461158442) (:by |root) (:text |:white-space)
                              |j $ %{} :Leaf (:at 1507461152487) (:by |root) (:text |:nowrap)
                          |x $ %{} :Expr (:at 1508565788091) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1508565792856) (:by |root) (:text |:cursor)
                              |j $ %{} :Leaf (:at 1508565793810) (:by |root) (:text |:pointer)
                          |y $ %{} :Expr (:at 1508651351605) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1508651353776) (:by |root) (:text |:overflow)
                              |j $ %{} :Leaf (:at 1508651355486) (:by |root) (:text |:hidden)
                          |yT $ %{} :Expr (:at 1508651379906) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1508651383221) (:by |root) (:text |:text-overflow)
                              |j $ %{} :Leaf (:at 1508651385803) (:by |root) (:text |:ellipsis)
                  |b $ %{} :Expr (:at 1657820836842) (:by |Oj4l0GxFU)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1657820878876) (:by |Oj4l0GxFU) (:text "|\"$0:hover")
                      |b $ %{} :Expr (:at 1657820840774) (:by |Oj4l0GxFU)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1657820841270) (:by |Oj4l0GxFU) (:text |{})
                          |T $ %{} :Expr (:at 1657820840064) (:by |Oj4l0GxFU)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1657820842873) (:by |Oj4l0GxFU) (:text |:background-color)
                              |b $ %{} :Leaf (:at 1657820844095) (:by |Oj4l0GxFU) (:text "|\"#eee")
        |css-records $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1507357346880) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1657820789555) (:by |Oj4l0GxFU) (:text |defstyle)
              |j $ %{} :Leaf (:at 1657820787682) (:by |Oj4l0GxFU) (:text |css-records)
              |r $ %{} :Expr (:at 1657820790220) (:by |Oj4l0GxFU)
                :data $ {}
                  |D $ %{} :Leaf (:at 1657820790755) (:by |Oj4l0GxFU) (:text |{})
                  |T $ %{} :Expr (:at 1657820791678) (:by |Oj4l0GxFU)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1688398732249) (:by |Oj4l0GxFU) (:text "|\"&")
                      |T $ %{} :Expr (:at 1507357346880) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |{})
                          |j $ %{} :Expr (:at 1507357346880) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:overflow)
                              |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:auto)
                          |r $ %{} :Expr (:at 1507357346880) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:flex-shrink)
                              |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |0)
                          |v $ %{} :Expr (:at 1507357346880) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:padding-bottom)
                              |j $ %{} :Leaf (:at 1508651260579) (:by |root) (:text |120)
                          |x $ %{} :Expr (:at 1507357346880) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:padding-top)
                              |j $ %{} :Leaf (:at 1508651262202) (:by |root) (:text |16)
                          |y $ %{} :Expr (:at 1507460459330) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1507460461048) (:by |root) (:text |:width)
                              |j $ %{} :Leaf (:at 1688398551867) (:by |Oj4l0GxFU) (:text |320)
                          |yD $ %{} :Expr (:at 1508566529392) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1508566531529) (:by |root) (:text |:font-size)
                              |j $ %{} :Leaf (:at 1508566531989) (:by |root) (:text |12)
        |on-recall $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1507357346880) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |on-recall)
              |x $ %{} :Expr (:at 1507357346880) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |idx)
              |y $ %{} :Expr (:at 1507357346880) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |fn)
                  |j $ %{} :Expr (:at 1507357346880) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |e)
                      |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |dispatch!)
                  |r $ %{} :Expr (:at 1507357346880) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |dispatch!)
                      |j $ %{} :Expr (:at 1688398199289) (:by |Oj4l0GxFU)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1688398200049) (:by |Oj4l0GxFU) (:text |::)
                          |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:reel/recall)
                          |b $ %{} :Leaf (:at 1688398202134) (:by |Oj4l0GxFU) (:text |idx)
        |style-data $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1507357346880) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |def)
              |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |style-data)
              |r $ %{} :Expr (:at 1507357346880) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |{})
                  |j $ %{} :Expr (:at 1507357346880) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:max-width)
                      |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |100)
                  |r $ %{} :Expr (:at 1507357346880) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:overflow)
                      |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:hidden)
                  |v $ %{} :Expr (:at 1507357346880) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:text-overflow)
                      |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:ellipsis)
                  |x $ %{} :Expr (:at 1507357346880) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:white-space)
                      |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:nowrap)
                  |y $ %{} :Expr (:at 1507357346880) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:display)
                      |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:inline-block)
                  |yT $ %{} :Expr (:at 1507357346880) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:vertical-align)
                      |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:middle)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1507357346880) (:by nil)
          :data $ {}
            |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |reel.comp.records)
            |r $ %{} :Expr (:at 1507357346880) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:require)
                |j $ %{} :Expr (:at 1507358463579) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1540918182373) (:by |root) (:text |respo.core)
                    |r $ %{} :Leaf (:at 1507358468079) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1507358468270) (:by |root)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1507358471810) (:by |root) (:text |defcomp)
                        |n $ %{} :Leaf (:at 1507358473828) (:by |root) (:text |<>)
                        |r $ %{} :Leaf (:at 1507358472588) (:by |root) (:text |div)
                        |v $ %{} :Leaf (:at 1507358475239) (:by |root) (:text |span)
                        |w $ %{} :Leaf (:at 1610609701571) (:by |Oj4l0GxFU) (:text |style)
                        |y $ %{} :Leaf (:at 1509190207710) (:by |root) (:text |list->)
                |n $ %{} :Expr (:at 1657820542370) (:by |Oj4l0GxFU)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1657820545249) (:by |Oj4l0GxFU) (:text |respo.css)
                    |b $ %{} :Leaf (:at 1657820547702) (:by |Oj4l0GxFU) (:text |:refer)
                    |h $ %{} :Expr (:at 1657820547919) (:by |Oj4l0GxFU)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1657820550447) (:by |Oj4l0GxFU) (:text |defstyle)
                |r $ %{} :Expr (:at 1507357346880) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1516431425212) (:by |root) (:text |respo-ui.core)
                    |r $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |ui)
                |u $ %{} :Expr (:at 1657820536808) (:by |Oj4l0GxFU)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1657820538585) (:by |Oj4l0GxFU) (:text |respo-ui.css)
                    |b $ %{} :Leaf (:at 1657820539367) (:by |Oj4l0GxFU) (:text |:as)
                    |h $ %{} :Leaf (:at 1657820540002) (:by |Oj4l0GxFU) (:text |css)
                |y $ %{} :Expr (:at 1507357346880) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |respo.comp.space)
                    |r $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1507357346880) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1507358486385) (:by |root) (:text |=<)
                |yT $ %{} :Expr (:at 1508566743138) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1508566753567) (:by |root) (:text |reel.style)
                    |r $ %{} :Leaf (:at 1508566753945) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1612762510281) (:by |Oj4l0GxFU) (:text |reel-style)
                |yj $ %{} :Expr (:at 1558450992403) (:by |Oj4l0GxFU)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1610609583606) (:by |Oj4l0GxFU) (:text |respo.util.format)
                    |r $ %{} :Leaf (:at 1558450996743) (:by |Oj4l0GxFU) (:text |:refer)
                    |v $ %{} :Expr (:at 1558450997776) (:by |Oj4l0GxFU)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1558450998493) (:by |Oj4l0GxFU) (:text |hsl)
    |reel.comp.reel $ %{} :FileEntry
      :defs $ {}
        |comp-reel $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1507357346880) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1507358441536) (:by |root) (:text |defcomp)
              |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |comp-reel)
              |n $ %{} :Expr (:at 1507357346880) (:by nil)
                :data $ {}
                  |D $ %{} :Leaf (:at 1508566119721) (:by |root) (:text |states)
                  |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |reel)
                  |r $ %{} :Leaf (:at 1507454243195) (:by |root) (:text |user-styles)
              |r $ %{} :Expr (:at 1507357346880) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |if)
                  |j $ %{} :Expr (:at 1507357346880) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:display?)
                      |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |reel)
                  |r $ %{} :Expr (:at 1507357346880) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |div)
                      |j $ %{} :Expr (:at 1507357346880) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |{})
                          |j $ %{} :Expr (:at 1507357346880) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1657820151060) (:by |Oj4l0GxFU) (:text |:class-name)
                              |j $ %{} :Expr (:at 1507357346880) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1657820160301) (:by |Oj4l0GxFU) (:text |str-spaced)
                                  |b $ %{} :Leaf (:at 1657820161958) (:by |Oj4l0GxFU) (:text |css/flex)
                                  |j $ %{} :Leaf (:at 1657820163783) (:by |Oj4l0GxFU) (:text |css/column)
                                  |r $ %{} :Leaf (:at 1657820733934) (:by |Oj4l0GxFU) (:text |css-reel)
                          |n $ %{} :Expr (:at 1657820168986) (:by |Oj4l0GxFU)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1657820170414) (:by |Oj4l0GxFU) (:text |:style)
                              |b $ %{} :Leaf (:at 1657820170877) (:by |Oj4l0GxFU) (:text |user-styles)
                      |n $ %{} :Expr (:at 1507357346880) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |div)
                          |j $ %{} :Expr (:at 1507357346880) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |{})
                              |j $ %{} :Expr (:at 1593102594654) (:by |Oj4l0GxFU)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1593102596058) (:by |Oj4l0GxFU) (:text |:style)
                                  |j $ %{} :Expr (:at 1593102596296) (:by |Oj4l0GxFU)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1593102596637) (:by |Oj4l0GxFU) (:text |{})
                                      |j $ %{} :Expr (:at 1593102596897) (:by |Oj4l0GxFU)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1593102601925) (:by |Oj4l0GxFU) (:text |:border-bottom)
                                          |j $ %{} :Expr (:at 1593102602374) (:by |Oj4l0GxFU)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1593102602933) (:by |Oj4l0GxFU) (:text |str)
                                              |j $ %{} :Leaf (:at 1593102605368) (:by |Oj4l0GxFU) (:text "|\"1px solid ")
                                              |r $ %{} :Expr (:at 1593102606014) (:by |Oj4l0GxFU)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1593102606545) (:by |Oj4l0GxFU) (:text |hsl)
                                                  |j $ %{} :Leaf (:at 1593102607018) (:by |Oj4l0GxFU) (:text |0)
                                                  |r $ %{} :Leaf (:at 1593102607335) (:by |Oj4l0GxFU) (:text |0)
                                                  |v $ %{} :Leaf (:at 1593102607722) (:by |Oj4l0GxFU) (:text |90)
                          |v1 $ %{} :Expr (:at 1508642439874) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1508642404409) (:by |root) (:text |render-button)
                              |j $ %{} :Leaf (:at 1508642794463) (:by |root) (:text ||Merge)
                              |r $ %{} :Expr (:at 1590304625936) (:by |Oj4l0GxFU)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1590304632316) (:by |Oj4l0GxFU) (:text |fn)
                                  |r $ %{} :Expr (:at 1590304625936) (:by |Oj4l0GxFU)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1590304625936) (:by |Oj4l0GxFU) (:text |e)
                                      |j $ %{} :Leaf (:at 1590304628641) (:by |Oj4l0GxFU) (:text |d!)
                                  |v $ %{} :Expr (:at 1590304625936) (:by |Oj4l0GxFU)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1590304629474) (:by |Oj4l0GxFU) (:text |d!)
                                      |j $ %{} :Expr (:at 1688398276856) (:by |Oj4l0GxFU)
                                        :data $ {}
                                          |D $ %{} :Leaf (:at 1688398277790) (:by |Oj4l0GxFU) (:text |::)
                                          |T $ %{} :Leaf (:at 1590304625936) (:by |Oj4l0GxFU) (:text |:reel/merge)
                              |v $ %{} :Leaf (:at 1508644177480) (:by |root) (:text |true)
                          |v5 $ %{} :Expr (:at 1508642439874) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1508642404409) (:by |root) (:text |render-button)
                              |j $ %{} :Leaf (:at 1508642441733) (:by |root) (:text ||Reset)
                              |r $ %{} :Expr (:at 1590304615632) (:by |Oj4l0GxFU)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1590304617376) (:by |Oj4l0GxFU) (:text |fn)
                                  |r $ %{} :Expr (:at 1590304615632) (:by |Oj4l0GxFU)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1590304615632) (:by |Oj4l0GxFU) (:text |e)
                                      |j $ %{} :Leaf (:at 1590304620071) (:by |Oj4l0GxFU) (:text |d!)
                                  |v $ %{} :Expr (:at 1590304615632) (:by |Oj4l0GxFU)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1590304620824) (:by |Oj4l0GxFU) (:text |d!)
                                      |j $ %{} :Expr (:at 1688398281010) (:by |Oj4l0GxFU)
                                        :data $ {}
                                          |D $ %{} :Leaf (:at 1688398282156) (:by |Oj4l0GxFU) (:text |::)
                                          |T $ %{} :Leaf (:at 1590304615632) (:by |Oj4l0GxFU) (:text |:reel/reset)
                              |v $ %{} :Leaf (:at 1508644179625) (:by |root) (:text |true)
                          |x5 $ %{} :Expr (:at 1508642439874) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1508642404409) (:by |root) (:text |render-button)
                              |j $ %{} :Leaf (:at 1508643388541) (:by |root) (:text ||Step)
                              |r $ %{} :Expr (:at 1590304605919) (:by |Oj4l0GxFU)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1590304607880) (:by |Oj4l0GxFU) (:text |fn)
                                  |r $ %{} :Expr (:at 1590304605919) (:by |Oj4l0GxFU)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1590304605919) (:by |Oj4l0GxFU) (:text |e)
                                      |j $ %{} :Leaf (:at 1590304605919) (:by |Oj4l0GxFU) (:text |d!)
                                  |v $ %{} :Expr (:at 1590304605919) (:by |Oj4l0GxFU)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1590304605919) (:by |Oj4l0GxFU) (:text |d!)
                                      |j $ %{} :Expr (:at 1688398286562) (:by |Oj4l0GxFU)
                                        :data $ {}
                                          |D $ %{} :Leaf (:at 1688398287194) (:by |Oj4l0GxFU) (:text |::)
                                          |T $ %{} :Leaf (:at 1590304605919) (:by |Oj4l0GxFU) (:text |:reel/step)
                              |v $ %{} :Expr (:at 1508643892933) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1508643894102) (:by |root) (:text |:stopped?)
                                  |j $ %{} :Leaf (:at 1508643895824) (:by |root) (:text |reel)
                          |xJ $ %{} :Expr (:at 1508642445431) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1508642447285) (:by |root) (:text |render-button)
                              |j $ %{} :Leaf (:at 1508642448866) (:by |root) (:text ||Run)
                              |r $ %{} :Expr (:at 1590304593215) (:by |Oj4l0GxFU)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1590304596023) (:by |Oj4l0GxFU) (:text |fn)
                                  |r $ %{} :Expr (:at 1590304593215) (:by |Oj4l0GxFU)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1590304593215) (:by |Oj4l0GxFU) (:text |e)
                                      |j $ %{} :Leaf (:at 1590304597320) (:by |Oj4l0GxFU) (:text |d!)
                                  |v $ %{} :Expr (:at 1590304593215) (:by |Oj4l0GxFU)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1590304598029) (:by |Oj4l0GxFU) (:text |d!)
                                      |j $ %{} :Expr (:at 1688398289414) (:by |Oj4l0GxFU)
                                        :data $ {}
                                          |D $ %{} :Leaf (:at 1688398290086) (:by |Oj4l0GxFU) (:text |::)
                                          |T $ %{} :Leaf (:at 1590304593215) (:by |Oj4l0GxFU) (:text |:reel/run)
                              |v $ %{} :Expr (:at 1508643892933) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1508643894102) (:by |root) (:text |:stopped?)
                                  |j $ %{} :Leaf (:at 1508643895824) (:by |root) (:text |reel)
                          |xX $ %{} :Expr (:at 1508642454936) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1508642457910) (:by |root) (:text |render-button)
                              |j $ %{} :Leaf (:at 1508642459249) (:by |root) (:text ||Close)
                              |r $ %{} :Expr (:at 1590304550646) (:by |Oj4l0GxFU)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1590304551954) (:by |Oj4l0GxFU) (:text |fn)
                                  |L $ %{} :Expr (:at 1590304552227) (:by |Oj4l0GxFU)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1590304552496) (:by |Oj4l0GxFU) (:text |e)
                                      |j $ %{} :Leaf (:at 1590304553206) (:by |Oj4l0GxFU) (:text |d!)
                                  |T $ %{} :Expr (:at 1590304549431) (:by |Oj4l0GxFU)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1590304555546) (:by |Oj4l0GxFU) (:text |d!)
                                      |j $ %{} :Expr (:at 1688398292466) (:by |Oj4l0GxFU)
                                        :data $ {}
                                          |D $ %{} :Leaf (:at 1688398293285) (:by |Oj4l0GxFU) (:text |::)
                                          |T $ %{} :Leaf (:at 1590304549431) (:by |Oj4l0GxFU) (:text |:reel/toggle)
                              |v $ %{} :Expr (:at 1508644172168) (:by |root)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1508644173126) (:by |root) (:text |not)
                                  |T $ %{} :Expr (:at 1508643892933) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1508643894102) (:by |root) (:text |:stopped?)
                                      |j $ %{} :Leaf (:at 1508643895824) (:by |root) (:text |reel)
                      |r $ %{} :Expr (:at 1508651184615) (:by |root)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1508651185349) (:by |root) (:text |div)
                          |L $ %{} :Expr (:at 1508651185690) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1508651186346) (:by |root) (:text |{})
                              |j $ %{} :Expr (:at 1508651209509) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1657820406171) (:by |Oj4l0GxFU) (:text |:class-name)
                                  |j $ %{} :Expr (:at 1590304467492) (:by |Oj4l0GxFU)
                                    :data $ {}
                                      |D $ %{} :Leaf (:at 1657820409161) (:by |Oj4l0GxFU) (:text |str-spaced)
                                      |L $ %{} :Leaf (:at 1657820411250) (:by |Oj4l0GxFU) (:text |css/expand)
                                      |T $ %{} :Leaf (:at 1657820413151) (:by |Oj4l0GxFU) (:text |css/row)
                          |T $ %{} :Expr (:at 1507357346880) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |comp-records)
                              |j $ %{} :Expr (:at 1507357346880) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:records)
                                  |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |reel)
                              |r $ %{} :Expr (:at 1507357346880) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:pointer)
                                  |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |reel)
                          |j $ %{} :Expr (:at 1507357346880) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |div)
                              |j $ %{} :Expr (:at 1507357346880) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |{})
                                  |b $ %{} :Expr (:at 1657820418590) (:by |Oj4l0GxFU)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1657820420458) (:by |Oj4l0GxFU) (:text |:class-name)
                                      |b $ %{} :Expr (:at 1657820421580) (:by |Oj4l0GxFU)
                                        :data $ {}
                                          |D $ %{} :Leaf (:at 1657820423297) (:by |Oj4l0GxFU) (:text |str-spaced)
                                          |T $ %{} :Leaf (:at 1657820426515) (:by |Oj4l0GxFU) (:text |css/column)
                                          |b $ %{} :Leaf (:at 1657820429961) (:by |Oj4l0GxFU) (:text |css/expand)
                                  |j $ %{} :Expr (:at 1507357346880) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:style)
                                      |j $ %{} :Expr (:at 1508569089017) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1508569089422) (:by |root) (:text |{})
                                          |j $ %{} :Expr (:at 1508569089678) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1508569092484) (:by |root) (:text |:overflow)
                                              |j $ %{} :Leaf (:at 1508569094082) (:by |root) (:text |:auto)
                                          |r $ %{} :Expr (:at 1518143953913) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1518143955189) (:by |root) (:text |:padding)
                                              |j $ %{} :Leaf (:at 1518143957823) (:by |root) (:text "||0 8px")
                                          |v $ %{} :Expr (:at 1593102616677) (:by |Oj4l0GxFU)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1593102619419) (:by |Oj4l0GxFU) (:text |:border-left)
                                              |j $ %{} :Expr (:at 1593102619708) (:by |Oj4l0GxFU)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1593102620532) (:by |Oj4l0GxFU) (:text |str)
                                                  |j $ %{} :Leaf (:at 1593102622937) (:by |Oj4l0GxFU) (:text "|\"1px solid ")
                                                  |r $ %{} :Expr (:at 1593102624897) (:by |Oj4l0GxFU)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1593102624624) (:by |Oj4l0GxFU) (:text |hsl)
                                                      |j $ %{} :Leaf (:at 1593102625580) (:by |Oj4l0GxFU) (:text |0)
                                                      |r $ %{} :Leaf (:at 1593102625984) (:by |Oj4l0GxFU) (:text |0)
                                                      |v $ %{} :Leaf (:at 1593318615769) (:by |Oj4l0GxFU) (:text |94)
                              |n $ %{} :Expr (:at 1508565337813) (:by |root)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1508565339869) (:by |root) (:text |let)
                                  |L $ %{} :Expr (:at 1508565340224) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Expr (:at 1508565340357) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1508565341489) (:by |root) (:text |records)
                                          |j $ %{} :Expr (:at 1508565341750) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1508565343854) (:by |root) (:text |:records)
                                              |j $ %{} :Leaf (:at 1508565344865) (:by |root) (:text |reel)
                                      |j $ %{} :Expr (:at 1508565345640) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1508565348389) (:by |root) (:text |pointer)
                                          |j $ %{} :Expr (:at 1508565348712) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1508565350592) (:by |root) (:text |:pointer)
                                              |j $ %{} :Leaf (:at 1508565351762) (:by |root) (:text |reel)
                                      |r $ %{} :Expr (:at 1593318444149) (:by |Oj4l0GxFU)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1593318444149) (:by |Oj4l0GxFU) (:text |record)
                                          |j $ %{} :Expr (:at 1593318444149) (:by |Oj4l0GxFU)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1593318444149) (:by |Oj4l0GxFU) (:text |if)
                                              |j $ %{} :Expr (:at 1593318444149) (:by |Oj4l0GxFU)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1593318444149) (:by |Oj4l0GxFU) (:text |:stopped?)
                                                  |j $ %{} :Leaf (:at 1593318444149) (:by |Oj4l0GxFU) (:text |reel)
                                              |r $ %{} :Expr (:at 1615567870151) (:by |Oj4l0GxFU)
                                                :data $ {}
                                                  |D $ %{} :Leaf (:at 1615567871095) (:by |Oj4l0GxFU) (:text |if)
                                                  |L $ %{} :Expr (:at 1615567871941) (:by |Oj4l0GxFU)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1615567896597) (:by |Oj4l0GxFU) (:text |>)
                                                      |j $ %{} :Leaf (:at 1615567879321) (:by |Oj4l0GxFU) (:text |pointer)
                                                      |r $ %{} :Leaf (:at 1615567897525) (:by |Oj4l0GxFU) (:text |0)
                                                  |T $ %{} :Expr (:at 1593318444149) (:by |Oj4l0GxFU)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1593318444149) (:by |Oj4l0GxFU) (:text |get)
                                                      |j $ %{} :Leaf (:at 1593318444149) (:by |Oj4l0GxFU) (:text |records)
                                                      |r $ %{} :Expr (:at 1593318444149) (:by |Oj4l0GxFU)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1593318444149) (:by |Oj4l0GxFU) (:text |dec)
                                                          |j $ %{} :Leaf (:at 1593318444149) (:by |Oj4l0GxFU) (:text |pointer)
                                                  |j $ %{} :Leaf (:at 1615567881011) (:by |Oj4l0GxFU) (:text |nil)
                                              |v $ %{} :Expr (:at 1593318444149) (:by |Oj4l0GxFU)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1593318444149) (:by |Oj4l0GxFU) (:text |last)
                                                  |j $ %{} :Leaf (:at 1593318444149) (:by |Oj4l0GxFU) (:text |records)
                                  |T $ %{} :Expr (:at 1593101555449) (:by |Oj4l0GxFU)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1593101555904) (:by |Oj4l0GxFU) (:text |if)
                                      |j $ %{} :Expr (:at 1593101556269) (:by |Oj4l0GxFU)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1593101557155) (:by |Oj4l0GxFU) (:text |some?)
                                          |j $ %{} :Leaf (:at 1593101558223) (:by |Oj4l0GxFU) (:text |record)
                                      |r $ %{} :Expr (:at 1593101606097) (:by |Oj4l0GxFU)
                                        :data $ {}
                                          |D $ %{} :Leaf (:at 1610609843987) (:by |Oj4l0GxFU) (:text |let[])
                                          |L $ %{} :Expr (:at 1593101608520) (:by |Oj4l0GxFU)
                                            :data $ {}
                                              |j $ %{} :Leaf (:at 1593101613234) (:by |Oj4l0GxFU) (:text |action)
                                              |r $ %{} :Leaf (:at 1593101615997) (:by |Oj4l0GxFU) (:text |op-data)
                                              |v $ %{} :Leaf (:at 1593101617631) (:by |Oj4l0GxFU) (:text |op-id)
                                              |x $ %{} :Leaf (:at 1593101619151) (:by |Oj4l0GxFU) (:text |op-time)
                                          |P $ %{} :Leaf (:at 1593101623431) (:by |Oj4l0GxFU) (:text |record)
                                          |T $ %{} :Expr (:at 1593103107877) (:by |Oj4l0GxFU)
                                            :data $ {}
                                              |D $ %{} :Leaf (:at 1593103108845) (:by |Oj4l0GxFU) (:text |div)
                                              |L $ %{} :Expr (:at 1593103109078) (:by |Oj4l0GxFU)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1593103109447) (:by |Oj4l0GxFU) (:text |{})
                                                  |b $ %{} :Expr (:at 1657820579229) (:by |Oj4l0GxFU)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1657820580671) (:by |Oj4l0GxFU) (:text |:class-name)
                                                      |b $ %{} :Expr (:at 1666024708062) (:by |Oj4l0GxFU)
                                                        :data $ {}
                                                          |D $ %{} :Leaf (:at 1666024711259) (:by |Oj4l0GxFU) (:text |str-spaced)
                                                          |T $ %{} :Leaf (:at 1657820582785) (:by |Oj4l0GxFU) (:text |css/font-code)
                                                          |b $ %{} :Leaf (:at 1666024715708) (:by |Oj4l0GxFU) (:text |css/column)
                                                  |j $ %{} :Expr (:at 1593318151491) (:by |Oj4l0GxFU)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1593318152239) (:by |Oj4l0GxFU) (:text |:style)
                                                      |j $ %{} :Expr (:at 1593318457480) (:by |Oj4l0GxFU)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1593318457480) (:by |Oj4l0GxFU) (:text |{})
                                                          |j $ %{} :Expr (:at 1593318457480) (:by |Oj4l0GxFU)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1593318457480) (:by |Oj4l0GxFU) (:text |:font-size)
                                                              |j $ %{} :Leaf (:at 1593318457480) (:by |Oj4l0GxFU) (:text |12)
                                              |T $ %{} :Expr (:at 1593318424275) (:by |Oj4l0GxFU)
                                                :data $ {}
                                                  |D $ %{} :Leaf (:at 1593318424969) (:by |Oj4l0GxFU) (:text |div)
                                                  |L $ %{} :Expr (:at 1593318425176) (:by |Oj4l0GxFU)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1593318425741) (:by |Oj4l0GxFU) (:text |{})
                                                      |b $ %{} :Expr (:at 1657820438251) (:by |Oj4l0GxFU)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1657820439981) (:by |Oj4l0GxFU) (:text |:class-name)
                                                          |b $ %{} :Leaf (:at 1657820442994) (:by |Oj4l0GxFU) (:text |css/row-parted)
                                                      |j $ %{} :Expr (:at 1593318426019) (:by |Oj4l0GxFU)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1593318431207) (:by |Oj4l0GxFU) (:text |:style)
                                                          |j $ %{} :Expr (:at 1593318562621) (:by |Oj4l0GxFU)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1593318563211) (:by |Oj4l0GxFU) (:text |{})
                                                              |j $ %{} :Expr (:at 1593318563444) (:by |Oj4l0GxFU)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1593318565085) (:by |Oj4l0GxFU) (:text |:border-bottom)
                                                                  |j $ %{} :Expr (:at 1593318565355) (:by |Oj4l0GxFU)
                                                                    :data $ {}
                                                                      |T $ %{} :Leaf (:at 1593318565869) (:by |Oj4l0GxFU) (:text |str)
                                                                      |j $ %{} :Leaf (:at 1593318572584) (:by |Oj4l0GxFU) (:text "|\"1px solid ")
                                                                      |r $ %{} :Expr (:at 1593318569105) (:by |Oj4l0GxFU)
                                                                        :data $ {}
                                                                          |T $ %{} :Leaf (:at 1593318569794) (:by |Oj4l0GxFU) (:text |hsl)
                                                                          |j $ %{} :Leaf (:at 1593318570584) (:by |Oj4l0GxFU) (:text |0)
                                                                          |r $ %{} :Leaf (:at 1593318570879) (:by |Oj4l0GxFU) (:text |0)
                                                                          |v $ %{} :Leaf (:at 1593318618567) (:by |Oj4l0GxFU) (:text |94)
                                                  |T $ %{} :Expr (:at 1593101558841) (:by |Oj4l0GxFU)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1593101560436) (:by |Oj4l0GxFU) (:text |div)
                                                      |j $ %{} :Expr (:at 1593101560661) (:by |Oj4l0GxFU)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1593101560983) (:by |Oj4l0GxFU) (:text |{})
                                                      |r $ %{} :Expr (:at 1593101596692) (:by |Oj4l0GxFU)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1593101597799) (:by |Oj4l0GxFU) (:text |<>)
                                                          |j $ %{} :Expr (:at 1593101626885) (:by |Oj4l0GxFU)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1593101629076) (:by |Oj4l0GxFU) (:text |str)
                                                              |j $ %{} :Leaf (:at 1593101629927) (:by |Oj4l0GxFU) (:text |action)
                                                      |t $ %{} :Expr (:at 1593101657766) (:by |Oj4l0GxFU)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1593101658454) (:by |Oj4l0GxFU) (:text |=<)
                                                          |j $ %{} :Leaf (:at 1593101669874) (:by |Oj4l0GxFU) (:text |24)
                                                          |r $ %{} :Leaf (:at 1593101660396) (:by |Oj4l0GxFU) (:text |nil)
                                                      |v $ %{} :Expr (:at 1593101596692) (:by |Oj4l0GxFU)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1593101597799) (:by |Oj4l0GxFU) (:text |<>)
                                                          |j $ %{} :Leaf (:at 1593101641700) (:by |Oj4l0GxFU) (:text |op-id)
                                                      |w $ %{} :Expr (:at 1593101665843) (:by |Oj4l0GxFU)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1593101665843) (:by |Oj4l0GxFU) (:text |=<)
                                                          |j $ %{} :Leaf (:at 1593101670960) (:by |Oj4l0GxFU) (:text |8)
                                                          |r $ %{} :Leaf (:at 1593101665843) (:by |Oj4l0GxFU) (:text |nil)
                                                      |x $ %{} :Expr (:at 1593103220254) (:by |Oj4l0GxFU)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1593103220254) (:by |Oj4l0GxFU) (:text |<>)
                                                          |j $ %{} :Leaf (:at 1593103244397) (:by |Oj4l0GxFU) (:text |op-time)
                                                  |j $ %{} :Expr (:at 1593318432935) (:by |Oj4l0GxFU)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1593318432935) (:by |Oj4l0GxFU) (:text |if)
                                                      |j $ %{} :Expr (:at 1593318432935) (:by |Oj4l0GxFU)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1593318432935) (:by |Oj4l0GxFU) (:text |and)
                                                          |j $ %{} :Expr (:at 1593318432935) (:by |Oj4l0GxFU)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1593318432935) (:by |Oj4l0GxFU) (:text |some?)
                                                              |j $ %{} :Leaf (:at 1593318432935) (:by |Oj4l0GxFU) (:text |pointer)
                                                          |r $ %{} :Expr (:at 1593318432935) (:by |Oj4l0GxFU)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1666024772342) (:by |Oj4l0GxFU) (:text |not=)
                                                              |j $ %{} :Leaf (:at 1593318432935) (:by |Oj4l0GxFU) (:text |pointer)
                                                              |r $ %{} :Leaf (:at 1593318432935) (:by |Oj4l0GxFU) (:text |0)
                                                      |r $ %{} :Expr (:at 1593318432935) (:by |Oj4l0GxFU)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1593318432935) (:by |Oj4l0GxFU) (:text |span)
                                                          |j $ %{} :Expr (:at 1593318432935) (:by |Oj4l0GxFU)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1593318432935) (:by |Oj4l0GxFU) (:text |{})
                                                              |j $ %{} :Expr (:at 1593318432935) (:by |Oj4l0GxFU)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1593318432935) (:by |Oj4l0GxFU) (:text |:inner-text)
                                                                  |j $ %{} :Leaf (:at 1593318432935) (:by |Oj4l0GxFU) (:text ||Remove)
                                                              |n $ %{} :Expr (:at 1666024724077) (:by |Oj4l0GxFU)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1666024728065) (:by |Oj4l0GxFU) (:text |:class-name)
                                                                  |b $ %{} :Leaf (:at 1666024732942) (:by |Oj4l0GxFU) (:text |css/font-fancy)
                                                              |r $ %{} :Expr (:at 1593318432935) (:by |Oj4l0GxFU)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1593318432935) (:by |Oj4l0GxFU) (:text |:style)
                                                                  |j $ %{} :Expr (:at 1593318432935) (:by |Oj4l0GxFU)
                                                                    :data $ {}
                                                                      |T $ %{} :Leaf (:at 1593318432935) (:by |Oj4l0GxFU) (:text |{})
                                                                      |j $ %{} :Expr (:at 1593318432935) (:by |Oj4l0GxFU)
                                                                        :data $ {}
                                                                          |T $ %{} :Leaf (:at 1593318432935) (:by |Oj4l0GxFU) (:text |:cursor)
                                                                          |j $ %{} :Leaf (:at 1593318432935) (:by |Oj4l0GxFU) (:text |:pointer)
                                                                      |r $ %{} :Expr (:at 1593318432935) (:by |Oj4l0GxFU)
                                                                        :data $ {}
                                                                          |T $ %{} :Leaf (:at 1593318432935) (:by |Oj4l0GxFU) (:text |:font-size)
                                                                          |j $ %{} :Leaf (:at 1593318432935) (:by |Oj4l0GxFU) (:text |12)
                                                                      |x $ %{} :Expr (:at 1593318432935) (:by |Oj4l0GxFU)
                                                                        :data $ {}
                                                                          |T $ %{} :Leaf (:at 1593318432935) (:by |Oj4l0GxFU) (:text |:color)
                                                                          |j $ %{} :Expr (:at 1593318432935) (:by |Oj4l0GxFU)
                                                                            :data $ {}
                                                                              |T $ %{} :Leaf (:at 1593318432935) (:by |Oj4l0GxFU) (:text |hsl)
                                                                              |j $ %{} :Leaf (:at 1593318432935) (:by |Oj4l0GxFU) (:text |200)
                                                                              |r $ %{} :Leaf (:at 1593318432935) (:by |Oj4l0GxFU) (:text |100)
                                                                              |v $ %{} :Leaf (:at 1593318432935) (:by |Oj4l0GxFU) (:text |84)
                                                              |v $ %{} :Expr (:at 1593318432935) (:by |Oj4l0GxFU)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1593318432935) (:by |Oj4l0GxFU) (:text |:on-click)
                                                                  |j $ %{} :Expr (:at 1593318432935) (:by |Oj4l0GxFU)
                                                                    :data $ {}
                                                                      |T $ %{} :Leaf (:at 1593318432935) (:by |Oj4l0GxFU) (:text |fn)
                                                                      |j $ %{} :Expr (:at 1593318432935) (:by |Oj4l0GxFU)
                                                                        :data $ {}
                                                                          |T $ %{} :Leaf (:at 1593318432935) (:by |Oj4l0GxFU) (:text |e)
                                                                          |j $ %{} :Leaf (:at 1593318432935) (:by |Oj4l0GxFU) (:text |d!)
                                                                      |r $ %{} :Expr (:at 1593318432935) (:by |Oj4l0GxFU)
                                                                        :data $ {}
                                                                          |T $ %{} :Leaf (:at 1593318432935) (:by |Oj4l0GxFU) (:text |d!)
                                                                          |j $ %{} :Expr (:at 1688398296547) (:by |Oj4l0GxFU)
                                                                            :data $ {}
                                                                              |D $ %{} :Leaf (:at 1688398297174) (:by |Oj4l0GxFU) (:text |::)
                                                                              |T $ %{} :Leaf (:at 1593318432935) (:by |Oj4l0GxFU) (:text |:reel/remove)
                                                                              |b $ %{} :Expr (:at 1688398299335) (:by |Oj4l0GxFU)
                                                                                :data $ {}
                                                                                  |T $ %{} :Leaf (:at 1688398299335) (:by |Oj4l0GxFU) (:text |:pointer)
                                                                                  |b $ %{} :Leaf (:at 1688398299335) (:by |Oj4l0GxFU) (:text |reel)
                                              |j $ %{} :Expr (:at 1593318160473) (:by |Oj4l0GxFU)
                                                :data $ {}
                                                  |D $ %{} :Leaf (:at 1593318161128) (:by |Oj4l0GxFU) (:text |div)
                                                  |L $ %{} :Expr (:at 1593318161316) (:by |Oj4l0GxFU)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1593318161596) (:by |Oj4l0GxFU) (:text |{})
                                                      |b $ %{} :Expr (:at 1657820453017) (:by |Oj4l0GxFU)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1657820455354) (:by |Oj4l0GxFU) (:text |:class-name)
                                                          |b $ %{} :Leaf (:at 1657820457690) (:by |Oj4l0GxFU) (:text |css/expand)
                                                      |j $ %{} :Expr (:at 1593318162281) (:by |Oj4l0GxFU)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1593318164691) (:by |Oj4l0GxFU) (:text |:style)
                                                          |j $ %{} :Expr (:at 1593318171643) (:by |Oj4l0GxFU)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1593318171973) (:by |Oj4l0GxFU) (:text |{})
                                                              |j $ %{} :Expr (:at 1593318172223) (:by |Oj4l0GxFU)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1593318178007) (:by |Oj4l0GxFU) (:text |:max-height)
                                                                  |j $ %{} :Leaf (:at 1593318180812) (:by |Oj4l0GxFU) (:text "|\"200px")
                                                  |T $ %{} :Expr (:at 1593103110508) (:by |Oj4l0GxFU)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1593103112534) (:by |Oj4l0GxFU) (:text |<>)
                                                      |j $ %{} :Expr (:at 1593103112860) (:by |Oj4l0GxFU)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1693243795745) (:by |Oj4l0GxFU) (:text |to-lispy-string)
                                                          |j $ %{} :Leaf (:at 1593103117710) (:by |Oj4l0GxFU) (:text |op-data)
                                      |v $ %{} :Expr (:at 1593101566869) (:by |Oj4l0GxFU)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1593101566869) (:by |Oj4l0GxFU) (:text |<>)
                                          |j $ %{} :Leaf (:at 1593101572484) (:by |Oj4l0GxFU) (:text "|\"nil")
                              |t $ %{} :Expr (:at 1593101116021) (:by |Oj4l0GxFU)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1593101119089) (:by |Oj4l0GxFU) (:text |div)
                                  |j $ %{} :Expr (:at 1593101119414) (:by |Oj4l0GxFU)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1593101119845) (:by |Oj4l0GxFU) (:text |{})
                                      |j $ %{} :Expr (:at 1593101120085) (:by |Oj4l0GxFU)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1657820476988) (:by |Oj4l0GxFU) (:text |:class-name)
                                          |j $ %{} :Expr (:at 1593101122985) (:by |Oj4l0GxFU)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1657820481330) (:by |Oj4l0GxFU) (:text |str-spaced)
                                              |b $ %{} :Leaf (:at 1657820483228) (:by |Oj4l0GxFU) (:text |css/expand)
                                              |j $ %{} :Leaf (:at 1657820504540) (:by |Oj4l0GxFU) (:text |css/font-code)
                                              |n $ %{} :Leaf (:at 1657820756961) (:by |Oj4l0GxFU) (:text |css-snippet)
                                  |r $ %{} :Expr (:at 1593101157010) (:by |Oj4l0GxFU)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1593101158301) (:by |Oj4l0GxFU) (:text |<>)
                                      |j $ %{} :Expr (:at 1610609934272) (:by |Oj4l0GxFU)
                                        :data $ {}
                                          |D $ %{} :Leaf (:at 1624008572724) (:by |Oj4l0GxFU) (:text |.trim)
                                          |T $ %{} :Expr (:at 1593101159115) (:by |Oj4l0GxFU)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1624008566540) (:by |Oj4l0GxFU) (:text |format-cirru-edn)
                                              |j $ %{} :Expr (:at 1593101161154) (:by |Oj4l0GxFU)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1593101162953) (:by |Oj4l0GxFU) (:text |:store)
                                                  |j $ %{} :Leaf (:at 1593101164587) (:by |Oj4l0GxFU) (:text |reel)
                  |v $ %{} :Expr (:at 1507451416170) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1507451419173) (:by |root) (:text |span)
                      |j $ %{} :Expr (:at 1507451420773) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1507451421144) (:by |root) (:text |{})
        |css-reel $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1507454227127) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1657820198125) (:by |Oj4l0GxFU) (:text |defstyle)
              |j $ %{} :Leaf (:at 1657820731711) (:by |Oj4l0GxFU) (:text |css-reel)
              |r $ %{} :Expr (:at 1657820198967) (:by |Oj4l0GxFU)
                :data $ {}
                  |D $ %{} :Leaf (:at 1657820199749) (:by |Oj4l0GxFU) (:text |{})
                  |T $ %{} :Expr (:at 1657820200148) (:by |Oj4l0GxFU)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1657820201600) (:by |Oj4l0GxFU) (:text "|\"$0")
                      |T $ %{} :Expr (:at 1507452151460) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1507452151763) (:by |root) (:text |{})
                          |j $ %{} :Expr (:at 1507452152021) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1507452153111) (:by |root) (:text |:width)
                              |j $ %{} :Leaf (:at 1593318594912) (:by |Oj4l0GxFU) (:text ||60%)
                          |n $ %{} :Expr (:at 1507453692403) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1507453694324) (:by |root) (:text |:height)
                              |j $ %{} :Leaf (:at 1593318597021) (:by |Oj4l0GxFU) (:text ||80%)
                          |v $ %{} :Expr (:at 1507452173376) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1507452174588) (:by |root) (:text |:right)
                              |j $ %{} :Leaf (:at 1623953297580) (:by |Oj4l0GxFU) (:text "|\"0px")
                          |w $ %{} :Expr (:at 1507453709327) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1507453710890) (:by |root) (:text |:bottom)
                              |j $ %{} :Leaf (:at 1623953390694) (:by |Oj4l0GxFU) (:text "|\"0px")
                          |wT $ %{} :Expr (:at 1507453712454) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1507453716229) (:by |root) (:text |:position)
                              |j $ %{} :Leaf (:at 1507453722949) (:by |root) (:text |:fixed)
                          |x $ %{} :Expr (:at 1507452177106) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1507452180135) (:by |root) (:text |:background-color)
                              |j $ %{} :Expr (:at 1507452180355) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1507452180632) (:by |root) (:text |hsl)
                                  |j $ %{} :Leaf (:at 1507452181050) (:by |root) (:text |0)
                                  |r $ %{} :Leaf (:at 1507452181286) (:by |root) (:text |0)
                                  |v $ %{} :Leaf (:at 1507452184217) (:by |root) (:text |100)
                                  |x $ %{} :Leaf (:at 1508641672644) (:by |root) (:text |0.7)
                          |y $ %{} :Expr (:at 1507452188930) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1507452192423) (:by |root) (:text |:border)
                              |j $ %{} :Expr (:at 1507452192841) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1507452195015) (:by |root) (:text |str)
                                  |j $ %{} :Leaf (:at 1507452198184) (:by |root) (:text "||1px solid ")
                                  |r $ %{} :Expr (:at 1507452199074) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1507452201159) (:by |root) (:text |hsl)
                                      |j $ %{} :Leaf (:at 1507452201403) (:by |root) (:text |0)
                                      |r $ %{} :Leaf (:at 1507452201547) (:by |root) (:text |0)
                                      |v $ %{} :Leaf (:at 1507452202300) (:by |root) (:text |90)
                          |yT $ %{} :Expr (:at 1508565128058) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1508565136071) (:by |root) (:text |:font-size)
                              |j $ %{} :Leaf (:at 1508565143233) (:by |root) (:text |14)
                          |yj $ %{} :Expr (:at 1508641456772) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1508641502324) (:by |root) (:text |:backdrop-filter)
                              |j $ %{} :Leaf (:at 1508641893398) (:by |root) (:text "||blur(2px)")
                          |yr $ %{} :Expr (:at 1593101279056) (:by |Oj4l0GxFU)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1593101283086) (:by |Oj4l0GxFU) (:text |:z-index)
                              |j $ %{} :Leaf (:at 1593101284175) (:by |Oj4l0GxFU) (:text |9999)
        |css-snippet $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1657820757340) (:by |Oj4l0GxFU)
            :data $ {}
              |T $ %{} :Leaf (:at 1657820758829) (:by |Oj4l0GxFU) (:text |defstyle)
              |b $ %{} :Leaf (:at 1657820757340) (:by |Oj4l0GxFU) (:text |css-snippet)
              |h $ %{} :Expr (:at 1657820757340) (:by |Oj4l0GxFU)
                :data $ {}
                  |T $ %{} :Leaf (:at 1657820760572) (:by |Oj4l0GxFU) (:text |{})
                  |b $ %{} :Expr (:at 1657820760862) (:by |Oj4l0GxFU)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1657820762234) (:by |Oj4l0GxFU) (:text "|\"$0")
                      |b $ %{} :Expr (:at 1657820762689) (:by |Oj4l0GxFU)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1657820762689) (:by |Oj4l0GxFU) (:text |{})
                          |b $ %{} :Expr (:at 1657820762689) (:by |Oj4l0GxFU)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1657820762689) (:by |Oj4l0GxFU) (:text |:font-size)
                              |b $ %{} :Leaf (:at 1657820762689) (:by |Oj4l0GxFU) (:text |12)
                          |h $ %{} :Expr (:at 1657820762689) (:by |Oj4l0GxFU)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1657820762689) (:by |Oj4l0GxFU) (:text |:white-space)
                              |b $ %{} :Leaf (:at 1657820762689) (:by |Oj4l0GxFU) (:text |:pre)
                          |l $ %{} :Expr (:at 1657820762689) (:by |Oj4l0GxFU)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1657820762689) (:by |Oj4l0GxFU) (:text |:padding)
                              |b $ %{} :Leaf (:at 1657820762689) (:by |Oj4l0GxFU) (:text "|\"16px 0px 200px 0px")
                          |o $ %{} :Expr (:at 1657820762689) (:by |Oj4l0GxFU)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1657820762689) (:by |Oj4l0GxFU) (:text |:line-height)
                              |b $ %{} :Leaf (:at 1657820762689) (:by |Oj4l0GxFU) (:text "|\"20px")
                          |q $ %{} :Expr (:at 1657820762689) (:by |Oj4l0GxFU)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1657820762689) (:by |Oj4l0GxFU) (:text |:overflow)
                              |b $ %{} :Leaf (:at 1657820762689) (:by |Oj4l0GxFU) (:text |:auto)
                          |s $ %{} :Expr (:at 1657820762689) (:by |Oj4l0GxFU)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1657820762689) (:by |Oj4l0GxFU) (:text |:border-top)
                              |b $ %{} :Expr (:at 1657820762689) (:by |Oj4l0GxFU)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1657820762689) (:by |Oj4l0GxFU) (:text |str)
                                  |b $ %{} :Leaf (:at 1657820762689) (:by |Oj4l0GxFU) (:text "|\"1px solid ")
                                  |h $ %{} :Expr (:at 1657820762689) (:by |Oj4l0GxFU)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1657820762689) (:by |Oj4l0GxFU) (:text |hsl)
                                      |b $ %{} :Leaf (:at 1657820762689) (:by |Oj4l0GxFU) (:text |0)
                                      |h $ %{} :Leaf (:at 1657820762689) (:by |Oj4l0GxFU) (:text |0)
                                      |l $ %{} :Leaf (:at 1657820762689) (:by |Oj4l0GxFU) (:text |94)
        |render-button $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1508642404409) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1508642408166) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1508642404409) (:by |root) (:text |render-button)
              |n $ %{} :Expr (:at 1508642409197) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1508642419053) (:by |root) (:text |guide)
                  |j $ %{} :Leaf (:at 1508642427996) (:by |root) (:text |on-click)
                  |r $ %{} :Leaf (:at 1508644187491) (:by |root) (:text |enabled?)
              |r $ %{} :Expr (:at 1508642404409) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1508642404409) (:by |root) (:text |div)
                  |j $ %{} :Expr (:at 1508642404409) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1508642404409) (:by |root) (:text |{})
                      |b $ %{} :Expr (:at 1657820390003) (:by |Oj4l0GxFU)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1657820392205) (:by |Oj4l0GxFU) (:text |:class-name)
                          |b $ %{} :Leaf (:at 1657820394413) (:by |Oj4l0GxFU) (:text |css/link)
                      |j $ %{} :Expr (:at 1508642404409) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1508642404409) (:by |root) (:text |:style)
                          |j $ %{} :Expr (:at 1508644191367) (:by |root)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1508644192874) (:by |root) (:text |merge)
                              |b $ %{} :Expr (:at 1508644806194) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1508644806562) (:by |root) (:text |{})
                                  |j $ %{} :Expr (:at 1508644807249) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1508644811640) (:by |root) (:text |:user-select)
                                      |j $ %{} :Leaf (:at 1508644812543) (:by |root) (:text |:none)
                              |j $ %{} :Expr (:at 1508644203599) (:by |root)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1508644204269) (:by |root) (:text |if)
                                  |L $ %{} :Expr (:at 1508644210024) (:by |root)
                                    :data $ {}
                                      |D $ %{} :Leaf (:at 1508644212045) (:by |root) (:text |not)
                                      |T $ %{} :Leaf (:at 1508644210998) (:by |root) (:text |enabled?)
                                  |T $ %{} :Expr (:at 1508644193418) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1508644193886) (:by |root) (:text |{})
                                      |j $ %{} :Expr (:at 1508644194173) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1508644195405) (:by |root) (:text |:color)
                                          |j $ %{} :Expr (:at 1508644217863) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1508644218938) (:by |root) (:text |hsl)
                                              |j $ %{} :Leaf (:at 1508644219277) (:by |root) (:text |0)
                                              |r $ %{} :Leaf (:at 1508644219499) (:by |root) (:text |0)
                                              |v $ %{} :Leaf (:at 1508644223185) (:by |root) (:text |90)
                      |r $ %{} :Expr (:at 1508642404409) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1515690318755) (:by |root) (:text |:on-click)
                          |j $ %{} :Expr (:at 1508644245209) (:by |root)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1508644246382) (:by |root) (:text |if)
                              |L $ %{} :Leaf (:at 1508644250995) (:by |root) (:text |enabled?)
                              |T $ %{} :Leaf (:at 1508642431590) (:by |root) (:text |on-click)
                              |j $ %{} :Expr (:at 1623953561796) (:by |Oj4l0GxFU)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1623953563042) (:by |Oj4l0GxFU) (:text |fn)
                                  |j $ %{} :Expr (:at 1623953563346) (:by |Oj4l0GxFU)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1623953563857) (:by |Oj4l0GxFU) (:text |e)
                                      |j $ %{} :Leaf (:at 1623953564592) (:by |Oj4l0GxFU) (:text |d!)
                  |r $ %{} :Expr (:at 1508642404409) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1508642404409) (:by |root) (:text |<>)
                      |j $ %{} :Leaf (:at 1508642434512) (:by |root) (:text |guide)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1507357346880) (:by nil)
          :data $ {}
            |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |reel.comp.reel)
            |r $ %{} :Expr (:at 1507357346880) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:require)
                |j $ %{} :Expr (:at 1507358372096) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1540918186929) (:by |root) (:text |respo.core)
                    |r $ %{} :Leaf (:at 1507358379750) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1507358379959) (:by |root)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1507358382917) (:by |root) (:text |defcomp)
                        |r $ %{} :Leaf (:at 1507358383894) (:by |root) (:text |<>)
                        |t $ %{} :Leaf (:at 1584768658961) (:by |Oj4l0GxFU) (:text |>>)
                        |v $ %{} :Leaf (:at 1507358385897) (:by |root) (:text |div)
                        |x $ %{} :Leaf (:at 1507358386740) (:by |root) (:text |button)
                        |y $ %{} :Leaf (:at 1507451429586) (:by |root) (:text |span)
                |n $ %{} :Expr (:at 1657820173771) (:by |Oj4l0GxFU)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1657820174938) (:by |Oj4l0GxFU) (:text |respo.css)
                    |b $ %{} :Leaf (:at 1657820175685) (:by |Oj4l0GxFU) (:text |:refer)
                    |h $ %{} :Expr (:at 1657820175926) (:by |Oj4l0GxFU)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1657820176971) (:by |Oj4l0GxFU) (:text |defstyle)
                |r $ %{} :Expr (:at 1507357346880) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1610609588371) (:by |Oj4l0GxFU) (:text |respo.util.format)
                    |r $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1507357346880) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |hsl)
                |v $ %{} :Expr (:at 1507357346880) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1507358398441) (:by |root) (:text |respo.comp.inspect)
                    |r $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1507357346880) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1507358402753) (:by |root) (:text |comp-inspect)
                |x $ %{} :Expr (:at 1507357346880) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1516431432078) (:by |root) (:text |respo-ui.core)
                    |r $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |ui)
                |y $ %{} :Expr (:at 1657820179773) (:by |Oj4l0GxFU)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1657820182292) (:by |Oj4l0GxFU) (:text |respo-ui.css)
                    |b $ %{} :Leaf (:at 1657820183239) (:by |Oj4l0GxFU) (:text |:as)
                    |h $ %{} :Leaf (:at 1657820183892) (:by |Oj4l0GxFU) (:text |css)
                |yj $ %{} :Expr (:at 1507357346880) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |respo.comp.space)
                    |r $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1507357346880) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1507358410991) (:by |root) (:text |=<)
                |yr $ %{} :Expr (:at 1507357346880) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |reel.comp.records)
                    |r $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1507357346880) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |comp-records)
                |yv $ %{} :Expr (:at 1508566235717) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1508566236831) (:by |root) (:text |respo-value.comp.value)
                    |r $ %{} :Leaf (:at 1508566238572) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1508566238797) (:by |root)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1508566240401) (:by |root) (:text |comp-value)
                |yx $ %{} :Expr (:at 1508566816470) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1508566820130) (:by |root) (:text |reel.style)
                    |r $ %{} :Leaf (:at 1508566820959) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1508566822307) (:by |root) (:text |style)
    |reel.core $ %{} :FileEntry
      :defs $ {}
        |play-records $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1507357346880) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |play-records)
              |r $ %{} :Expr (:at 1507357346880) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |store)
                  |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |records)
                  |r $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |updater)
                  |v $ %{} :Leaf (:at 1518145142053) (:by |root) (:text |pointer)
              |v $ %{} :Expr (:at 1507357346880) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |if)
                  |j $ %{} :Expr (:at 1507357346880) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1610612070020) (:by |Oj4l0GxFU) (:text |&=)
                      |b $ %{} :Leaf (:at 1610612070244) (:by |Oj4l0GxFU) (:text |0)
                      |j $ %{} :Leaf (:at 1518145232804) (:by |root) (:text |pointer)
                  |r $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |store)
                  |v $ %{} :Expr (:at 1610610060483) (:by |Oj4l0GxFU)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1610610061897) (:by |Oj4l0GxFU) (:text |let[])
                      |L $ %{} :Expr (:at 1610610064995) (:by |Oj4l0GxFU)
                        :data $ {}
                          |j $ %{} :Leaf (:at 1610610064995) (:by |Oj4l0GxFU) (:text |op)
                          |v $ %{} :Leaf (:at 1610610064995) (:by |Oj4l0GxFU) (:text |op-id)
                          |x $ %{} :Leaf (:at 1610610064995) (:by |Oj4l0GxFU) (:text |op-time)
                      |P $ %{} :Expr (:at 1610610067994) (:by |Oj4l0GxFU)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1610610067994) (:by |Oj4l0GxFU) (:text |first)
                          |j $ %{} :Leaf (:at 1610610067994) (:by |Oj4l0GxFU) (:text |records)
                      |T $ %{} :Expr (:at 1507357346880) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1610610075247) (:by |Oj4l0GxFU) (:text |&let)
                          |j $ %{} :Expr (:at 1507357346880) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |next-store)
                              |j $ %{} :Expr (:at 1507357346880) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |updater)
                                  |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |store)
                                  |r $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |op)
                                  |x $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |op-id)
                                  |y $ %{} :Leaf (:at 1518145251342) (:by |root) (:text |op-time)
                          |r $ %{} :Expr (:at 1507357346880) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |recur)
                              |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |next-store)
                              |r $ %{} :Expr (:at 1507357346880) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |rest)
                                  |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |records)
                              |v $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |updater)
                              |x $ %{} :Expr (:at 1518145256415) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1518145255357) (:by |root) (:text |dec)
                                  |j $ %{} :Leaf (:at 1518145257489) (:by |root) (:text |pointer)
        |reel-updater $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1507357346880) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |reel-updater)
              |r $ %{} :Expr (:at 1507357346880) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |updater)
                  |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |reel)
                  |r $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |op)
              |v $ %{} :Expr (:at 1507357346880) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |;)
                  |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |println)
                  |r $ %{} :Leaf (:at 1507357346880) (:by |root) (:text ||Name:)
                  |v $ %{} :Expr (:at 1507357346880) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1623957554096) (:by |Oj4l0GxFU) (:text |turn-string)
                      |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |op)
              |x $ %{} :Expr (:at 1518143353421) (:by |root)
                :data $ {}
                  |D $ %{} :Leaf (:at 1518143357146) (:by |root) (:text |let)
                  |L $ %{} :Expr (:at 1518143415678) (:by |root)
                    :data $ {}
                      |T $ %{} :Expr (:at 1518143357526) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1518143359827) (:by |root) (:text |op-id)
                          |j $ %{} :Expr (:at 1610610606006) (:by |Oj4l0GxFU)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1623957481103) (:by |Oj4l0GxFU) (:text |generate-id!)
                      |j $ %{} :Expr (:at 1518143365609) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1518143366989) (:by |root) (:text |op-time)
                          |j $ %{} :Expr (:at 1518143368032) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1623957472162) (:by |Oj4l0GxFU) (:text |js/Date.now)
                  |T $ %{} :Expr (:at 1507357346880) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |if)
                      |j $ %{} :Expr (:at 1507357346880) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1623957528908) (:by |Oj4l0GxFU) (:text |.starts-with?)
                          |j $ %{} :Expr (:at 1507357346880) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |str)
                              |j $ %{} :Expr (:at 1687780734669) (:by |Oj4l0GxFU)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1687780735534) (:by |Oj4l0GxFU) (:text |nth)
                                  |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |op)
                                  |b $ %{} :Leaf (:at 1687780752890) (:by |Oj4l0GxFU) (:text |0)
                          |r $ %{} :Leaf (:at 1507357346880) (:by |root) (:text ||:reel/)
                      |r $ %{} :Expr (:at 1507368075494) (:by |root)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1507368076755) (:by |root) (:text |merge)
                          |L $ %{} :Leaf (:at 1507368078768) (:by |root) (:text |reel)
                          |T $ %{} :Expr (:at 1507460266439) (:by |root)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1507460267525) (:by |root) (:text |let)
                              |L $ %{} :Expr (:at 1507460267723) (:by |root)
                                :data $ {}
                                  |T $ %{} :Expr (:at 1507460267881) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1507460269766) (:by |root) (:text |pointer)
                                      |j $ %{} :Expr (:at 1507460270878) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1623957566056) (:by |Oj4l0GxFU) (:text |&map:get)
                                          |j $ %{} :Leaf (:at 1507460280553) (:by |root) (:text |reel)
                                          |r $ %{} :Leaf (:at 1623957566830) (:by |Oj4l0GxFU) (:text |:pointer)
                                  |j $ %{} :Expr (:at 1507460272705) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1507460274995) (:by |root) (:text |records)
                                      |j $ %{} :Expr (:at 1507460275353) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1623957570264) (:by |Oj4l0GxFU) (:text |&map:get)
                                          |j $ %{} :Leaf (:at 1507460278335) (:by |root) (:text |reel)
                                          |r $ %{} :Leaf (:at 1623957570856) (:by |Oj4l0GxFU) (:text |:records)
                                  |r $ %{} :Expr (:at 1507460282945) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1507460283997) (:by |root) (:text |base)
                                      |j $ %{} :Expr (:at 1507460284227) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1623957574755) (:by |Oj4l0GxFU) (:text |&map:get)
                                          |j $ %{} :Leaf (:at 1507460286428) (:by |root) (:text |reel)
                                          |r $ %{} :Leaf (:at 1623957575330) (:by |Oj4l0GxFU) (:text |:base)
                                  |t $ %{} :Expr (:at 1508643726664) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1508643727262) (:by |root) (:text |store)
                                      |j $ %{} :Expr (:at 1508643727680) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1623957578563) (:by |Oj4l0GxFU) (:text |&map:get)
                                          |j $ %{} :Leaf (:at 1508643729615) (:by |root) (:text |reel)
                                          |r $ %{} :Leaf (:at 1623957579113) (:by |Oj4l0GxFU) (:text |:base)
                                  |v $ %{} :Expr (:at 1507460297038) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1507460299995) (:by |root) (:text |stopped?)
                                      |j $ %{} :Expr (:at 1507460300311) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1623957584721) (:by |Oj4l0GxFU) (:text |&map:get)
                                          |j $ %{} :Leaf (:at 1507460302743) (:by |root) (:text |reel)
                                          |r $ %{} :Leaf (:at 1623957585299) (:by |Oj4l0GxFU) (:text |:stopped?)
                              |T $ %{} :Expr (:at 1507357346880) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1687780316890) (:by |Oj4l0GxFU) (:text |tag-match)
                                  |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |op)
                                  |r $ %{} :Expr (:at 1507357346880) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Expr (:at 1687780337129) (:by |Oj4l0GxFU)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:reel/toggle)
                                      |r $ %{} :Expr (:at 1507368082521) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1507368082944) (:by |root) (:text |{})
                                          |j $ %{} :Expr (:at 1507368083622) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1507368087349) (:by |root) (:text |:display?)
                                              |j $ %{} :Expr (:at 1507368087618) (:by |root)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1507368088873) (:by |root) (:text |not)
                                                  |j $ %{} :Expr (:at 1507368089894) (:by |root)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1507368091784) (:by |root) (:text |:display?)
                                                      |j $ %{} :Leaf (:at 1507368093578) (:by |root) (:text |reel)
                                  |v $ %{} :Expr (:at 1507357346880) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Expr (:at 1687780278843) (:by |Oj4l0GxFU)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:reel/recall)
                                          |b $ %{} :Leaf (:at 1687780280400) (:by |Oj4l0GxFU) (:text |idx)
                                      |j $ %{} :Expr (:at 1507357346880) (:by nil)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |let)
                                          |j $ %{} :Expr (:at 1507357346880) (:by nil)
                                            :data $ {}
                                              |j $ %{} :Expr (:at 1507454289052) (:by |root)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1507454292271) (:by |root) (:text |new-store)
                                                  |r $ %{} :Expr (:at 1507454845384) (:by |root)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1507454848988) (:by |root) (:text |play-records)
                                                      |j $ %{} :Leaf (:at 1518144789988) (:by |root) (:text |base)
                                                      |n $ %{} :Leaf (:at 1518145272326) (:by |root) (:text |records)
                                                      |v $ %{} :Leaf (:at 1507454867021) (:by |root) (:text |updater)
                                                      |x $ %{} :Leaf (:at 1518145275996) (:by |root) (:text |idx)
                                          |r $ %{} :Expr (:at 1507368111971) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1507368139409) (:by |root) (:text |{})
                                              |j $ %{} :Expr (:at 1507368139703) (:by |root)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1507368140768) (:by |root) (:text |:pointer)
                                                  |j $ %{} :Leaf (:at 1507368141590) (:by |root) (:text |idx)
                                              |r $ %{} :Expr (:at 1507368142266) (:by |root)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1507368150144) (:by |root) (:text |:stopped?)
                                                  |j $ %{} :Leaf (:at 1507368148541) (:by |root) (:text |true)
                                              |v $ %{} :Expr (:at 1507368154554) (:by |root)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1507368155601) (:by |root) (:text |:store)
                                                  |j $ %{} :Leaf (:at 1507454312411) (:by |root) (:text |new-store)
                                  |x $ %{} :Expr (:at 1507357346880) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Expr (:at 1687780336021) (:by |Oj4l0GxFU)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:reel/run)
                                      |j $ %{} :Expr (:at 1507454018529) (:by |root)
                                        :data $ {}
                                          |D $ %{} :Leaf (:at 1507454019567) (:by |root) (:text |let)
                                          |L $ %{} :Expr (:at 1507454019780) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Expr (:at 1507454019932) (:by |root)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1507454022324) (:by |root) (:text |new-store)
                                                  |j $ %{} :Expr (:at 1507357346880) (:by nil)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |play-records)
                                                      |f $ %{} :Leaf (:at 1508643742013) (:by |root) (:text |base)
                                                      |n $ %{} :Leaf (:at 1508643745170) (:by |root) (:text |records)
                                                      |v $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |updater)
                                                      |x $ %{} :Expr (:at 1518145280211) (:by |root)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1518145280931) (:by |root) (:text |count)
                                                          |j $ %{} :Leaf (:at 1518145282768) (:by |root) (:text |records)
                                          |T $ %{} :Expr (:at 1507357346880) (:by nil)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1507368036236) (:by |root) (:text |{})
                                              |r $ %{} :Expr (:at 1507357346880) (:by nil)
                                                :data $ {}
                                                  |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:store)
                                                  |r $ %{} :Leaf (:at 1507454044125) (:by |root) (:text |new-store)
                                              |v $ %{} :Expr (:at 1507357346880) (:by nil)
                                                :data $ {}
                                                  |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:stopped?)
                                                  |r $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |false)
                                              |x $ %{} :Expr (:at 1507357346880) (:by nil)
                                                :data $ {}
                                                  |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:pointer)
                                                  |r $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |nil)
                                  |xT $ %{} :Expr (:at 1508643439522) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Expr (:at 1687780334356) (:by |Oj4l0GxFU)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1508643443321) (:by |root) (:text |:reel/step)
                                      |j $ %{} :Expr (:at 1508643444563) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1508643478757) (:by |root) (:text |if)
                                          |j $ %{} :Leaf (:at 1508643482423) (:by |root) (:text |stopped?)
                                          |n $ %{} :Expr (:at 1508643511009) (:by |root)
                                            :data $ {}
                                              |D $ %{} :Leaf (:at 1508643529004) (:by |root) (:text |if)
                                              |L $ %{} :Expr (:at 1508643529303) (:by |root)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1508643629242) (:by |root) (:text |<)
                                                  |j $ %{} :Expr (:at 1508643630140) (:by |root)
                                                    :data $ {}
                                                      |D $ %{} :Leaf (:at 1508643631984) (:by |root) (:text |count)
                                                      |T $ %{} :Leaf (:at 1508643536702) (:by |root) (:text |records)
                                                  |r $ %{} :Leaf (:at 1508643633303) (:by |root) (:text |2)
                                              |P $ %{} :Leaf (:at 1508643540153) (:by |root) (:text |nil)
                                              |T $ %{} :Expr (:at 1508643542645) (:by |root)
                                                :data $ {}
                                                  |D $ %{} :Leaf (:at 1508643551190) (:by |root) (:text |if)
                                                  |L $ %{} :Expr (:at 1508643570165) (:by |root)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1508643572752) (:by |root) (:text |<)
                                                      |j $ %{} :Leaf (:at 1508643574727) (:by |root) (:text |pointer)
                                                      |r $ %{} :Expr (:at 1508643574992) (:by |root)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1508643576949) (:by |root) (:text |count)
                                                          |j $ %{} :Leaf (:at 1508643584104) (:by |root) (:text |records)
                                                  |P $ %{} :Expr (:at 1508643774207) (:by |root)
                                                    :data $ {}
                                                      |D $ %{} :Leaf (:at 1508643774891) (:by |root) (:text |let)
                                                      |L $ %{} :Expr (:at 1508643775501) (:by |root)
                                                        :data $ {}
                                                          |D $ %{} :Expr (:at 1508643787674) (:by |root)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1508643791656) (:by |root) (:text |next-pointer)
                                                              |j $ %{} :Expr (:at 1508643791968) (:by |root)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1508643792486) (:by |root) (:text |inc)
                                                                  |j $ %{} :Leaf (:at 1508643793542) (:by |root) (:text |pointer)
                                                          |T $ %{} :Expr (:at 1508643775934) (:by |root)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1508643778152) (:by |root) (:text |next-record)
                                                              |j $ %{} :Expr (:at 1508643778938) (:by |root)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1610612516113) (:by |Oj4l0GxFU) (:text |get)
                                                                  |j $ %{} :Leaf (:at 1508643780566) (:by |root) (:text |records)
                                                                  |r $ %{} :Leaf (:at 1508644063248) (:by |root) (:text |pointer)
                                                      |T $ %{} :Expr (:at 1610610131342) (:by |Oj4l0GxFU)
                                                        :data $ {}
                                                          |D $ %{} :Leaf (:at 1610610133545) (:by |Oj4l0GxFU) (:text |let[])
                                                          |L $ %{} :Expr (:at 1610610135709) (:by |Oj4l0GxFU)
                                                            :data $ {}
                                                              |j $ %{} :Leaf (:at 1610610135709) (:by |Oj4l0GxFU) (:text |old-op)
                                                              |v $ %{} :Leaf (:at 1610610135709) (:by |Oj4l0GxFU) (:text |old-id)
                                                              |x $ %{} :Leaf (:at 1610610135709) (:by |Oj4l0GxFU) (:text |old-time)
                                                          |P $ %{} :Leaf (:at 1610610141650) (:by |Oj4l0GxFU) (:text |next-record)
                                                          |T $ %{} :Expr (:at 1508643588094) (:by |root)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1508643589201) (:by |root) (:text |{})
                                                              |j $ %{} :Expr (:at 1508643589614) (:by |root)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1508644007215) (:by |root) (:text |:pointer)
                                                                  |j $ %{} :Leaf (:at 1508643803877) (:by |root) (:text |next-pointer)
                                                              |r $ %{} :Expr (:at 1508643595851) (:by |root)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1508643600116) (:by |root) (:text |:store)
                                                                  |j $ %{} :Expr (:at 1508643716913) (:by |root)
                                                                    :data $ {}
                                                                      |T $ %{} :Leaf (:at 1508643718603) (:by |root) (:text |updater)
                                                                      |j $ %{} :Expr (:at 1508643719547) (:by |root)
                                                                        :data $ {}
                                                                          |T $ %{} :Leaf (:at 1508643720444) (:by |root) (:text |:store)
                                                                          |j $ %{} :Leaf (:at 1508643721686) (:by |root) (:text |reel)
                                                                      |n $ %{} :Leaf (:at 1518144860083) (:by |root) (:text |old-op)
                                                                      |q $ %{} :Leaf (:at 1518144856124) (:by |root) (:text |old-id)
                                                                      |qT $ %{} :Leaf (:at 1518144857582) (:by |root) (:text |old-time)
                                                  |T $ %{} :Expr (:at 1508643494294) (:by |root)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1508643494947) (:by |root) (:text |{})
                                                      |j $ %{} :Expr (:at 1508643496381) (:by |root)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1508643498553) (:by |root) (:text |:store)
                                                          |j $ %{} :Leaf (:at 1508643844053) (:by |root) (:text |base)
                                                      |r $ %{} :Expr (:at 1508643503494) (:by |root)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1508643505910) (:by |root) (:text |:pointer)
                                                          |j $ %{} :Leaf (:at 1508643845762) (:by |root) (:text |0)
                                          |r $ %{} :Leaf (:at 1508643493418) (:by |root) (:text |nil)
                                  |y $ %{} :Expr (:at 1507357346880) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Expr (:at 1687780332334) (:by |Oj4l0GxFU)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:reel/merge)
                                      |j $ %{} :Expr (:at 1507460092439) (:by |root)
                                        :data $ {}
                                          |D $ %{} :Leaf (:at 1507460093329) (:by |root) (:text |if)
                                          |J $ %{} :Leaf (:at 1507460309817) (:by |root) (:text |stopped?)
                                          |P $ %{} :Expr (:at 1507460170935) (:by |root)
                                            :data $ {}
                                              |D $ %{} :Leaf (:at 1507460173285) (:by |root) (:text |if)
                                              |L $ %{} :Expr (:at 1507460177336) (:by |root)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1612762647829) (:by |Oj4l0GxFU) (:text |&=)
                                                  |b $ %{} :Leaf (:at 1612762648472) (:by |Oj4l0GxFU) (:text |0)
                                                  |j $ %{} :Leaf (:at 1507460312458) (:by |root) (:text |pointer)
                                              |P $ %{} :Expr (:at 1507460184651) (:by |root)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1507460184922) (:by |root) (:text |{})
                                              |T $ %{} :Expr (:at 1507460099262) (:by |root)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1507460100175) (:by |root) (:text |let)
                                                  |j $ %{} :Expr (:at 1507460100392) (:by |root)
                                                    :data $ {}
                                                      |T $ %{} :Expr (:at 1507460100546) (:by |root)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1507460165785) (:by |root) (:text |new-store)
                                                          |j $ %{} :Expr (:at 1507460166408) (:by |root)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1507460191043) (:by |root) (:text |play-records)
                                                              |f $ %{} :Leaf (:at 1507460315276) (:by |root) (:text |base)
                                                              |j $ %{} :Leaf (:at 1518145395990) (:by |root) (:text |records)
                                                              |v $ %{} :Leaf (:at 1507460204218) (:by |root) (:text |updater)
                                                              |x $ %{} :Leaf (:at 1518145398697) (:by |root) (:text |pointer)
                                                  |r $ %{} :Expr (:at 1507460212334) (:by |root)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1507460213515) (:by |root) (:text |{})
                                                      |j $ %{} :Expr (:at 1507460213803) (:by |root)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1507460215443) (:by |root) (:text |:store)
                                                          |j $ %{} :Leaf (:at 1507460232166) (:by |root) (:text |new-store)
                                                      |r $ %{} :Expr (:at 1507460233799) (:by |root)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1507460237281) (:by |root) (:text |:base)
                                                          |j $ %{} :Leaf (:at 1507460238950) (:by |root) (:text |new-store)
                                                      |v $ %{} :Expr (:at 1507460239757) (:by |root)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1507460250084) (:by |root) (:text |:pointer)
                                                          |j $ %{} :Leaf (:at 1507460250403) (:by |root) (:text |0)
                                                      |x $ %{} :Expr (:at 1507460251240) (:by |root)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1507460253143) (:by |root) (:text |:records)
                                                          |j $ %{} :Expr (:at 1507460254402) (:by |root)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1623957606714) (:by |Oj4l0GxFU) (:text |.slice)
                                                              |j $ %{} :Leaf (:at 1507460324377) (:by |root) (:text |records)
                                                              |r $ %{} :Leaf (:at 1507460325668) (:by |root) (:text |pointer)
                                                      |y $ %{} :Expr (:at 1507460768539) (:by |root)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1507460771421) (:by |root) (:text |:merged?)
                                                          |j $ %{} :Leaf (:at 1507460772031) (:by |root) (:text |true)
                                          |T $ %{} :Expr (:at 1507357346880) (:by nil)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1507368016601) (:by |root) (:text |{})
                                              |v $ %{} :Expr (:at 1507357346880) (:by nil)
                                                :data $ {}
                                                  |j $ %{} :Leaf (:at 1507369634770) (:by |root) (:text |:base)
                                                  |r $ %{} :Expr (:at 1507460386833) (:by |root)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1507460387986) (:by |root) (:text |:store)
                                                      |j $ %{} :Leaf (:at 1507460389262) (:by |root) (:text |reel)
                                              |y $ %{} :Expr (:at 1507357346880) (:by nil)
                                                :data $ {}
                                                  |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:pointer)
                                                  |r $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |nil)
                                              |yT $ %{} :Expr (:at 1507357346880) (:by nil)
                                                :data $ {}
                                                  |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:records)
                                                  |r $ %{} :Expr (:at 1507357346880) (:by nil)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |[])
                                              |yj $ %{} :Expr (:at 1507460774417) (:by |root)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1507460777744) (:by |root) (:text |:merged?)
                                                  |j $ %{} :Leaf (:at 1507460778468) (:by |root) (:text |true)
                                  |yT $ %{} :Expr (:at 1507357346880) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Expr (:at 1687780331267) (:by |Oj4l0GxFU)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:reel/reset)
                                      |j $ %{} :Expr (:at 1507461207954) (:by |root)
                                        :data $ {}
                                          |D $ %{} :Leaf (:at 1507461208632) (:by |root) (:text |if)
                                          |L $ %{} :Leaf (:at 1507461214178) (:by |root) (:text |stopped?)
                                          |P $ %{} :Expr (:at 1507461244462) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1507461245029) (:by |root) (:text |{})
                                              |j $ %{} :Expr (:at 1507461245852) (:by |root)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1507461323742) (:by |root) (:text |:records)
                                                  |j $ %{} :Expr (:at 1507461335274) (:by |root)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1623957610172) (:by |Oj4l0GxFU) (:text |.slice)
                                                      |j $ %{} :Leaf (:at 1507461340479) (:by |root) (:text |records)
                                                      |n $ %{} :Leaf (:at 1507461344314) (:by |root) (:text |0)
                                                      |r $ %{} :Leaf (:at 1507461342955) (:by |root) (:text |pointer)
                                          |T $ %{} :Expr (:at 1507357346880) (:by nil)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1507368000936) (:by |root) (:text |{})
                                              |r $ %{} :Expr (:at 1507357346880) (:by nil)
                                                :data $ {}
                                                  |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:store)
                                                  |r $ %{} :Expr (:at 1507357346880) (:by nil)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1507369637867) (:by |root) (:text |:base)
                                                      |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |reel)
                                              |v $ %{} :Expr (:at 1507357346880) (:by nil)
                                                :data $ {}
                                                  |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:pointer)
                                                  |r $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |nil)
                                              |x $ %{} :Expr (:at 1507357346880) (:by nil)
                                                :data $ {}
                                                  |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:records)
                                                  |r $ %{} :Expr (:at 1507357346880) (:by nil)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |[])
                                              |y $ %{} :Expr (:at 1507357346880) (:by nil)
                                                :data $ {}
                                                  |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:stopped?)
                                                  |r $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |false)
                                  |yb $ %{} :Expr (:at 1518144237153) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Expr (:at 1687780290216) (:by |Oj4l0GxFU)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1518144245633) (:by |root) (:text |:reel/remove)
                                          |b $ %{} :Leaf (:at 1687780291163) (:by |Oj4l0GxFU) (:text |idx)
                                      |j $ %{} :Expr (:at 1518144510401) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1518144512105) (:by |root) (:text |if)
                                          |b $ %{} :Expr (:at 1518144525616) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1612762640990) (:by |Oj4l0GxFU) (:text |&=)
                                              |b $ %{} :Leaf (:at 1612762641712) (:by |Oj4l0GxFU) (:text |0)
                                              |j $ %{} :Leaf (:at 1518144527985) (:by |root) (:text |idx)
                                          |j $ %{} :Leaf (:at 1518144536202) (:by |root) (:text |reel)
                                          |r $ %{} :Expr (:at 1518144538565) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1518144540781) (:by |root) (:text |->)
                                              |j $ %{} :Leaf (:at 1518144541754) (:by |root) (:text |reel)
                                              |r $ %{} :Expr (:at 1518144542136) (:by |root)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1518144543098) (:by |root) (:text |update)
                                                  |j $ %{} :Leaf (:at 1518144547041) (:by |root) (:text |:pointer)
                                                  |r $ %{} :Leaf (:at 1518144551300) (:by |root) (:text |dec)
                                              |v $ %{} :Expr (:at 1518144552926) (:by |root)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1518144556579) (:by |root) (:text |update)
                                                  |j $ %{} :Leaf (:at 1518144565028) (:by |root) (:text |:records)
                                                  |r $ %{} :Expr (:at 1518144559296) (:by |root)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1518144560312) (:by |root) (:text |fn)
                                                      |j $ %{} :Expr (:at 1518144560562) (:by |root)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1518144562088) (:by |root) (:text |records)
                                                      |r $ %{} :Expr (:at 1518144579888) (:by |root)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1518144612518) (:by |root) (:text |concat)
                                                          |j $ %{} :Expr (:at 1518144612765) (:by |root)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1623957636527) (:by |Oj4l0GxFU) (:text |.slice)
                                                              |j $ %{} :Leaf (:at 1518144620904) (:by |root) (:text |records)
                                                              |r $ %{} :Leaf (:at 1518144621965) (:by |root) (:text |0)
                                                              |v $ %{} :Expr (:at 1518144722803) (:by |root)
                                                                :data $ {}
                                                                  |D $ %{} :Leaf (:at 1518144723800) (:by |root) (:text |dec)
                                                                  |T $ %{} :Leaf (:at 1518144623807) (:by |root) (:text |idx)
                                                          |r $ %{} :Expr (:at 1518144624968) (:by |root)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1623957637914) (:by |Oj4l0GxFU) (:text |.slice)
                                                              |j $ %{} :Leaf (:at 1518144629724) (:by |root) (:text |records)
                                                              |r $ %{} :Leaf (:at 1518144632700) (:by |root) (:text |idx)
                                              |x $ %{} :Expr (:at 1518144566254) (:by |root)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1518144568683) (:by |root) (:text |assoc)
                                                  |j $ %{} :Leaf (:at 1518144570839) (:by |root) (:text |:store)
                                                  |r $ %{} :Expr (:at 1507460166408) (:by |root)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1507460191043) (:by |root) (:text |play-records)
                                                      |f $ %{} :Leaf (:at 1518144675931) (:by |root) (:text |base)
                                                      |j $ %{} :Leaf (:at 1518145407462) (:by |root) (:text |records)
                                                      |v $ %{} :Leaf (:at 1507460204218) (:by |root) (:text |updater)
                                                      |x $ %{} :Expr (:at 1518145403399) (:by |root)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1518145403987) (:by |root) (:text |dec)
                                                          |j $ %{} :Leaf (:at 1518145404788) (:by |root) (:text |idx)
                                  |z $ %{} :Expr (:at 1687780322945) (:by |Oj4l0GxFU)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1687780323565) (:by |Oj4l0GxFU) (:text |_)
                                      |b $ %{} :Expr (:at 1687780324019) (:by |Oj4l0GxFU)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1687780324019) (:by |Oj4l0GxFU) (:text |do)
                                          |b $ %{} :Expr (:at 1687780324019) (:by |Oj4l0GxFU)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1687780324019) (:by |Oj4l0GxFU) (:text |js/console.warn)
                                              |b $ %{} :Leaf (:at 1687780324019) (:by |Oj4l0GxFU) (:text "||Unknown reel/ op:")
                                              |h $ %{} :Leaf (:at 1687780324019) (:by |Oj4l0GxFU) (:text |op)
                                          |h $ %{} :Leaf (:at 1687780324019) (:by |Oj4l0GxFU) (:text |nil)
                      |v $ %{} :Expr (:at 1507357346880) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |let)
                          |j $ %{} :Expr (:at 1507357346880) (:by nil)
                            :data $ {}
                              |T $ %{} :Expr (:at 1507357346880) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |data-pack)
                                  |j $ %{} :Expr (:at 1507357346880) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |[])
                                      |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |op)
                                      |v $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |op-id)
                                      |x $ %{} :Leaf (:at 1518143311133) (:by |root) (:text |op-time)
                          |r $ %{} :Expr (:at 1507357346880) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |if)
                              |j $ %{} :Expr (:at 1507357346880) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1623957658152) (:by |Oj4l0GxFU) (:text |&map:get)
                                  |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |reel)
                                  |r $ %{} :Leaf (:at 1623957659858) (:by |Oj4l0GxFU) (:text |:stopped?)
                              |r $ %{} :Expr (:at 1507357346880) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |->)
                                  |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |reel)
                                  |r $ %{} :Expr (:at 1507357346880) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |update)
                                      |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:records)
                                      |r $ %{} :Expr (:at 1507357346880) (:by nil)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |fn)
                                          |j $ %{} :Expr (:at 1507357346880) (:by nil)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |records)
                                          |r $ %{} :Expr (:at 1507357346880) (:by nil)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |conj)
                                              |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |records)
                                              |r $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |data-pack)
                              |v $ %{} :Expr (:at 1507357346880) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |->)
                                  |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |reel)
                                  |r $ %{} :Expr (:at 1507357346880) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |assoc)
                                      |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:store)
                                      |r $ %{} :Expr (:at 1507357346880) (:by nil)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |updater)
                                          |j $ %{} :Expr (:at 1507357346880) (:by nil)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:store)
                                              |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |reel)
                                          |r $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |op)
                                          |x $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |op-id)
                                          |y $ %{} :Leaf (:at 1518143317433) (:by |root) (:text |op-time)
                                  |v $ %{} :Expr (:at 1507357346880) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |update)
                                      |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:records)
                                      |r $ %{} :Expr (:at 1507357346880) (:by nil)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |fn)
                                          |j $ %{} :Expr (:at 1507357346880) (:by nil)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |records)
                                          |r $ %{} :Expr (:at 1507357346880) (:by nil)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |conj)
                                              |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |records)
                                              |r $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |data-pack)
        |refresh-reel $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1507458176794) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1507458176794) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1507458176794) (:by |root) (:text |refresh-reel)
              |r $ %{} :Expr (:at 1507458176794) (:by |root)
                :data $ {}
                  |5 $ %{} :Leaf (:at 1507458365099) (:by |root) (:text |reel)
                  |D $ %{} :Leaf (:at 1507458239194) (:by |root) (:text |base)
                  |j $ %{} :Leaf (:at 1507458202001) (:by |root) (:text |updater)
              |v $ %{} :Expr (:at 1507460926405) (:by |root)
                :data $ {}
                  |D $ %{} :Leaf (:at 1507460931046) (:by |root) (:text |let)
                  |L $ %{} :Expr (:at 1507460932993) (:by |root)
                    :data $ {}
                      |T $ %{} :Expr (:at 1507460933177) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1507460936263) (:by |root) (:text |next-base)
                          |j $ %{} :Expr (:at 1507460790597) (:by |root)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1507460791651) (:by |root) (:text |if)
                              |L $ %{} :Expr (:at 1507460794895) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1507460797122) (:by |root) (:text |:merged?)
                                  |j $ %{} :Leaf (:at 1507460800189) (:by |root) (:text |reel)
                              |P $ %{} :Expr (:at 1507460943456) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1507460944625) (:by |root) (:text |:base)
                                  |j $ %{} :Leaf (:at 1507460945531) (:by |root) (:text |reel)
                              |T $ %{} :Leaf (:at 1507458236984) (:by |root) (:text |base)
                      |j $ %{} :Expr (:at 1518145471588) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1518145474752) (:by |root) (:text |records)
                          |j $ %{} :Expr (:at 1518145475697) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1518145476707) (:by |root) (:text |:records)
                              |j $ %{} :Leaf (:at 1518145478113) (:by |root) (:text |reel)
                  |T $ %{} :Expr (:at 1507458204933) (:by |root)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1507458208267) (:by |root) (:text |->)
                      |L $ %{} :Leaf (:at 1507458209254) (:by |root) (:text |reel)
                      |P $ %{} :Expr (:at 1507458213868) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1507460954515) (:by |root) (:text |assoc)
                          |j $ %{} :Leaf (:at 1507458219428) (:by |root) (:text |:base)
                          |r $ %{} :Leaf (:at 1507460951419) (:by |root) (:text |next-base)
                      |T $ %{} :Expr (:at 1507458210321) (:by |root)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1507458211507) (:by |root) (:text |assoc)
                          |L $ %{} :Leaf (:at 1507458212867) (:by |root) (:text |:store)
                          |T $ %{} :Expr (:at 1507455028378) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1507455031749) (:by |root) (:text |play-records)
                              |f $ %{} :Leaf (:at 1507461001586) (:by |root) (:text |next-base)
                              |n $ %{} :Leaf (:at 1518145482704) (:by |root) (:text |records)
                              |v $ %{} :Leaf (:at 1507455081738) (:by |root) (:text |updater)
                              |x $ %{} :Expr (:at 1507455093169) (:by |root)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1507455093879) (:by |root) (:text |if)
                                  |L $ %{} :Expr (:at 1507455014646) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1507455016971) (:by |root) (:text |:stopped?)
                                      |j $ %{} :Leaf (:at 1507455060390) (:by |root) (:text |reel)
                                  |P $ %{} :Expr (:at 1507455106619) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1507455107701) (:by |root) (:text |:pointer)
                                      |j $ %{} :Leaf (:at 1507455108552) (:by |root) (:text |reel)
                                  |T $ %{} :Expr (:at 1518145465491) (:by |root)
                                    :data $ {}
                                      |D $ %{} :Leaf (:at 1518145466795) (:by |root) (:text |count)
                                      |b $ %{} :Leaf (:at 1518145489149) (:by |root) (:text |records)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1507357346880) (:by nil)
          :data $ {}
            |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |reel.core)
            |r $ %{} :Expr (:at 1507357346880) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:require)
    |reel.schema $ %{} :FileEntry
      :defs $ {}
        |reel $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1507366302508) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1507366305398) (:by |root) (:text |def)
              |j $ %{} :Leaf (:at 1507366302508) (:by |root) (:text |reel)
              |r $ %{} :Expr (:at 1507357346880) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |{})
                  |j $ %{} :Expr (:at 1507357346880) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:records)
                      |j $ %{} :Expr (:at 1507357346880) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |[])
                  |r $ %{} :Expr (:at 1507357346880) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1507369668332) (:by |root) (:text |:base)
                      |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |nil)
                  |v $ %{} :Expr (:at 1507357346880) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:store)
                      |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |nil)
                  |x $ %{} :Expr (:at 1507357346880) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:pointer)
                      |j $ %{} :Leaf (:at 1507401028536) (:by |root) (:text |nil)
                  |yT $ %{} :Expr (:at 1507357346880) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:stopped?)
                      |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |false)
                  |yj $ %{} :Expr (:at 1507357346880) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:display?)
                      |j $ %{} :Leaf (:at 1507461056473) (:by |root) (:text |false)
                  |yr $ %{} :Expr (:at 1507460749234) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1507460751129) (:by |root) (:text |:merged?)
                      |j $ %{} :Leaf (:at 1507460752256) (:by |root) (:text |false)
        |store $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1507367922244) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1507368231593) (:by |root) (:text |def)
              |j $ %{} :Leaf (:at 1507367922244) (:by |root) (:text |store)
              |r $ %{} :Expr (:at 1507367922244) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1507368232794) (:by |root) (:text |{})
                  |j $ %{} :Expr (:at 1507368233092) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1507368239249) (:by |root) (:text |:states)
                      |j $ %{} :Expr (:at 1507368239668) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1507368240332) (:by |root) (:text |{})
                  |r $ %{} :Expr (:at 1507368241158) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1507368242442) (:by |root) (:text |:tasks)
                      |j $ %{} :Expr (:at 1507368242806) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1610610389170) (:by |Oj4l0GxFU) (:text |[])
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1507366292481) (:by |root)
          :data $ {}
            |T $ %{} :Leaf (:at 1507366292481) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1507366292481) (:by |root) (:text |reel.schema)
    |reel.style $ %{} :FileEntry
      :defs $ {}
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1508566716290) (:by |root)
          :data $ {}
            |T $ %{} :Leaf (:at 1508566716290) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1508566716290) (:by |root) (:text |reel.style)
    |reel.util $ %{} :FileEntry
      :defs $ {}
        |listen-devtools! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1507451494757) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1507451494757) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1507451494757) (:by |root) (:text |listen-devtools!)
              |r $ %{} :Expr (:at 1507451494757) (:by |root)
                :data $ {}
                  |D $ %{} :Leaf (:at 1507452249162) (:by |root) (:text |keyboard)
                  |T $ %{} :Leaf (:at 1507451567897) (:by |root) (:text |dispatch!)
              |v $ %{} :Expr (:at 1507451500006) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1623953224099) (:by |Oj4l0GxFU) (:text |.!addEventListener)
                  |j $ %{} :Leaf (:at 1507451507467) (:by |root) (:text |js/window)
                  |r $ %{} :Leaf (:at 1507451509323) (:by |root) (:text ||keydown)
                  |v $ %{} :Expr (:at 1507451509797) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1507451510102) (:by |root) (:text |fn)
                      |j $ %{} :Expr (:at 1507451510347) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1507451513329) (:by |root) (:text |event)
                      |r $ %{} :Expr (:at 1507451513809) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1507451514597) (:by |root) (:text |if)
                          |j $ %{} :Expr (:at 1507451534178) (:by |root)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1507451534855) (:by |root) (:text |and)
                              |L $ %{} :Expr (:at 1507451535745) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1507451543768) (:by |root) (:text |.-shiftKey)
                                  |j $ %{} :Leaf (:at 1507451542462) (:by |root) (:text |event)
                              |P $ %{} :Expr (:at 1507451544496) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1507451632357) (:by |root) (:text |.-metaKey)
                                  |j $ %{} :Leaf (:at 1507451550579) (:by |root) (:text |event)
                              |R $ %{} :Expr (:at 1615567783715) (:by |Oj4l0GxFU)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1615567788315) (:by |Oj4l0GxFU) (:text |.-altKey)
                                  |j $ %{} :Leaf (:at 1615567789295) (:by |Oj4l0GxFU) (:text |event)
                              |T $ %{} :Expr (:at 1507451523811) (:by |root)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1507451524694) (:by |root) (:text |=)
                                  |L $ %{} :Expr (:at 1507452266270) (:by |root)
                                    :data $ {}
                                      |D $ %{} :Leaf (:at 1623953194543) (:by |Oj4l0GxFU) (:text |.!charCodeAt)
                                      |T $ %{} :Expr (:at 1507452256320) (:by |root)
                                        :data $ {}
                                          |D $ %{} :Leaf (:at 1623953192920) (:by |Oj4l0GxFU) (:text |.!toUpperCase)
                                          |T $ %{} :Leaf (:at 1507452257494) (:by |root) (:text |keyboard)
                                  |T $ %{} :Expr (:at 1507451515231) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1507451518260) (:by |root) (:text |.-keyCode)
                                      |j $ %{} :Leaf (:at 1507451519440) (:by |root) (:text |event)
                          |r $ %{} :Expr (:at 1507451552341) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1507451557928) (:by |root) (:text |dispatch!)
                              |j $ %{} :Expr (:at 1688398219666) (:by |Oj4l0GxFU)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1688398220694) (:by |Oj4l0GxFU) (:text |::)
                                  |T $ %{} :Leaf (:at 1507451563128) (:by |root) (:text |:reel/toggle)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1507357346880) (:by nil)
          :data $ {}
            |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |reel.util)
            |r $ %{} :Expr (:at 1518143628490) (:by |root)
              :data $ {}
                |T $ %{} :Leaf (:at 1518143629990) (:by |root) (:text |:require)
  :ir $ {} (:package |reel)
    :files $ {}
      |reel.app.comp.container $ {}
        :defs $ {}
          |comp-container $ %{} :CodeEntry (:doc |)
            :code $ %{} :Expr (:at 1507357346880) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1507358210544) (:by |root) (:text |defcomp)
                |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |comp-container)
                |n $ %{} :Expr (:at 1507357346880) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |reel)
                |r $ %{} :Expr (:at 1507357346880) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |let)
                    |j $ %{} :Expr (:at 1507357346880) (:by nil)
                      :data $ {}
                        |T $ %{} :Expr (:at 1507357346880) (:by nil)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |store)
                            |j $ %{} :Expr (:at 1507357346880) (:by nil)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:store)
                                |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |reel)
                        |j $ %{} :Expr (:at 1507357346880) (:by nil)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |states)
                            |j $ %{} :Expr (:at 1507357346880) (:by nil)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:states)
                                |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |store)
                    |r $ %{} :Expr (:at 1507357346880) (:by nil)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |div)
                        |j $ %{} :Expr (:at 1507357346880) (:by nil)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |{})
                            |j $ %{} :Expr (:at 1507357346880) (:by nil)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1657820246283) (:by |Oj4l0GxFU) (:text |:class-name)
                                |j $ %{} :Leaf (:at 1657820244042) (:by |Oj4l0GxFU) (:text |css/global)
                        |r $ %{} :Expr (:at 1507357346880) (:by nil)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |comp-todolist)
                            |j $ %{} :Expr (:at 1590304311062) (:by |Oj4l0GxFU)
                              :data $ {}
                                |D $ %{} :Leaf (:at 1590304311733) (:by |Oj4l0GxFU) (:text |>>)
                                |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |states)
                                |j $ %{} :Leaf (:at 1590304313707) (:by |Oj4l0GxFU) (:text |:todolist)
                            |r $ %{} :Expr (:at 1507357346880) (:by nil)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:tasks)
                                |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |store)
                        |v $ %{} :Expr (:at 1507357346880) (:by nil)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |comp-reel)
                            |b $ %{} :Expr (:at 1584768677949) (:by |Oj4l0GxFU)
                              :data $ {}
                                |D $ %{} :Leaf (:at 1584768678728) (:by |Oj4l0GxFU) (:text |>>)
                                |T $ %{} :Leaf (:at 1508566100205) (:by |root) (:text |states)
                                |j $ %{} :Leaf (:at 1584768679487) (:by |Oj4l0GxFU) (:text |:reel)
                            |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |reel)
                            |r $ %{} :Leaf (:at 1508641933970) (:by |root) (:text |nil)
        :ns $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1507357346880) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |ns)
              |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |reel.app.comp.container)
              |r $ %{} :Expr (:at 1507357346880) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:require)
                  |j $ %{} :Expr (:at 1507357346880) (:by nil)
                    :data $ {}
                      |j $ %{} :Leaf (:at 1610609578128) (:by |Oj4l0GxFU) (:text |respo.util.format)
                      |r $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:refer)
                      |v $ %{} :Expr (:at 1507357346880) (:by nil)
                        :data $ {}
                          |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |hsl)
                  |r $ %{} :Expr (:at 1507357346880) (:by nil)
                    :data $ {}
                      |j $ %{} :Leaf (:at 1516431417661) (:by |root) (:text |respo-ui.core)
                      |r $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:as)
                      |v $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |ui)
                  |t $ %{} :Expr (:at 1657820224629) (:by |Oj4l0GxFU)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1657820227469) (:by |Oj4l0GxFU) (:text |respo-ui.css)
                      |b $ %{} :Leaf (:at 1657820227848) (:by |Oj4l0GxFU) (:text |:as)
                      |h $ %{} :Leaf (:at 1657820228397) (:by |Oj4l0GxFU) (:text |css)
                  |v $ %{} :Expr (:at 1507358175386) (:by |root)
                    :data $ {}
                      |j $ %{} :Leaf (:at 1540918177075) (:by |root) (:text |respo.core)
                      |r $ %{} :Leaf (:at 1507358179319) (:by |root) (:text |:refer)
                      |v $ %{} :Expr (:at 1507358179519) (:by |root)
                        :data $ {}
                          |j $ %{} :Leaf (:at 1507358184598) (:by |root) (:text |defcomp)
                          |r $ %{} :Leaf (:at 1507358186074) (:by |root) (:text |<>)
                          |t $ %{} :Leaf (:at 1584768686104) (:by |Oj4l0GxFU) (:text |>>)
                          |v $ %{} :Leaf (:at 1507358188308) (:by |root) (:text |div)
                          |x $ %{} :Leaf (:at 1507358188936) (:by |root) (:text |span)
                  |w $ %{} :Expr (:at 1657820230439) (:by |Oj4l0GxFU)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1657820232175) (:by |Oj4l0GxFU) (:text |respo.css)
                      |b $ %{} :Leaf (:at 1657820233502) (:by |Oj4l0GxFU) (:text |:refer)
                      |h $ %{} :Expr (:at 1657820233679) (:by |Oj4l0GxFU)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1657820234744) (:by |Oj4l0GxFU) (:text |defstyle)
                  |x $ %{} :Expr (:at 1507357346880) (:by nil)
                    :data $ {}
                      |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |respo.comp.space)
                      |r $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:refer)
                      |v $ %{} :Expr (:at 1507357346880) (:by nil)
                        :data $ {}
                          |j $ %{} :Leaf (:at 1507358200200) (:by |root) (:text |=<)
                  |yT $ %{} :Expr (:at 1507357346880) (:by nil)
                    :data $ {}
                      |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |reel.comp.reel)
                      |r $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:refer)
                      |v $ %{} :Expr (:at 1507357346880) (:by nil)
                        :data $ {}
                          |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |comp-reel)
                  |yj $ %{} :Expr (:at 1507357346880) (:by nil)
                    :data $ {}
                      |j $ %{} :Leaf (:at 1624006697972) (:by |Oj4l0GxFU) (:text |reel.app.comp.todolist)
                      |r $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:refer)
                      |v $ %{} :Expr (:at 1507357346880) (:by nil)
                        :data $ {}
                          |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |comp-todolist)
      |reel.app.comp.task $ {}
        :defs $ {}
          |comp-task $ %{} :CodeEntry (:doc |)
            :code $ %{} :Expr (:at 1507357346880) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1507358322100) (:by |root) (:text |defcomp)
                |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |comp-task)
                |n $ %{} :Expr (:at 1507358325362) (:by |root)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1507358326645) (:by |root) (:text |task)
                |r $ %{} :Expr (:at 1507357346880) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |div)
                    |j $ %{} :Expr (:at 1507357346880) (:by nil)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |{})
                        |j $ %{} :Expr (:at 1507357346880) (:by nil)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:style)
                            |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |style-container)
                    |r $ %{} :Expr (:at 1507357346880) (:by nil)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |div)
                        |j $ %{} :Expr (:at 1507357346880) (:by nil)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |{})
                            |b $ %{} :Expr (:at 1657820349070) (:by |Oj4l0GxFU)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1657820351510) (:by |Oj4l0GxFU) (:text |:class-name)
                                |b $ %{} :Leaf (:at 1657820351861) (:by |Oj4l0GxFU) (:text |css-done)
                            |j $ %{} :Expr (:at 1507357346880) (:by nil)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:style)
                                |j $ %{} :Expr (:at 1507357346880) (:by nil)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |if)
                                    |j $ %{} :Expr (:at 1507357346880) (:by nil)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:done?)
                                        |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |task)
                                    |r $ %{} :Expr (:at 1507357346880) (:by nil)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |{})
                                        |j $ %{} :Expr (:at 1507357346880) (:by nil)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:background-color)
                                            |j $ %{} :Expr (:at 1558450812868) (:by |Oj4l0GxFU)
                                              :data $ {}
                                                |T $ %{} :Leaf (:at 1558450818081) (:by |Oj4l0GxFU) (:text |hsl)
                                                |j $ %{} :Leaf (:at 1558450818664) (:by |Oj4l0GxFU) (:text |42)
                                                |r $ %{} :Leaf (:at 1558450819544) (:by |Oj4l0GxFU) (:text |100)
                                                |v $ %{} :Leaf (:at 1558450820012) (:by |Oj4l0GxFU) (:text |60)
                            |r $ %{} :Expr (:at 1507357346880) (:by nil)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1515690395896) (:by |root) (:text |:on-click)
                                |j $ %{} :Expr (:at 1590304272485) (:by |Oj4l0GxFU)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1590304272485) (:by |Oj4l0GxFU) (:text |fn)
                                    |j $ %{} :Expr (:at 1590304272485) (:by |Oj4l0GxFU)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1590304272485) (:by |Oj4l0GxFU) (:text |e)
                                        |j $ %{} :Leaf (:at 1590304278500) (:by |Oj4l0GxFU) (:text |d!)
                                    |r $ %{} :Expr (:at 1590304272485) (:by |Oj4l0GxFU)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1590304279355) (:by |Oj4l0GxFU) (:text |d!)
                                        |j $ %{} :Expr (:at 1688398318461) (:by |Oj4l0GxFU)
                                          :data $ {}
                                            |D $ %{} :Leaf (:at 1688398319087) (:by |Oj4l0GxFU) (:text |::)
                                            |T $ %{} :Leaf (:at 1590304272485) (:by |Oj4l0GxFU) (:text |:task/toggle)
                                            |b $ %{} :Expr (:at 1688398321279) (:by |Oj4l0GxFU)
                                              :data $ {}
                                                |T $ %{} :Leaf (:at 1688398321279) (:by |Oj4l0GxFU) (:text |:id)
                                                |b $ %{} :Leaf (:at 1688398321279) (:by |Oj4l0GxFU) (:text |task)
                    |v $ %{} :Expr (:at 1507357346880) (:by nil)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1507358339946) (:by |root) (:text |=<)
                        |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |8)
                        |r $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |nil)
                    |x $ %{} :Expr (:at 1507357346880) (:by nil)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |input)
                        |j $ %{} :Expr (:at 1507357346880) (:by nil)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |{})
                            |p $ %{} :Expr (:at 1507357346880) (:by nil)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:placeholder)
                                |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text "||Content of task")
                            |pT $ %{} :Expr (:at 1657820363166) (:by |Oj4l0GxFU)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1657820365113) (:by |Oj4l0GxFU) (:text |:class-name)
                                |b $ %{} :Leaf (:at 1657820366487) (:by |Oj4l0GxFU) (:text |css/input)
                            |q $ %{} :Expr (:at 1657820360444) (:by |Oj4l0GxFU)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1657820360444) (:by |Oj4l0GxFU) (:text |:value)
                                |b $ %{} :Expr (:at 1657820360444) (:by |Oj4l0GxFU)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1657820360444) (:by |Oj4l0GxFU) (:text |:text)
                                    |b $ %{} :Leaf (:at 1657820360444) (:by |Oj4l0GxFU) (:text |task)
                            |r $ %{} :Expr (:at 1507357346880) (:by nil)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1515690392313) (:by |root) (:text |:on-input)
                                |j $ %{} :Expr (:at 1590304239489) (:by |Oj4l0GxFU)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1590304239489) (:by |Oj4l0GxFU) (:text |fn)
                                    |j $ %{} :Expr (:at 1590304239489) (:by |Oj4l0GxFU)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1590304239489) (:by |Oj4l0GxFU) (:text |e)
                                        |j $ %{} :Leaf (:at 1590304247523) (:by |Oj4l0GxFU) (:text |d!)
                                    |r $ %{} :Expr (:at 1590304239489) (:by |Oj4l0GxFU)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1590304246494) (:by |Oj4l0GxFU) (:text |d!)
                                        |r $ %{} :Expr (:at 1590304239489) (:by |Oj4l0GxFU)
                                          :data $ {}
                                            |L $ %{} :Leaf (:at 1687780828092) (:by |Oj4l0GxFU) (:text |::)
                                            |X $ %{} :Leaf (:at 1687780826162) (:by |Oj4l0GxFU) (:text |:task/edit)
                                            |j $ %{} :Expr (:at 1590304242852) (:by |Oj4l0GxFU)
                                              :data $ {}
                                                |T $ %{} :Leaf (:at 1590304243932) (:by |Oj4l0GxFU) (:text |:id)
                                                |j $ %{} :Leaf (:at 1590304244538) (:by |Oj4l0GxFU) (:text |task)
                                            |r $ %{} :Expr (:at 1590304239489) (:by |Oj4l0GxFU)
                                              :data $ {}
                                                |T $ %{} :Leaf (:at 1590304239489) (:by |Oj4l0GxFU) (:text |:value)
                                                |j $ %{} :Leaf (:at 1590304239489) (:by |Oj4l0GxFU) (:text |e)
                    |y $ %{} :Expr (:at 1507357346880) (:by nil)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1507358337527) (:by |root) (:text |=<)
                        |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |8)
                        |r $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |nil)
                    |yT $ %{} :Expr (:at 1507357346880) (:by nil)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |button)
                        |j $ %{} :Expr (:at 1507357346880) (:by nil)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |{})
                            |b $ %{} :Expr (:at 1657820372412) (:by |Oj4l0GxFU)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1657820374127) (:by |Oj4l0GxFU) (:text |:class-name)
                                |b $ %{} :Leaf (:at 1657820376274) (:by |Oj4l0GxFU) (:text |css/button)
                            |j $ %{} :Expr (:at 1507357346880) (:by nil)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:style)
                                |j $ %{} :Expr (:at 1507357346880) (:by nil)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |{})
                                    |j $ %{} :Expr (:at 1507357346880) (:by nil)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:background-color)
                                        |j $ %{} :Expr (:at 1558450826662) (:by |Oj4l0GxFU)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1558450827855) (:by |Oj4l0GxFU) (:text |hsl)
                                            |j $ %{} :Leaf (:at 1558450828403) (:by |Oj4l0GxFU) (:text |6)
                                            |r $ %{} :Leaf (:at 1558450829747) (:by |Oj4l0GxFU) (:text |100)
                                            |v $ %{} :Leaf (:at 1558450830369) (:by |Oj4l0GxFU) (:text |60)
                                    |r $ %{} :Expr (:at 1558451406306) (:by |Oj4l0GxFU)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1558451411923) (:by |Oj4l0GxFU) (:text |:color)
                                        |j $ %{} :Leaf (:at 1558451410374) (:by |Oj4l0GxFU) (:text |:white)
                                    |v $ %{} :Expr (:at 1558451415837) (:by |Oj4l0GxFU)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1558451417312) (:by |Oj4l0GxFU) (:text |:border)
                                        |j $ %{} :Leaf (:at 1558451421784) (:by |Oj4l0GxFU) (:text |:none)
                            |r $ %{} :Expr (:at 1507357346880) (:by nil)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1515690401224) (:by |root) (:text |:on-click)
                                |j $ %{} :Expr (:at 1590304256495) (:by |Oj4l0GxFU)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1590304256495) (:by |Oj4l0GxFU) (:text |fn)
                                    |j $ %{} :Expr (:at 1590304256495) (:by |Oj4l0GxFU)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1590304256495) (:by |Oj4l0GxFU) (:text |e)
                                        |j $ %{} :Leaf (:at 1590304262402) (:by |Oj4l0GxFU) (:text |d!)
                                    |r $ %{} :Expr (:at 1590304256495) (:by |Oj4l0GxFU)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1590304263087) (:by |Oj4l0GxFU) (:text |d!)
                                        |j $ %{} :Expr (:at 1687781013018) (:by |Oj4l0GxFU)
                                          :data $ {}
                                            |D $ %{} :Leaf (:at 1687781014782) (:by |Oj4l0GxFU) (:text |::)
                                            |T $ %{} :Leaf (:at 1590304256495) (:by |Oj4l0GxFU) (:text |:task/remove)
                                            |b $ %{} :Expr (:at 1687781017368) (:by |Oj4l0GxFU)
                                              :data $ {}
                                                |T $ %{} :Leaf (:at 1687781017368) (:by |Oj4l0GxFU) (:text |:id)
                                                |b $ %{} :Leaf (:at 1687781017368) (:by |Oj4l0GxFU) (:text |task)
                        |r $ %{} :Expr (:at 1507357346880) (:by nil)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1507358342151) (:by |root) (:text |<>)
                            |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text ||Remove)
          |css-done $ %{} :CodeEntry (:doc |)
            :code $ %{} :Expr (:at 1507357346880) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1657820340018) (:by |Oj4l0GxFU) (:text |defstyle)
                |j $ %{} :Leaf (:at 1657820320736) (:by |Oj4l0GxFU) (:text |css-done)
                |r $ %{} :Expr (:at 1657820340669) (:by |Oj4l0GxFU)
                  :data $ {}
                    |D $ %{} :Leaf (:at 1657820341141) (:by |Oj4l0GxFU) (:text |{})
                    |T $ %{} :Expr (:at 1657820342279) (:by |Oj4l0GxFU)
                      :data $ {}
                        |D $ %{} :Leaf (:at 1657820343622) (:by |Oj4l0GxFU) (:text "|\"$0")
                        |T $ %{} :Expr (:at 1507357346880) (:by nil)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |{})
                            |j $ %{} :Expr (:at 1507357346880) (:by nil)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:width)
                                |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |32)
                            |r $ %{} :Expr (:at 1507357346880) (:by nil)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:height)
                                |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |32)
                            |v $ %{} :Expr (:at 1507357346880) (:by nil)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:display)
                                |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:inline-block)
                            |x $ %{} :Expr (:at 1507357346880) (:by nil)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:background-color)
                                |j $ %{} :Expr (:at 1558450801069) (:by |Oj4l0GxFU)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1558450801800) (:by |Oj4l0GxFU) (:text |hsl)
                                    |j $ %{} :Leaf (:at 1558451493925) (:by |Oj4l0GxFU) (:text |220)
                                    |r $ %{} :Leaf (:at 1558451496673) (:by |Oj4l0GxFU) (:text |100)
                                    |v $ %{} :Leaf (:at 1558451498489) (:by |Oj4l0GxFU) (:text |76)
                            |y $ %{} :Expr (:at 1508646867274) (:by |root)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1508646868892) (:by |root) (:text |:cursor)
                                |j $ %{} :Leaf (:at 1508646870114) (:by |root) (:text |:pointer)
          |style-container $ %{} :CodeEntry (:doc |)
            :code $ %{} :Expr (:at 1507357346880) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |def)
                |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |style-container)
                |r $ %{} :Expr (:at 1507357346880) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |{})
                    |j $ %{} :Expr (:at 1507357346880) (:by nil)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:margin)
                        |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text "||8px 0")
                    |r $ %{} :Expr (:at 1507357346880) (:by nil)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:height)
                        |j $ %{} :Leaf (:at 1623953414162) (:by |Oj4l0GxFU) (:text "|\"32px")
        :ns $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1507357346880) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |ns)
              |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |reel.app.comp.task)
              |r $ %{} :Expr (:at 1507357346880) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:require)
                  |j $ %{} :Expr (:at 1507358278005) (:by |root)
                    :data $ {}
                      |j $ %{} :Leaf (:at 1540918191585) (:by |root) (:text |respo.core)
                      |r $ %{} :Leaf (:at 1507358281703) (:by |root) (:text |:refer)
                      |v $ %{} :Expr (:at 1507358281878) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1507358284967) (:by |root) (:text |[])
                          |b $ %{} :Leaf (:at 1507358289368) (:by |root) (:text |defcomp)
                          |f $ %{} :Leaf (:at 1507358289810) (:by |root) (:text |<>)
                          |j $ %{} :Leaf (:at 1507358286956) (:by |root) (:text |div)
                          |r $ %{} :Leaf (:at 1507358885670) (:by |root) (:text |button)
                          |v $ %{} :Leaf (:at 1507358912688) (:by |root) (:text |input)
                  |n $ %{} :Expr (:at 1657820322926) (:by |Oj4l0GxFU)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1657820324522) (:by |Oj4l0GxFU) (:text |respo.css)
                      |b $ %{} :Leaf (:at 1657820325248) (:by |Oj4l0GxFU) (:text |:refer)
                      |h $ %{} :Expr (:at 1657820325444) (:by |Oj4l0GxFU)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1657820327547) (:by |Oj4l0GxFU) (:text |defstyle)
                  |r $ %{} :Expr (:at 1507357346880) (:by nil)
                    :data $ {}
                      |j $ %{} :Leaf (:at 1610609567121) (:by |Oj4l0GxFU) (:text |respo.util.format)
                      |r $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:refer)
                      |v $ %{} :Expr (:at 1507357346880) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |[])
                          |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |hsl)
                  |x $ %{} :Expr (:at 1507357346880) (:by nil)
                    :data $ {}
                      |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |respo.comp.space)
                      |r $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:refer)
                      |v $ %{} :Expr (:at 1507357346880) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |[])
                          |j $ %{} :Leaf (:at 1507358306265) (:by |root) (:text |=<)
                  |y $ %{} :Expr (:at 1507357346880) (:by nil)
                    :data $ {}
                      |j $ %{} :Leaf (:at 1516431439001) (:by |root) (:text |respo-ui.core)
                      |r $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:as)
                      |v $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |ui)
                  |z $ %{} :Expr (:at 1657820330282) (:by |Oj4l0GxFU)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1657820336063) (:by |Oj4l0GxFU) (:text |respo-ui.css)
                      |b $ %{} :Leaf (:at 1657820336780) (:by |Oj4l0GxFU) (:text |:as)
                      |h $ %{} :Leaf (:at 1657820337500) (:by |Oj4l0GxFU) (:text |css)
      |reel.app.comp.todolist $ {}
        :defs $ {}
          |comp-todolist $ %{} :CodeEntry (:doc |)
            :code $ %{} :Expr (:at 1507357346880) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1507358791511) (:by |root) (:text |defcomp)
                |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |comp-todolist)
                |n $ %{} :Expr (:at 1507357346880) (:by nil)
                  :data $ {}
                    |5 $ %{} :Leaf (:at 1507358868886) (:by |root) (:text |states)
                    |D $ %{} :Leaf (:at 1507358849249) (:by |root) (:text |tasks)
                |r $ %{} :Expr (:at 1507357346880) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |let)
                    |j $ %{} :Expr (:at 1507357346880) (:by nil)
                      :data $ {}
                        |D $ %{} :Expr (:at 1590304171515) (:by |Oj4l0GxFU)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1590304172927) (:by |Oj4l0GxFU) (:text |cursor)
                            |j $ %{} :Expr (:at 1590304173132) (:by |Oj4l0GxFU)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1590304175376) (:by |Oj4l0GxFU) (:text |:cursor)
                                |j $ %{} :Leaf (:at 1590304177217) (:by |Oj4l0GxFU) (:text |states)
                        |T $ %{} :Expr (:at 1507357346880) (:by nil)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |state)
                            |j $ %{} :Expr (:at 1507357346880) (:by nil)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1610611924304) (:by |Oj4l0GxFU) (:text |either)
                                |j $ %{} :Expr (:at 1507357346880) (:by nil)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:data)
                                    |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |states)
                                |r $ %{} :Leaf (:at 1507357346880) (:by |root) (:text ||)
                    |r $ %{} :Expr (:at 1507357346880) (:by nil)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |div)
                        |j $ %{} :Expr (:at 1507357346880) (:by nil)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |{})
                            |j $ %{} :Expr (:at 1507357346880) (:by nil)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1657820253215) (:by |Oj4l0GxFU) (:text |:class-name)
                                |j $ %{} :Expr (:at 1508568973621) (:by |root)
                                  :data $ {}
                                    |D $ %{} :Leaf (:at 1657820258109) (:by |Oj4l0GxFU) (:text |str-spaced)
                                    |L $ %{} :Leaf (:at 1657820260806) (:by |Oj4l0GxFU) (:text |css/fullscreen)
                                    |T $ %{} :Leaf (:at 1657820293728) (:by |Oj4l0GxFU) (:text |css-container)
                        |r $ %{} :Expr (:at 1507357346880) (:by nil)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |div)
                            |j $ %{} :Expr (:at 1507357346880) (:by nil)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |{})
                            |r $ %{} :Expr (:at 1507357346880) (:by nil)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |input)
                                |j $ %{} :Expr (:at 1507357346880) (:by nil)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |{})
                                    |b $ %{} :Expr (:at 1507357346880) (:by nil)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:placeholder)
                                        |j $ %{} :Leaf (:at 1507368472373) (:by |root) (:text "||Task to add...")
                                    |f $ %{} :Expr (:at 1507357346880) (:by nil)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:value)
                                        |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |state)
                                    |j $ %{} :Expr (:at 1507357346880) (:by nil)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1657820298098) (:by |Oj4l0GxFU) (:text |:class-name)
                                        |j $ %{} :Leaf (:at 1657820299431) (:by |Oj4l0GxFU) (:text |css/input)
                                    |r $ %{} :Expr (:at 1507357346880) (:by nil)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1515690437585) (:by |root) (:text |:on-input)
                                        |j $ %{} :Expr (:at 1590304166953) (:by |Oj4l0GxFU)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1590304167293) (:by |Oj4l0GxFU) (:text |fn)
                                            |j $ %{} :Expr (:at 1590304168080) (:by |Oj4l0GxFU)
                                              :data $ {}
                                                |T $ %{} :Leaf (:at 1590304167752) (:by |Oj4l0GxFU) (:text |e)
                                                |j $ %{} :Leaf (:at 1590304169075) (:by |Oj4l0GxFU) (:text |d!)
                                            |r $ %{} :Expr (:at 1590304169958) (:by |Oj4l0GxFU)
                                              :data $ {}
                                                |T $ %{} :Leaf (:at 1590304169958) (:by |Oj4l0GxFU) (:text |d!)
                                                |j $ %{} :Expr (:at 1688398340139) (:by |Oj4l0GxFU)
                                                  :data $ {}
                                                    |D $ %{} :Leaf (:at 1688398340931) (:by |Oj4l0GxFU) (:text |::)
                                                    |L $ %{} :Leaf (:at 1688398343891) (:by |Oj4l0GxFU) (:text |:states)
                                                    |T $ %{} :Leaf (:at 1590304169958) (:by |Oj4l0GxFU) (:text |cursor)
                                                    |b $ %{} :Expr (:at 1688398347242) (:by |Oj4l0GxFU)
                                                      :data $ {}
                                                        |T $ %{} :Leaf (:at 1688398347242) (:by |Oj4l0GxFU) (:text |:value)
                                                        |b $ %{} :Leaf (:at 1688398347242) (:by |Oj4l0GxFU) (:text |e)
                                    |v $ %{} :Expr (:at 1508644894529) (:by |root)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1515690440441) (:by |root) (:text |:on-keydown)
                                        |j $ %{} :Expr (:at 1508644901092) (:by |root)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1508644902692) (:by |root) (:text |fn)
                                            |j $ %{} :Expr (:at 1508644903023) (:by |root)
                                              :data $ {}
                                                |T $ %{} :Leaf (:at 1508644903229) (:by |root) (:text |e)
                                                |j $ %{} :Leaf (:at 1508644904639) (:by |root) (:text |d!)
                                            |r $ %{} :Expr (:at 1508644929146) (:by |root)
                                              :data $ {}
                                                |D $ %{} :Leaf (:at 1508644929838) (:by |root) (:text |if)
                                                |L $ %{} :Expr (:at 1508644930067) (:by |root)
                                                  :data $ {}
                                                    |T $ %{} :Leaf (:at 1508644930417) (:by |root) (:text |=)
                                                    |j $ %{} :Expr (:at 1508644931675) (:by |root)
                                                      :data $ {}
                                                        |T $ %{} :Leaf (:at 1508644932666) (:by |root) (:text |:keycode)
                                                        |j $ %{} :Leaf (:at 1508644932950) (:by |root) (:text |e)
                                                    |r $ %{} :Leaf (:at 1558452617077) (:by |Oj4l0GxFU) (:text |13)
                                                |T $ %{} :Expr (:at 1508644939608) (:by |root)
                                                  :data $ {}
                                                    |D $ %{} :Leaf (:at 1508644940231) (:by |root) (:text |do)
                                                    |T $ %{} :Expr (:at 1507357346880) (:by nil)
                                                      :data $ {}
                                                        |T $ %{} :Leaf (:at 1508644981466) (:by |root) (:text |d!)
                                                        |j $ %{} :Expr (:at 1688398350733) (:by |Oj4l0GxFU)
                                                          :data $ {}
                                                            |D $ %{} :Leaf (:at 1688398351456) (:by |Oj4l0GxFU) (:text |::)
                                                            |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:task/add)
                                                            |b $ %{} :Leaf (:at 1688398353897) (:by |Oj4l0GxFU) (:text |state)
                                                    |j $ %{} :Expr (:at 1507366069752) (:by |root)
                                                      :data $ {}
                                                        |T $ %{} :Leaf (:at 1590304130347) (:by |Oj4l0GxFU) (:text |d!)
                                                        |b $ %{} :Expr (:at 1688398357156) (:by |Oj4l0GxFU)
                                                          :data $ {}
                                                            |D $ %{} :Leaf (:at 1688398358158) (:by |Oj4l0GxFU) (:text |::)
                                                            |L $ %{} :Leaf (:at 1688398364256) (:by |Oj4l0GxFU) (:text |:states)
                                                            |T $ %{} :Expr (:at 1590304134750) (:by |Oj4l0GxFU)
                                                              :data $ {}
                                                                |T $ %{} :Leaf (:at 1590304135116) (:by |Oj4l0GxFU) (:text |[])
                                                            |b $ %{} :Leaf (:at 1688398360042) (:by |Oj4l0GxFU) (:text ||)
                            |v $ %{} :Expr (:at 1507357346880) (:by nil)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1507358820823) (:by |root) (:text |=<)
                                |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |8)
                                |r $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |nil)
                            |x $ %{} :Expr (:at 1507357346880) (:by nil)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |button)
                                |j $ %{} :Expr (:at 1507357346880) (:by nil)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |{})
                                    |j $ %{} :Expr (:at 1507357346880) (:by nil)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1657820304175) (:by |Oj4l0GxFU) (:text |:class-name)
                                        |j $ %{} :Leaf (:at 1657820305584) (:by |Oj4l0GxFU) (:text |css/button)
                                    |r $ %{} :Expr (:at 1507357346880) (:by nil)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1515690431926) (:by |root) (:text |:on-click)
                                        |j $ %{} :Expr (:at 1590304196912) (:by |Oj4l0GxFU)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1590304196912) (:by |Oj4l0GxFU) (:text |fn)
                                            |j $ %{} :Expr (:at 1590304196912) (:by |Oj4l0GxFU)
                                              :data $ {}
                                                |T $ %{} :Leaf (:at 1590304196912) (:by |Oj4l0GxFU) (:text |e)
                                                |j $ %{} :Leaf (:at 1590304206777) (:by |Oj4l0GxFU) (:text |d!)
                                            |r $ %{} :Expr (:at 1590304196912) (:by |Oj4l0GxFU)
                                              :data $ {}
                                                |T $ %{} :Leaf (:at 1590304208204) (:by |Oj4l0GxFU) (:text |d!)
                                                |j $ %{} :Expr (:at 1688398366172) (:by |Oj4l0GxFU)
                                                  :data $ {}
                                                    |D $ %{} :Leaf (:at 1688398366861) (:by |Oj4l0GxFU) (:text |::)
                                                    |T $ %{} :Leaf (:at 1590304196912) (:by |Oj4l0GxFU) (:text |:task/add)
                                                    |b $ %{} :Leaf (:at 1688398368665) (:by |Oj4l0GxFU) (:text |state)
                                            |v $ %{} :Expr (:at 1590304196912) (:by |Oj4l0GxFU)
                                              :data $ {}
                                                |T $ %{} :Leaf (:at 1590304200024) (:by |Oj4l0GxFU) (:text |d!)
                                                |b $ %{} :Expr (:at 1688398372269) (:by |Oj4l0GxFU)
                                                  :data $ {}
                                                    |D $ %{} :Leaf (:at 1688398373145) (:by |Oj4l0GxFU) (:text |::)
                                                    |L $ %{} :Leaf (:at 1688398490023) (:by |Oj4l0GxFU) (:text |:states)
                                                    |T $ %{} :Leaf (:at 1590304201427) (:by |Oj4l0GxFU) (:text |cursor)
                                                    |b $ %{} :Leaf (:at 1688398377739) (:by |Oj4l0GxFU) (:text ||)
                                |r $ %{} :Expr (:at 1507357346880) (:by nil)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1507358827886) (:by |root) (:text |<>)
                                    |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text ||Add)
                        |v $ %{} :Expr (:at 1507357346880) (:by nil)
                          :data $ {}
                            |D $ %{} :Leaf (:at 1509190185032) (:by |root) (:text |list->)
                            |j $ %{} :Expr (:at 1507357346880) (:by nil)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |{})
                            |r $ %{} :Expr (:at 1507357346880) (:by nil)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1619600081223) (:by |Oj4l0GxFU) (:text |->)
                                |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |tasks)
                                |r $ %{} :Expr (:at 1507357346880) (:by nil)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |map)
                                    |j $ %{} :Expr (:at 1507357346880) (:by nil)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |fn)
                                        |j $ %{} :Expr (:at 1507357346880) (:by nil)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |task)
                                        |r $ %{} :Expr (:at 1507357346880) (:by nil)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |[])
                                            |j $ %{} :Expr (:at 1507357346880) (:by nil)
                                              :data $ {}
                                                |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:id)
                                                |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |task)
                                            |r $ %{} :Expr (:at 1507357346880) (:by nil)
                                              :data $ {}
                                                |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |comp-task)
                                                |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |task)
          |css-container $ %{} :CodeEntry (:doc |)
            :code $ %{} :Expr (:at 1507357346880) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1657820267489) (:by |Oj4l0GxFU) (:text |defstyle)
                |j $ %{} :Leaf (:at 1657820265963) (:by |Oj4l0GxFU) (:text |css-container)
                |r $ %{} :Expr (:at 1657820287496) (:by |Oj4l0GxFU)
                  :data $ {}
                    |D $ %{} :Leaf (:at 1657820288023) (:by |Oj4l0GxFU) (:text |{})
                    |T $ %{} :Expr (:at 1657820289412) (:by |Oj4l0GxFU)
                      :data $ {}
                        |D $ %{} :Leaf (:at 1657820290677) (:by |Oj4l0GxFU) (:text "|\"$0")
                        |T $ %{} :Expr (:at 1507357346880) (:by nil)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |{})
                            |j $ %{} :Expr (:at 1507357346880) (:by nil)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:padding)
                                |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |8)
                            |r $ %{} :Expr (:at 1508568996559) (:by |root)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1508569001928) (:by |root) (:text |:overflow)
                                |j $ %{} :Leaf (:at 1508569213513) (:by |root) (:text |:auto)
        :ns $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1507357346880) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |ns)
              |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |reel.app.comp.todolist)
              |r $ %{} :Expr (:at 1507357346880) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:require)
                  |j $ %{} :Expr (:at 1507358243098) (:by |root)
                    :data $ {}
                      |j $ %{} :Leaf (:at 1540918197472) (:by |root) (:text |respo.core)
                      |r $ %{} :Leaf (:at 1507358247620) (:by |root) (:text |:refer)
                      |v $ %{} :Expr (:at 1507358247812) (:by |root)
                        :data $ {}
                          |j $ %{} :Leaf (:at 1507358252645) (:by |root) (:text |defcomp)
                          |r $ %{} :Leaf (:at 1507358253329) (:by |root) (:text |<>)
                          |v $ %{} :Leaf (:at 1507358254041) (:by |root) (:text |div)
                          |x $ %{} :Leaf (:at 1507358254625) (:by |root) (:text |span)
                          |y $ %{} :Leaf (:at 1507358256166) (:by |root) (:text |button)
                          |yT $ %{} :Leaf (:at 1507358257458) (:by |root) (:text |input)
                          |yj $ %{} :Leaf (:at 1509190192632) (:by |root) (:text |list->)
                  |p $ %{} :Expr (:at 1657820270484) (:by |Oj4l0GxFU)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1657820272224) (:by |Oj4l0GxFU) (:text |respo.css)
                      |b $ %{} :Leaf (:at 1657820273849) (:by |Oj4l0GxFU) (:text |:refer)
                      |h $ %{} :Expr (:at 1657820274157) (:by |Oj4l0GxFU)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1657820275207) (:by |Oj4l0GxFU) (:text |defstyle)
                  |v $ %{} :Expr (:at 1507357346880) (:by nil)
                    :data $ {}
                      |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |respo.comp.space)
                      |r $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:refer)
                      |v $ %{} :Expr (:at 1507357346880) (:by nil)
                        :data $ {}
                          |j $ %{} :Leaf (:at 1507358270511) (:by |root) (:text |=<)
                  |x $ %{} :Expr (:at 1507357346880) (:by nil)
                    :data $ {}
                      |j $ %{} :Leaf (:at 1516431448087) (:by |root) (:text |respo-ui.core)
                      |r $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:as)
                      |v $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |ui)
                  |xT $ %{} :Expr (:at 1657820276956) (:by |Oj4l0GxFU)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1657820279046) (:by |Oj4l0GxFU) (:text |respo-ui.css)
                      |b $ %{} :Leaf (:at 1657820279413) (:by |Oj4l0GxFU) (:text |:as)
                      |h $ %{} :Leaf (:at 1657820280011) (:by |Oj4l0GxFU) (:text |css)
                  |y $ %{} :Expr (:at 1507357346880) (:by nil)
                    :data $ {}
                      |j $ %{} :Leaf (:at 1624006726100) (:by |Oj4l0GxFU) (:text |reel.app.comp.task)
                      |r $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:refer)
                      |v $ %{} :Expr (:at 1507357346880) (:by nil)
                        :data $ {}
                          |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |comp-task)
      |reel.app.main $ {}
        :defs $ {}
          |*reel $ %{} :CodeEntry (:doc |)
            :code $ %{} :Expr (:at 1507357346880) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1610610644089) (:by |Oj4l0GxFU) (:text |defatom)
                |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |*reel)
                |r $ %{} :Expr (:at 1507357346880) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |->)
                    |j $ %{} :Leaf (:at 1507366360382) (:by |root) (:text |schema/reel)
                    |r $ %{} :Expr (:at 1507357346880) (:by nil)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |assoc)
                        |j $ %{} :Leaf (:at 1507369658184) (:by |root) (:text |:base)
                        |r $ %{} :Leaf (:at 1507367971855) (:by |root) (:text |schema/store)
                    |v $ %{} :Expr (:at 1507357346880) (:by nil)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |assoc)
                        |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:store)
                        |r $ %{} :Leaf (:at 1507367940679) (:by |root) (:text |schema/store)
                    |x $ %{} :Expr (:at 1507461076178) (:by |root)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1507461080271) (:by |root) (:text |assoc)
                        |j $ %{} :Leaf (:at 1507461082449) (:by |root) (:text |:display?)
                        |r $ %{} :Leaf (:at 1508651996720) (:by |root) (:text |false)
          |dispatch! $ %{} :CodeEntry (:doc |)
            :code $ %{} :Expr (:at 1507357346880) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |defn)
                |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |dispatch!)
                |r $ %{} :Expr (:at 1507357346880) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |op)
                |v $ %{} :Expr (:at 1507357346880) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |println)
                    |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text ||Dispatch!)
                    |r $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |op)
                |x $ %{} :Expr (:at 1507357346880) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |let)
                    |j $ %{} :Expr (:at 1507357346880) (:by nil)
                      :data $ {}
                        |j $ %{} :Expr (:at 1507357346880) (:by nil)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |new-reel)
                            |j $ %{} :Expr (:at 1507357346880) (:by nil)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |reel-updater)
                                |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |updater)
                                |r $ %{} :Leaf (:at 1507365961033) (:by |root) (:text |@*reel)
                                |v $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |op)
                    |r $ %{} :Expr (:at 1507357346880) (:by nil)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |;)
                        |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |println)
                        |r $ %{} :Leaf (:at 1507357346880) (:by |root) (:text ||Reel:)
                        |v $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |new-reel)
                    |v $ %{} :Expr (:at 1507357346880) (:by nil)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |reset!)
                        |j $ %{} :Leaf (:at 1507365999031) (:by |root) (:text |*reel)
                        |r $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |new-reel)
          |main! $ %{} :CodeEntry (:doc |)
            :code $ %{} :Expr (:at 1507357346880) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |defn)
                |j $ %{} :Leaf (:at 1507358605615) (:by |root) (:text |main!)
                |r $ %{} :Expr (:at 1507357346880) (:by nil)
                  :data $ {}
                |u $ %{} :Expr (:at 1623953743812) (:by |Oj4l0GxFU)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1623953749594) (:by |Oj4l0GxFU) (:text |load-console-formatter!)
                |y $ %{} :Expr (:at 1507357346880) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |render-app!)
                |yT $ %{} :Expr (:at 1507357346880) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |add-watch)
                    |j $ %{} :Leaf (:at 1507365935160) (:by |root) (:text |*reel)
                    |r $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:changes)
                    |v $ %{} :Expr (:at 1507358593848) (:by |root)
                      :data $ {}
                        |D $ %{} :Leaf (:at 1507358594488) (:by |root) (:text |fn)
                        |L $ %{} :Expr (:at 1507358594755) (:by |root)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1612764336954) (:by |Oj4l0GxFU) (:text |reel)
                            |j $ %{} :Leaf (:at 1612764337594) (:by |Oj4l0GxFU) (:text |prev)
                        |T $ %{} :Expr (:at 1507358596685) (:by |root)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |render-app!)
                |yf $ %{} :Expr (:at 1507451576440) (:by |root)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1507451577129) (:by |root) (:text |listen-devtools!)
                    |b $ %{} :Leaf (:at 1615567741765) (:by |Oj4l0GxFU) (:text ||k)
                    |j $ %{} :Leaf (:at 1507451579448) (:by |root) (:text |dispatch!)
                |yh $ %{} :Expr (:at 1540958305572) (:by |root)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1540958305572) (:by |root) (:text |dispatch!)
                    |j $ %{} :Expr (:at 1687780422248) (:by |Oj4l0GxFU)
                      :data $ {}
                        |D $ %{} :Leaf (:at 1687780428960) (:by |Oj4l0GxFU) (:text |::)
                        |T $ %{} :Leaf (:at 1687780429839) (:by |Oj4l0GxFU) (:text |:reel/toggle)
                |yj $ %{} :Expr (:at 1507357346880) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |println)
                    |j $ %{} :Leaf (:at 1507358601099) (:by |root) (:text "||App started!")
          |mount-target $ %{} :CodeEntry (:doc |)
            :code $ %{} :Expr (:at 1507358657837) (:by |root)
              :data $ {}
                |T $ %{} :Leaf (:at 1507358658932) (:by |root) (:text |def)
                |j $ %{} :Leaf (:at 1507358657837) (:by |root) (:text |mount-target)
                |r $ %{} :Expr (:at 1507357346880) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |.querySelector)
                    |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |js/document)
                    |r $ %{} :Leaf (:at 1507358662749) (:by |root) (:text ||.app)
          |reload! $ %{} :CodeEntry (:doc |)
            :code $ %{} :Expr (:at 1657820628160) (:by |Oj4l0GxFU)
              :data $ {}
                |T $ %{} :Leaf (:at 1657820628160) (:by |Oj4l0GxFU) (:text |defn)
                |b $ %{} :Leaf (:at 1657820628160) (:by |Oj4l0GxFU) (:text |reload!)
                |h $ %{} :Expr (:at 1657820628160) (:by |Oj4l0GxFU)
                  :data $ {}
                |l $ %{} :Expr (:at 1657820628160) (:by |Oj4l0GxFU)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1657820628160) (:by |Oj4l0GxFU) (:text |if)
                    |b $ %{} :Expr (:at 1657820628160) (:by |Oj4l0GxFU)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1657820628160) (:by |Oj4l0GxFU) (:text |nil?)
                        |b $ %{} :Leaf (:at 1657820628160) (:by |Oj4l0GxFU) (:text |build-errors)
                    |h $ %{} :Expr (:at 1657820628160) (:by |Oj4l0GxFU)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1657820628160) (:by |Oj4l0GxFU) (:text |do)
                        |b $ %{} :Expr (:at 1657820628160) (:by |Oj4l0GxFU)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1657820628160) (:by |Oj4l0GxFU) (:text |remove-watch)
                            |b $ %{} :Leaf (:at 1657820628160) (:by |Oj4l0GxFU) (:text |*reel)
                            |h $ %{} :Leaf (:at 1657820628160) (:by |Oj4l0GxFU) (:text |:changes)
                        |h $ %{} :Expr (:at 1657820628160) (:by |Oj4l0GxFU)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1657820628160) (:by |Oj4l0GxFU) (:text |clear-cache!)
                        |l $ %{} :Expr (:at 1657820628160) (:by |Oj4l0GxFU)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1657820628160) (:by |Oj4l0GxFU) (:text |add-watch)
                            |b $ %{} :Leaf (:at 1657820628160) (:by |Oj4l0GxFU) (:text |*reel)
                            |h $ %{} :Leaf (:at 1657820628160) (:by |Oj4l0GxFU) (:text |:changes)
                            |l $ %{} :Expr (:at 1657820628160) (:by |Oj4l0GxFU)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1657820628160) (:by |Oj4l0GxFU) (:text |fn)
                                |b $ %{} :Expr (:at 1657820628160) (:by |Oj4l0GxFU)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1657820628160) (:by |Oj4l0GxFU) (:text |reel)
                                    |b $ %{} :Leaf (:at 1657820628160) (:by |Oj4l0GxFU) (:text |prev)
                                |h $ %{} :Expr (:at 1657820628160) (:by |Oj4l0GxFU)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1657820628160) (:by |Oj4l0GxFU) (:text |render-app!)
                        |o $ %{} :Expr (:at 1657820628160) (:by |Oj4l0GxFU)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1657820628160) (:by |Oj4l0GxFU) (:text |reset!)
                            |b $ %{} :Leaf (:at 1657820628160) (:by |Oj4l0GxFU) (:text |*reel)
                            |h $ %{} :Expr (:at 1657820628160) (:by |Oj4l0GxFU)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1657820628160) (:by |Oj4l0GxFU) (:text |refresh-reel)
                                |b $ %{} :Leaf (:at 1657820628160) (:by |Oj4l0GxFU) (:text |@*reel)
                                |h $ %{} :Leaf (:at 1657820628160) (:by |Oj4l0GxFU) (:text |schema/store)
                                |l $ %{} :Leaf (:at 1657820628160) (:by |Oj4l0GxFU) (:text |updater)
                        |q $ %{} :Expr (:at 1657820628160) (:by |Oj4l0GxFU)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1657820628160) (:by |Oj4l0GxFU) (:text |hud!)
                            |b $ %{} :Leaf (:at 1657820628160) (:by |Oj4l0GxFU) (:text "|\"ok~")
                            |h $ %{} :Leaf (:at 1657820628160) (:by |Oj4l0GxFU) (:text "|\"Ok")
                    |l $ %{} :Expr (:at 1657820628160) (:by |Oj4l0GxFU)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1657820628160) (:by |Oj4l0GxFU) (:text |hud!)
                        |b $ %{} :Leaf (:at 1657820628160) (:by |Oj4l0GxFU) (:text "|\"error")
                        |h $ %{} :Leaf (:at 1657820628160) (:by |Oj4l0GxFU) (:text |build-errors)
          |render-app! $ %{} :CodeEntry (:doc |)
            :code $ %{} :Expr (:at 1507357346880) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |defn)
                |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |render-app!)
                |r $ %{} :Expr (:at 1507357346880) (:by nil)
                  :data $ {}
                |v $ %{} :Expr (:at 1507357346880) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1657820672919) (:by |Oj4l0GxFU) (:text |render!)
                    |b $ %{} :Leaf (:at 1507358657404) (:by |root) (:text |mount-target)
                    |j $ %{} :Expr (:at 1507357346880) (:by nil)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |comp-container)
                        |j $ %{} :Leaf (:at 1507365943449) (:by |root) (:text |@*reel)
                    |v $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |dispatch!)
        :ns $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1507357346880) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |ns)
              |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |reel.app.main)
              |r $ %{} :Expr (:at 1507357346880) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:require)
                  |j $ %{} :Expr (:at 1507357346880) (:by nil)
                    :data $ {}
                      |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |respo.core)
                      |r $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:refer)
                      |v $ %{} :Expr (:at 1507357346880) (:by nil)
                        :data $ {}
                          |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |render!)
                          |r $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |clear-cache!)
                  |r $ %{} :Expr (:at 1507357346880) (:by nil)
                    :data $ {}
                      |j $ %{} :Leaf (:at 1624006745201) (:by |Oj4l0GxFU) (:text |reel.app.comp.container)
                      |r $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:refer)
                      |v $ %{} :Expr (:at 1507357346880) (:by nil)
                        :data $ {}
                          |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |comp-container)
                  |y $ %{} :Expr (:at 1507357346880) (:by nil)
                    :data $ {}
                      |j $ %{} :Leaf (:at 1507367745652) (:by |root) (:text |reel.core)
                      |r $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:refer)
                      |v $ %{} :Expr (:at 1507357346880) (:by nil)
                        :data $ {}
                          |r $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |reel-updater)
                          |yj $ %{} :Leaf (:at 1507458281132) (:by |root) (:text |refresh-reel)
                  |y5 $ %{} :Expr (:at 1518143604727) (:by |root)
                    :data $ {}
                      |j $ %{} :Leaf (:at 1518143607809) (:by |root) (:text |reel.util)
                      |r $ %{} :Leaf (:at 1518143608588) (:by |root) (:text |:refer)
                      |v $ %{} :Expr (:at 1518143608810) (:by |root)
                        :data $ {}
                          |j $ %{} :Leaf (:at 1518143610079) (:by |root) (:text |listen-devtools!)
                  |yD $ %{} :Expr (:at 1507366341139) (:by |root)
                    :data $ {}
                      |j $ %{} :Leaf (:at 1507366344162) (:by |root) (:text |reel.schema)
                      |r $ %{} :Leaf (:at 1507366345580) (:by |root) (:text |:as)
                      |v $ %{} :Leaf (:at 1507366347238) (:by |root) (:text |schema)
                  |yT $ %{} :Expr (:at 1507357346880) (:by nil)
                    :data $ {}
                      |j $ %{} :Leaf (:at 1624006762929) (:by |Oj4l0GxFU) (:text |reel.app.updater)
                      |r $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:refer)
                      |v $ %{} :Expr (:at 1507357346880) (:by nil)
                        :data $ {}
                          |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |updater)
                  |z $ %{} :Expr (:at 1657820639826) (:by |Oj4l0GxFU)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1657820639826) (:by |Oj4l0GxFU) (:text "|\"./calcit.build-errors")
                      |b $ %{} :Leaf (:at 1657820639826) (:by |Oj4l0GxFU) (:text |:default)
                      |h $ %{} :Leaf (:at 1657820639826) (:by |Oj4l0GxFU) (:text |build-errors)
                  |zD $ %{} :Expr (:at 1657820644030) (:by |Oj4l0GxFU)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1657820644030) (:by |Oj4l0GxFU) (:text "|\"bottom-tip")
                      |b $ %{} :Leaf (:at 1657820644030) (:by |Oj4l0GxFU) (:text |:default)
                      |h $ %{} :Leaf (:at 1657820644030) (:by |Oj4l0GxFU) (:text |hud!)
      |reel.app.updater $ {}
        :defs $ {}
          |updater $ %{} :CodeEntry (:doc |)
            :code $ %{} :Expr (:at 1507357346880) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |defn)
                |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |updater)
                |r $ %{} :Expr (:at 1507357346880) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |store)
                    |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |op)
                    |v $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |op-id)
                    |x $ %{} :Leaf (:at 1518146071125) (:by |root) (:text |op-time)
                |v $ %{} :Expr (:at 1507357346880) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1687780140797) (:by |Oj4l0GxFU) (:text |tag-match)
                    |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |op)
                    |r $ %{} :Expr (:at 1507357346880) (:by nil)
                      :data $ {}
                        |T $ %{} :Expr (:at 1687780147852) (:by |Oj4l0GxFU)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1687780601468) (:by |Oj4l0GxFU) (:text |:states)
                            |b $ %{} :Leaf (:at 1687780152259) (:by |Oj4l0GxFU) (:text |cursor)
                            |h $ %{} :Leaf (:at 1687780152470) (:by |Oj4l0GxFU) (:text |s)
                        |b $ %{} :Expr (:at 1590304401417) (:by |Oj4l0GxFU)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1590304402874) (:by |Oj4l0GxFU) (:text |update-states)
                            |j $ %{} :Leaf (:at 1590304403982) (:by |Oj4l0GxFU) (:text |store)
                            |r $ %{} :Leaf (:at 1687780155402) (:by |Oj4l0GxFU) (:text |cursor)
                            |t $ %{} :Leaf (:at 1687780155874) (:by |Oj4l0GxFU) (:text |s)
                    |v $ %{} :Expr (:at 1507357346880) (:by nil)
                      :data $ {}
                        |T $ %{} :Expr (:at 1687780160040) (:by |Oj4l0GxFU)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:task/add)
                            |b $ %{} :Leaf (:at 1687780161313) (:by |Oj4l0GxFU) (:text |text)
                        |j $ %{} :Expr (:at 1507357346880) (:by nil)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |update)
                            |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |store)
                            |r $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:tasks)
                            |v $ %{} :Expr (:at 1507357346880) (:by nil)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |fn)
                                |j $ %{} :Expr (:at 1507357346880) (:by nil)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |tasks)
                                |r $ %{} :Expr (:at 1507357346880) (:by nil)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1610611880811) (:by |Oj4l0GxFU) (:text |prepend)
                                    |n $ %{} :Leaf (:at 1507458407060) (:by |root) (:text |tasks)
                                    |t $ %{} :Expr (:at 1610611881848) (:by |Oj4l0GxFU)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1610611881848) (:by |Oj4l0GxFU) (:text |{})
                                        |j $ %{} :Expr (:at 1610611881848) (:by |Oj4l0GxFU)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1610611881848) (:by |Oj4l0GxFU) (:text |:id)
                                            |j $ %{} :Leaf (:at 1610611881848) (:by |Oj4l0GxFU) (:text |op-id)
                                        |r $ %{} :Expr (:at 1610611881848) (:by |Oj4l0GxFU)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1610611881848) (:by |Oj4l0GxFU) (:text |:done?)
                                            |j $ %{} :Leaf (:at 1610611881848) (:by |Oj4l0GxFU) (:text |false)
                                        |v $ %{} :Expr (:at 1610611881848) (:by |Oj4l0GxFU)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1610611881848) (:by |Oj4l0GxFU) (:text |:text)
                                            |j $ %{} :Leaf (:at 1687780163232) (:by |Oj4l0GxFU) (:text |text)
                    |x $ %{} :Expr (:at 1507357346880) (:by nil)
                      :data $ {}
                        |T $ %{} :Expr (:at 1687780166812) (:by |Oj4l0GxFU)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:task/remove)
                            |b $ %{} :Leaf (:at 1687780167915) (:by |Oj4l0GxFU) (:text |id)
                        |j $ %{} :Expr (:at 1507357346880) (:by nil)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |update)
                            |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |store)
                            |r $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:tasks)
                            |v $ %{} :Expr (:at 1507357346880) (:by nil)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |fn)
                                |j $ %{} :Expr (:at 1507357346880) (:by nil)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |tasks)
                                |r $ %{} :Expr (:at 1507357346880) (:by nil)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |filter)
                                    |b $ %{} :Leaf (:at 1619600123710) (:by |Oj4l0GxFU) (:text |tasks)
                                    |j $ %{} :Expr (:at 1507357346880) (:by nil)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |fn)
                                        |j $ %{} :Expr (:at 1507357346880) (:by nil)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |task)
                                        |r $ %{} :Expr (:at 1507357346880) (:by nil)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1610611913512) (:by |Oj4l0GxFU) (:text |/=)
                                            |j $ %{} :Expr (:at 1507357346880) (:by nil)
                                              :data $ {}
                                                |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:id)
                                                |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |task)
                                            |r $ %{} :Leaf (:at 1687780170477) (:by |Oj4l0GxFU) (:text |id)
                    |y $ %{} :Expr (:at 1507357346880) (:by nil)
                      :data $ {}
                        |T $ %{} :Expr (:at 1687780172188) (:by |Oj4l0GxFU)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1507367439628) (:by |root) (:text |:task/toggle)
                            |b $ %{} :Leaf (:at 1687780172627) (:by |Oj4l0GxFU) (:text |id)
                        |j $ %{} :Expr (:at 1507357346880) (:by nil)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |update)
                            |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |store)
                            |r $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:tasks)
                            |v $ %{} :Expr (:at 1507357346880) (:by nil)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |fn)
                                |j $ %{} :Expr (:at 1507357346880) (:by nil)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |tasks)
                                |r $ %{} :Expr (:at 1507357346880) (:by nil)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |map)
                                    |b $ %{} :Leaf (:at 1619600147624) (:by |Oj4l0GxFU) (:text |tasks)
                                    |j $ %{} :Expr (:at 1507357346880) (:by nil)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |fn)
                                        |j $ %{} :Expr (:at 1507357346880) (:by nil)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |task)
                                        |r $ %{} :Expr (:at 1507357346880) (:by nil)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |if)
                                            |j $ %{} :Expr (:at 1507357346880) (:by nil)
                                              :data $ {}
                                                |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |=)
                                                |j $ %{} :Expr (:at 1507357346880) (:by nil)
                                                  :data $ {}
                                                    |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:id)
                                                    |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |task)
                                                |r $ %{} :Leaf (:at 1687780174711) (:by |Oj4l0GxFU) (:text |id)
                                            |r $ %{} :Expr (:at 1507357346880) (:by nil)
                                              :data $ {}
                                                |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |update)
                                                |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |task)
                                                |r $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:done?)
                                                |v $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |not)
                                            |v $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |task)
                    |yT $ %{} :Expr (:at 1507357346880) (:by nil)
                      :data $ {}
                        |T $ %{} :Expr (:at 1687780181465) (:by |Oj4l0GxFU)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1507367270198) (:by |root) (:text |:task/edit)
                            |b $ %{} :Leaf (:at 1687780183499) (:by |Oj4l0GxFU) (:text |task-id)
                            |h $ %{} :Leaf (:at 1687780184816) (:by |Oj4l0GxFU) (:text |text)
                        |j $ %{} :Expr (:at 1507357346880) (:by nil)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |update)
                            |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |store)
                            |r $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:tasks)
                            |v $ %{} :Expr (:at 1507357346880) (:by nil)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |fn)
                                |j $ %{} :Expr (:at 1507357346880) (:by nil)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |tasks)
                                |r $ %{} :Expr (:at 1507357346880) (:by nil)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |map)
                                    |b $ %{} :Leaf (:at 1619600169601) (:by |Oj4l0GxFU) (:text |tasks)
                                    |j $ %{} :Expr (:at 1507357346880) (:by nil)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |fn)
                                        |j $ %{} :Expr (:at 1507357346880) (:by nil)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |task)
                                        |r $ %{} :Expr (:at 1507357346880) (:by nil)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |if)
                                            |j $ %{} :Expr (:at 1507357346880) (:by nil)
                                              :data $ {}
                                                |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |=)
                                                |j $ %{} :Expr (:at 1507357346880) (:by nil)
                                                  :data $ {}
                                                    |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:id)
                                                    |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |task)
                                                |r $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |task-id)
                                            |r $ %{} :Expr (:at 1507357346880) (:by nil)
                                              :data $ {}
                                                |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |assoc)
                                                |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |task)
                                                |r $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:text)
                                                |v $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |text)
                                            |v $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |task)
                    |z $ %{} :Expr (:at 1687780145230) (:by |Oj4l0GxFU)
                      :data $ {}
                        |D $ %{} :Leaf (:at 1687780145685) (:by |Oj4l0GxFU) (:text |_)
                        |T $ %{} :Expr (:at 1687780143973) (:by |Oj4l0GxFU)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1687780143973) (:by |Oj4l0GxFU) (:text |do)
                            |b $ %{} :Expr (:at 1687780143973) (:by |Oj4l0GxFU)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1687780143973) (:by |Oj4l0GxFU) (:text |js/console.log)
                                |b $ %{} :Leaf (:at 1687780463166) (:by |Oj4l0GxFU) (:text "|\"Unknown op")
                                |h $ %{} :Leaf (:at 1687780143973) (:by |Oj4l0GxFU) (:text |op)
                            |h $ %{} :Leaf (:at 1687780143973) (:by |Oj4l0GxFU) (:text |store)
        :ns $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1507357346880) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |ns)
              |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |reel.app.updater)
              |r $ %{} :Expr (:at 1590304389453) (:by |Oj4l0GxFU)
                :data $ {}
                  |T $ %{} :Leaf (:at 1590304390289) (:by |Oj4l0GxFU) (:text |:require)
                  |j $ %{} :Expr (:at 1590304390441) (:by |Oj4l0GxFU)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1590304391569) (:by |Oj4l0GxFU) (:text |[])
                      |j $ %{} :Leaf (:at 1590304395114) (:by |Oj4l0GxFU) (:text |respo.cursor)
                      |r $ %{} :Leaf (:at 1590304396018) (:by |Oj4l0GxFU) (:text |:refer)
                      |v $ %{} :Expr (:at 1590304396155) (:by |Oj4l0GxFU)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1590304396413) (:by |Oj4l0GxFU) (:text |[])
                          |j $ %{} :Leaf (:at 1590304397873) (:by |Oj4l0GxFU) (:text |update-states)
      |reel.comp.records $ {}
        :defs $ {}
          |comp-records $ %{} :CodeEntry (:doc |)
            :code $ %{} :Expr (:at 1507357346880) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1507358427417) (:by |root) (:text |defcomp)
                |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |comp-records)
                |n $ %{} :Expr (:at 1507357346880) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |records)
                    |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |pointer)
                |r $ %{} :Expr (:at 1507357346880) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |div)
                    |j $ %{} :Expr (:at 1507357346880) (:by nil)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |{})
                        |b $ %{} :Expr (:at 1657820528963) (:by |Oj4l0GxFU)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1657820596616) (:by |Oj4l0GxFU) (:text |:class-name)
                            |b $ %{} :Expr (:at 1657820798376) (:by |Oj4l0GxFU)
                              :data $ {}
                                |D $ %{} :Leaf (:at 1657820800032) (:by |Oj4l0GxFU) (:text |str-spaced)
                                |T $ %{} :Leaf (:at 1657820534505) (:by |Oj4l0GxFU) (:text |css/font-code)
                                |b $ %{} :Leaf (:at 1657820802800) (:by |Oj4l0GxFU) (:text |css-records)
                    |r $ %{} :Expr (:at 1508566559298) (:by |root)
                      :data $ {}
                        |5 $ %{} :Leaf (:at 1509190203048) (:by |root) (:text |list->)
                        |L $ %{} :Expr (:at 1508566560350) (:by |root)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1508566651466) (:by |root) (:text |{})
                        |T $ %{} :Expr (:at 1507357346880) (:by nil)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1619600094090) (:by |Oj4l0GxFU) (:text |->)
                            |j $ %{} :Expr (:at 1610611771947) (:by |Oj4l0GxFU)
                              :data $ {}
                                |D $ %{} :Leaf (:at 1610611773672) (:by |Oj4l0GxFU) (:text |prepend)
                                |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |records)
                                |j $ %{} :Expr (:at 1610611776359) (:by |Oj4l0GxFU)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1610611776359) (:by |Oj4l0GxFU) (:text |[])
                                    |j $ %{} :Leaf (:at 1610611776359) (:by |Oj4l0GxFU) (:text |:base)
                                    |r $ %{} :Leaf (:at 1610611776359) (:by |Oj4l0GxFU) (:text |nil)
                                    |v $ %{} :Leaf (:at 1610611776359) (:by |Oj4l0GxFU) (:text |:base)
                            |v $ %{} :Expr (:at 1507357346880) (:by nil)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |map-indexed)
                                |j $ %{} :Expr (:at 1507357346880) (:by nil)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |fn)
                                    |j $ %{} :Expr (:at 1507357346880) (:by nil)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |idx)
                                        |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |record)
                                    |r $ %{} :Expr (:at 1507357346880) (:by nil)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |[])
                                        |j $ %{} :Expr (:at 1507357346880) (:by nil)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |last)
                                            |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |record)
                                        |r $ %{} :Expr (:at 1507357346880) (:by nil)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |div)
                                            |j $ %{} :Expr (:at 1507357346880) (:by nil)
                                              :data $ {}
                                                |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |{})
                                                |b $ %{} :Expr (:at 1508566544302) (:by |root)
                                                  :data $ {}
                                                    |T $ %{} :Leaf (:at 1508566545840) (:by |root) (:text |:class-name)
                                                    |j $ %{} :Leaf (:at 1657820856717) (:by |Oj4l0GxFU) (:text |css-record)
                                                |j $ %{} :Expr (:at 1507357346880) (:by nil)
                                                  :data $ {}
                                                    |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:style)
                                                    |j $ %{} :Expr (:at 1507357346880) (:by nil)
                                                      :data $ {}
                                                        |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |if)
                                                        |j $ %{} :Expr (:at 1507357346880) (:by nil)
                                                          :data $ {}
                                                            |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |=)
                                                            |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |pointer)
                                                            |r $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |idx)
                                                        |r $ %{} :Expr (:at 1507357346880) (:by nil)
                                                          :data $ {}
                                                            |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |{})
                                                            |j $ %{} :Expr (:at 1507357346880) (:by nil)
                                                              :data $ {}
                                                                |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:background-color)
                                                                |j $ %{} :Expr (:at 1558450931392) (:by |Oj4l0GxFU)
                                                                  :data $ {}
                                                                    |T $ %{} :Leaf (:at 1558450932264) (:by |Oj4l0GxFU) (:text |hsl)
                                                                    |j $ %{} :Leaf (:at 1558450936231) (:by |Oj4l0GxFU) (:text |220)
                                                                    |r $ %{} :Leaf (:at 1558450937100) (:by |Oj4l0GxFU) (:text |100)
                                                                    |v $ %{} :Leaf (:at 1558450938758) (:by |Oj4l0GxFU) (:text |76)
                                                            |r $ %{} :Expr (:at 1507357346880) (:by nil)
                                                              :data $ {}
                                                                |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:color)
                                                                |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:white)
                                                |r $ %{} :Expr (:at 1507357346880) (:by nil)
                                                  :data $ {}
                                                    |T $ %{} :Leaf (:at 1515690329205) (:by |root) (:text |:on-click)
                                                    |j $ %{} :Expr (:at 1507357346880) (:by nil)
                                                      :data $ {}
                                                        |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |on-recall)
                                                        |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |idx)
                                            |r $ %{} :Expr (:at 1507357346880) (:by nil)
                                              :data $ {}
                                                |T $ %{} :Leaf (:at 1507358962852) (:by |root) (:text |<>)
                                                |j $ %{} :Expr (:at 1507456120844) (:by |root)
                                                  :data $ {}
                                                    |D $ %{} :Leaf (:at 1507456122883) (:by |root) (:text |pr-str)
                                                    |T $ %{} :Expr (:at 1507357346880) (:by nil)
                                                      :data $ {}
                                                        |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |first)
                                                        |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |record)
          |css-record $ %{} :CodeEntry (:doc |)
            :code $ %{} :Expr (:at 1507357346880) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1657820831550) (:by |Oj4l0GxFU) (:text |defstyle)
                |j $ %{} :Leaf (:at 1657820830046) (:by |Oj4l0GxFU) (:text |css-record)
                |r $ %{} :Expr (:at 1657820832481) (:by |Oj4l0GxFU)
                  :data $ {}
                    |D $ %{} :Leaf (:at 1657820832994) (:by |Oj4l0GxFU) (:text |{})
                    |T $ %{} :Expr (:at 1657820833438) (:by |Oj4l0GxFU)
                      :data $ {}
                        |D $ %{} :Leaf (:at 1657820835229) (:by |Oj4l0GxFU) (:text "|\"$0")
                        |T $ %{} :Expr (:at 1507357346880) (:by nil)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |{})
                            |j $ %{} :Expr (:at 1507357346880) (:by nil)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:cursor)
                                |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:pointer)
                            |r $ %{} :Expr (:at 1507357346880) (:by nil)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:padding)
                                |j $ %{} :Leaf (:at 1593103528009) (:by |Oj4l0GxFU) (:text "||0 4px")
                            |v $ %{} :Expr (:at 1507461148686) (:by |root)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1507461158442) (:by |root) (:text |:white-space)
                                |j $ %{} :Leaf (:at 1507461152487) (:by |root) (:text |:nowrap)
                            |x $ %{} :Expr (:at 1508565788091) (:by |root)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1508565792856) (:by |root) (:text |:cursor)
                                |j $ %{} :Leaf (:at 1508565793810) (:by |root) (:text |:pointer)
                            |y $ %{} :Expr (:at 1508651351605) (:by |root)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1508651353776) (:by |root) (:text |:overflow)
                                |j $ %{} :Leaf (:at 1508651355486) (:by |root) (:text |:hidden)
                            |yT $ %{} :Expr (:at 1508651379906) (:by |root)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1508651383221) (:by |root) (:text |:text-overflow)
                                |j $ %{} :Leaf (:at 1508651385803) (:by |root) (:text |:ellipsis)
                    |b $ %{} :Expr (:at 1657820836842) (:by |Oj4l0GxFU)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1657820878876) (:by |Oj4l0GxFU) (:text "|\"$0:hover")
                        |b $ %{} :Expr (:at 1657820840774) (:by |Oj4l0GxFU)
                          :data $ {}
                            |D $ %{} :Leaf (:at 1657820841270) (:by |Oj4l0GxFU) (:text |{})
                            |T $ %{} :Expr (:at 1657820840064) (:by |Oj4l0GxFU)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1657820842873) (:by |Oj4l0GxFU) (:text |:background-color)
                                |b $ %{} :Leaf (:at 1657820844095) (:by |Oj4l0GxFU) (:text "|\"#eee")
          |css-records $ %{} :CodeEntry (:doc |)
            :code $ %{} :Expr (:at 1507357346880) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1657820789555) (:by |Oj4l0GxFU) (:text |defstyle)
                |j $ %{} :Leaf (:at 1657820787682) (:by |Oj4l0GxFU) (:text |css-records)
                |r $ %{} :Expr (:at 1657820790220) (:by |Oj4l0GxFU)
                  :data $ {}
                    |D $ %{} :Leaf (:at 1657820790755) (:by |Oj4l0GxFU) (:text |{})
                    |T $ %{} :Expr (:at 1657820791678) (:by |Oj4l0GxFU)
                      :data $ {}
                        |D $ %{} :Leaf (:at 1688398732249) (:by |Oj4l0GxFU) (:text "|\"&")
                        |T $ %{} :Expr (:at 1507357346880) (:by nil)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |{})
                            |j $ %{} :Expr (:at 1507357346880) (:by nil)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:overflow)
                                |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:auto)
                            |r $ %{} :Expr (:at 1507357346880) (:by nil)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:flex-shrink)
                                |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |0)
                            |v $ %{} :Expr (:at 1507357346880) (:by nil)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:padding-bottom)
                                |j $ %{} :Leaf (:at 1508651260579) (:by |root) (:text |120)
                            |x $ %{} :Expr (:at 1507357346880) (:by nil)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:padding-top)
                                |j $ %{} :Leaf (:at 1508651262202) (:by |root) (:text |16)
                            |y $ %{} :Expr (:at 1507460459330) (:by |root)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1507460461048) (:by |root) (:text |:width)
                                |j $ %{} :Leaf (:at 1688398551867) (:by |Oj4l0GxFU) (:text |320)
                            |yD $ %{} :Expr (:at 1508566529392) (:by |root)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1508566531529) (:by |root) (:text |:font-size)
                                |j $ %{} :Leaf (:at 1508566531989) (:by |root) (:text |12)
          |on-recall $ %{} :CodeEntry (:doc |)
            :code $ %{} :Expr (:at 1507357346880) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |defn)
                |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |on-recall)
                |x $ %{} :Expr (:at 1507357346880) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |idx)
                |y $ %{} :Expr (:at 1507357346880) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |fn)
                    |j $ %{} :Expr (:at 1507357346880) (:by nil)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |e)
                        |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |dispatch!)
                    |r $ %{} :Expr (:at 1507357346880) (:by nil)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |dispatch!)
                        |j $ %{} :Expr (:at 1688398199289) (:by |Oj4l0GxFU)
                          :data $ {}
                            |D $ %{} :Leaf (:at 1688398200049) (:by |Oj4l0GxFU) (:text |::)
                            |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:reel/recall)
                            |b $ %{} :Leaf (:at 1688398202134) (:by |Oj4l0GxFU) (:text |idx)
          |style-data $ %{} :CodeEntry (:doc |)
            :code $ %{} :Expr (:at 1507357346880) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |def)
                |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |style-data)
                |r $ %{} :Expr (:at 1507357346880) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |{})
                    |j $ %{} :Expr (:at 1507357346880) (:by nil)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:max-width)
                        |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |100)
                    |r $ %{} :Expr (:at 1507357346880) (:by nil)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:overflow)
                        |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:hidden)
                    |v $ %{} :Expr (:at 1507357346880) (:by nil)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:text-overflow)
                        |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:ellipsis)
                    |x $ %{} :Expr (:at 1507357346880) (:by nil)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:white-space)
                        |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:nowrap)
                    |y $ %{} :Expr (:at 1507357346880) (:by nil)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:display)
                        |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:inline-block)
                    |yT $ %{} :Expr (:at 1507357346880) (:by nil)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:vertical-align)
                        |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:middle)
        :ns $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1507357346880) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |ns)
              |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |reel.comp.records)
              |r $ %{} :Expr (:at 1507357346880) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:require)
                  |j $ %{} :Expr (:at 1507358463579) (:by |root)
                    :data $ {}
                      |j $ %{} :Leaf (:at 1540918182373) (:by |root) (:text |respo.core)
                      |r $ %{} :Leaf (:at 1507358468079) (:by |root) (:text |:refer)
                      |v $ %{} :Expr (:at 1507358468270) (:by |root)
                        :data $ {}
                          |j $ %{} :Leaf (:at 1507358471810) (:by |root) (:text |defcomp)
                          |n $ %{} :Leaf (:at 1507358473828) (:by |root) (:text |<>)
                          |r $ %{} :Leaf (:at 1507358472588) (:by |root) (:text |div)
                          |v $ %{} :Leaf (:at 1507358475239) (:by |root) (:text |span)
                          |w $ %{} :Leaf (:at 1610609701571) (:by |Oj4l0GxFU) (:text |style)
                          |y $ %{} :Leaf (:at 1509190207710) (:by |root) (:text |list->)
                  |n $ %{} :Expr (:at 1657820542370) (:by |Oj4l0GxFU)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1657820545249) (:by |Oj4l0GxFU) (:text |respo.css)
                      |b $ %{} :Leaf (:at 1657820547702) (:by |Oj4l0GxFU) (:text |:refer)
                      |h $ %{} :Expr (:at 1657820547919) (:by |Oj4l0GxFU)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1657820550447) (:by |Oj4l0GxFU) (:text |defstyle)
                  |r $ %{} :Expr (:at 1507357346880) (:by nil)
                    :data $ {}
                      |j $ %{} :Leaf (:at 1516431425212) (:by |root) (:text |respo-ui.core)
                      |r $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:as)
                      |v $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |ui)
                  |u $ %{} :Expr (:at 1657820536808) (:by |Oj4l0GxFU)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1657820538585) (:by |Oj4l0GxFU) (:text |respo-ui.css)
                      |b $ %{} :Leaf (:at 1657820539367) (:by |Oj4l0GxFU) (:text |:as)
                      |h $ %{} :Leaf (:at 1657820540002) (:by |Oj4l0GxFU) (:text |css)
                  |y $ %{} :Expr (:at 1507357346880) (:by nil)
                    :data $ {}
                      |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |respo.comp.space)
                      |r $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:refer)
                      |v $ %{} :Expr (:at 1507357346880) (:by nil)
                        :data $ {}
                          |j $ %{} :Leaf (:at 1507358486385) (:by |root) (:text |=<)
                  |yT $ %{} :Expr (:at 1508566743138) (:by |root)
                    :data $ {}
                      |j $ %{} :Leaf (:at 1508566753567) (:by |root) (:text |reel.style)
                      |r $ %{} :Leaf (:at 1508566753945) (:by |root) (:text |:as)
                      |v $ %{} :Leaf (:at 1612762510281) (:by |Oj4l0GxFU) (:text |reel-style)
                  |yj $ %{} :Expr (:at 1558450992403) (:by |Oj4l0GxFU)
                    :data $ {}
                      |j $ %{} :Leaf (:at 1610609583606) (:by |Oj4l0GxFU) (:text |respo.util.format)
                      |r $ %{} :Leaf (:at 1558450996743) (:by |Oj4l0GxFU) (:text |:refer)
                      |v $ %{} :Expr (:at 1558450997776) (:by |Oj4l0GxFU)
                        :data $ {}
                          |j $ %{} :Leaf (:at 1558450998493) (:by |Oj4l0GxFU) (:text |hsl)
      |reel.comp.reel $ {}
        :defs $ {}
          |comp-reel $ %{} :CodeEntry (:doc |)
            :code $ %{} :Expr (:at 1507357346880) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1507358441536) (:by |root) (:text |defcomp)
                |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |comp-reel)
                |n $ %{} :Expr (:at 1507357346880) (:by nil)
                  :data $ {}
                    |D $ %{} :Leaf (:at 1508566119721) (:by |root) (:text |states)
                    |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |reel)
                    |r $ %{} :Leaf (:at 1507454243195) (:by |root) (:text |user-styles)
                |r $ %{} :Expr (:at 1507357346880) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |if)
                    |j $ %{} :Expr (:at 1507357346880) (:by nil)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:display?)
                        |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |reel)
                    |r $ %{} :Expr (:at 1507357346880) (:by nil)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |div)
                        |j $ %{} :Expr (:at 1507357346880) (:by nil)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |{})
                            |j $ %{} :Expr (:at 1507357346880) (:by nil)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1657820151060) (:by |Oj4l0GxFU) (:text |:class-name)
                                |j $ %{} :Expr (:at 1507357346880) (:by nil)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1657820160301) (:by |Oj4l0GxFU) (:text |str-spaced)
                                    |b $ %{} :Leaf (:at 1657820161958) (:by |Oj4l0GxFU) (:text |css/flex)
                                    |j $ %{} :Leaf (:at 1657820163783) (:by |Oj4l0GxFU) (:text |css/column)
                                    |r $ %{} :Leaf (:at 1657820733934) (:by |Oj4l0GxFU) (:text |css-reel)
                            |n $ %{} :Expr (:at 1657820168986) (:by |Oj4l0GxFU)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1657820170414) (:by |Oj4l0GxFU) (:text |:style)
                                |b $ %{} :Leaf (:at 1657820170877) (:by |Oj4l0GxFU) (:text |user-styles)
                        |n $ %{} :Expr (:at 1507357346880) (:by nil)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |div)
                            |j $ %{} :Expr (:at 1507357346880) (:by nil)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |{})
                                |j $ %{} :Expr (:at 1593102594654) (:by |Oj4l0GxFU)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1593102596058) (:by |Oj4l0GxFU) (:text |:style)
                                    |j $ %{} :Expr (:at 1593102596296) (:by |Oj4l0GxFU)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1593102596637) (:by |Oj4l0GxFU) (:text |{})
                                        |j $ %{} :Expr (:at 1593102596897) (:by |Oj4l0GxFU)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1593102601925) (:by |Oj4l0GxFU) (:text |:border-bottom)
                                            |j $ %{} :Expr (:at 1593102602374) (:by |Oj4l0GxFU)
                                              :data $ {}
                                                |T $ %{} :Leaf (:at 1593102602933) (:by |Oj4l0GxFU) (:text |str)
                                                |j $ %{} :Leaf (:at 1593102605368) (:by |Oj4l0GxFU) (:text "|\"1px solid ")
                                                |r $ %{} :Expr (:at 1593102606014) (:by |Oj4l0GxFU)
                                                  :data $ {}
                                                    |T $ %{} :Leaf (:at 1593102606545) (:by |Oj4l0GxFU) (:text |hsl)
                                                    |j $ %{} :Leaf (:at 1593102607018) (:by |Oj4l0GxFU) (:text |0)
                                                    |r $ %{} :Leaf (:at 1593102607335) (:by |Oj4l0GxFU) (:text |0)
                                                    |v $ %{} :Leaf (:at 1593102607722) (:by |Oj4l0GxFU) (:text |90)
                            |v1 $ %{} :Expr (:at 1508642439874) (:by |root)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1508642404409) (:by |root) (:text |render-button)
                                |j $ %{} :Leaf (:at 1508642794463) (:by |root) (:text ||Merge)
                                |r $ %{} :Expr (:at 1590304625936) (:by |Oj4l0GxFU)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1590304632316) (:by |Oj4l0GxFU) (:text |fn)
                                    |r $ %{} :Expr (:at 1590304625936) (:by |Oj4l0GxFU)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1590304625936) (:by |Oj4l0GxFU) (:text |e)
                                        |j $ %{} :Leaf (:at 1590304628641) (:by |Oj4l0GxFU) (:text |d!)
                                    |v $ %{} :Expr (:at 1590304625936) (:by |Oj4l0GxFU)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1590304629474) (:by |Oj4l0GxFU) (:text |d!)
                                        |j $ %{} :Expr (:at 1688398276856) (:by |Oj4l0GxFU)
                                          :data $ {}
                                            |D $ %{} :Leaf (:at 1688398277790) (:by |Oj4l0GxFU) (:text |::)
                                            |T $ %{} :Leaf (:at 1590304625936) (:by |Oj4l0GxFU) (:text |:reel/merge)
                                |v $ %{} :Leaf (:at 1508644177480) (:by |root) (:text |true)
                            |v5 $ %{} :Expr (:at 1508642439874) (:by |root)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1508642404409) (:by |root) (:text |render-button)
                                |j $ %{} :Leaf (:at 1508642441733) (:by |root) (:text ||Reset)
                                |r $ %{} :Expr (:at 1590304615632) (:by |Oj4l0GxFU)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1590304617376) (:by |Oj4l0GxFU) (:text |fn)
                                    |r $ %{} :Expr (:at 1590304615632) (:by |Oj4l0GxFU)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1590304615632) (:by |Oj4l0GxFU) (:text |e)
                                        |j $ %{} :Leaf (:at 1590304620071) (:by |Oj4l0GxFU) (:text |d!)
                                    |v $ %{} :Expr (:at 1590304615632) (:by |Oj4l0GxFU)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1590304620824) (:by |Oj4l0GxFU) (:text |d!)
                                        |j $ %{} :Expr (:at 1688398281010) (:by |Oj4l0GxFU)
                                          :data $ {}
                                            |D $ %{} :Leaf (:at 1688398282156) (:by |Oj4l0GxFU) (:text |::)
                                            |T $ %{} :Leaf (:at 1590304615632) (:by |Oj4l0GxFU) (:text |:reel/reset)
                                |v $ %{} :Leaf (:at 1508644179625) (:by |root) (:text |true)
                            |x5 $ %{} :Expr (:at 1508642439874) (:by |root)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1508642404409) (:by |root) (:text |render-button)
                                |j $ %{} :Leaf (:at 1508643388541) (:by |root) (:text ||Step)
                                |r $ %{} :Expr (:at 1590304605919) (:by |Oj4l0GxFU)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1590304607880) (:by |Oj4l0GxFU) (:text |fn)
                                    |r $ %{} :Expr (:at 1590304605919) (:by |Oj4l0GxFU)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1590304605919) (:by |Oj4l0GxFU) (:text |e)
                                        |j $ %{} :Leaf (:at 1590304605919) (:by |Oj4l0GxFU) (:text |d!)
                                    |v $ %{} :Expr (:at 1590304605919) (:by |Oj4l0GxFU)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1590304605919) (:by |Oj4l0GxFU) (:text |d!)
                                        |j $ %{} :Expr (:at 1688398286562) (:by |Oj4l0GxFU)
                                          :data $ {}
                                            |D $ %{} :Leaf (:at 1688398287194) (:by |Oj4l0GxFU) (:text |::)
                                            |T $ %{} :Leaf (:at 1590304605919) (:by |Oj4l0GxFU) (:text |:reel/step)
                                |v $ %{} :Expr (:at 1508643892933) (:by |root)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1508643894102) (:by |root) (:text |:stopped?)
                                    |j $ %{} :Leaf (:at 1508643895824) (:by |root) (:text |reel)
                            |xJ $ %{} :Expr (:at 1508642445431) (:by |root)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1508642447285) (:by |root) (:text |render-button)
                                |j $ %{} :Leaf (:at 1508642448866) (:by |root) (:text ||Run)
                                |r $ %{} :Expr (:at 1590304593215) (:by |Oj4l0GxFU)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1590304596023) (:by |Oj4l0GxFU) (:text |fn)
                                    |r $ %{} :Expr (:at 1590304593215) (:by |Oj4l0GxFU)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1590304593215) (:by |Oj4l0GxFU) (:text |e)
                                        |j $ %{} :Leaf (:at 1590304597320) (:by |Oj4l0GxFU) (:text |d!)
                                    |v $ %{} :Expr (:at 1590304593215) (:by |Oj4l0GxFU)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1590304598029) (:by |Oj4l0GxFU) (:text |d!)
                                        |j $ %{} :Expr (:at 1688398289414) (:by |Oj4l0GxFU)
                                          :data $ {}
                                            |D $ %{} :Leaf (:at 1688398290086) (:by |Oj4l0GxFU) (:text |::)
                                            |T $ %{} :Leaf (:at 1590304593215) (:by |Oj4l0GxFU) (:text |:reel/run)
                                |v $ %{} :Expr (:at 1508643892933) (:by |root)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1508643894102) (:by |root) (:text |:stopped?)
                                    |j $ %{} :Leaf (:at 1508643895824) (:by |root) (:text |reel)
                            |xX $ %{} :Expr (:at 1508642454936) (:by |root)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1508642457910) (:by |root) (:text |render-button)
                                |j $ %{} :Leaf (:at 1508642459249) (:by |root) (:text ||Close)
                                |r $ %{} :Expr (:at 1590304550646) (:by |Oj4l0GxFU)
                                  :data $ {}
                                    |D $ %{} :Leaf (:at 1590304551954) (:by |Oj4l0GxFU) (:text |fn)
                                    |L $ %{} :Expr (:at 1590304552227) (:by |Oj4l0GxFU)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1590304552496) (:by |Oj4l0GxFU) (:text |e)
                                        |j $ %{} :Leaf (:at 1590304553206) (:by |Oj4l0GxFU) (:text |d!)
                                    |T $ %{} :Expr (:at 1590304549431) (:by |Oj4l0GxFU)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1590304555546) (:by |Oj4l0GxFU) (:text |d!)
                                        |j $ %{} :Expr (:at 1688398292466) (:by |Oj4l0GxFU)
                                          :data $ {}
                                            |D $ %{} :Leaf (:at 1688398293285) (:by |Oj4l0GxFU) (:text |::)
                                            |T $ %{} :Leaf (:at 1590304549431) (:by |Oj4l0GxFU) (:text |:reel/toggle)
                                |v $ %{} :Expr (:at 1508644172168) (:by |root)
                                  :data $ {}
                                    |D $ %{} :Leaf (:at 1508644173126) (:by |root) (:text |not)
                                    |T $ %{} :Expr (:at 1508643892933) (:by |root)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1508643894102) (:by |root) (:text |:stopped?)
                                        |j $ %{} :Leaf (:at 1508643895824) (:by |root) (:text |reel)
                        |r $ %{} :Expr (:at 1508651184615) (:by |root)
                          :data $ {}
                            |D $ %{} :Leaf (:at 1508651185349) (:by |root) (:text |div)
                            |L $ %{} :Expr (:at 1508651185690) (:by |root)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1508651186346) (:by |root) (:text |{})
                                |j $ %{} :Expr (:at 1508651209509) (:by |root)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1657820406171) (:by |Oj4l0GxFU) (:text |:class-name)
                                    |j $ %{} :Expr (:at 1590304467492) (:by |Oj4l0GxFU)
                                      :data $ {}
                                        |D $ %{} :Leaf (:at 1657820409161) (:by |Oj4l0GxFU) (:text |str-spaced)
                                        |L $ %{} :Leaf (:at 1657820411250) (:by |Oj4l0GxFU) (:text |css/expand)
                                        |T $ %{} :Leaf (:at 1657820413151) (:by |Oj4l0GxFU) (:text |css/row)
                            |T $ %{} :Expr (:at 1507357346880) (:by nil)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |comp-records)
                                |j $ %{} :Expr (:at 1507357346880) (:by nil)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:records)
                                    |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |reel)
                                |r $ %{} :Expr (:at 1507357346880) (:by nil)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:pointer)
                                    |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |reel)
                            |j $ %{} :Expr (:at 1507357346880) (:by nil)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |div)
                                |j $ %{} :Expr (:at 1507357346880) (:by nil)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |{})
                                    |b $ %{} :Expr (:at 1657820418590) (:by |Oj4l0GxFU)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1657820420458) (:by |Oj4l0GxFU) (:text |:class-name)
                                        |b $ %{} :Expr (:at 1657820421580) (:by |Oj4l0GxFU)
                                          :data $ {}
                                            |D $ %{} :Leaf (:at 1657820423297) (:by |Oj4l0GxFU) (:text |str-spaced)
                                            |T $ %{} :Leaf (:at 1657820426515) (:by |Oj4l0GxFU) (:text |css/column)
                                            |b $ %{} :Leaf (:at 1657820429961) (:by |Oj4l0GxFU) (:text |css/expand)
                                    |j $ %{} :Expr (:at 1507357346880) (:by nil)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:style)
                                        |j $ %{} :Expr (:at 1508569089017) (:by |root)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1508569089422) (:by |root) (:text |{})
                                            |j $ %{} :Expr (:at 1508569089678) (:by |root)
                                              :data $ {}
                                                |T $ %{} :Leaf (:at 1508569092484) (:by |root) (:text |:overflow)
                                                |j $ %{} :Leaf (:at 1508569094082) (:by |root) (:text |:auto)
                                            |r $ %{} :Expr (:at 1518143953913) (:by |root)
                                              :data $ {}
                                                |T $ %{} :Leaf (:at 1518143955189) (:by |root) (:text |:padding)
                                                |j $ %{} :Leaf (:at 1518143957823) (:by |root) (:text "||0 8px")
                                            |v $ %{} :Expr (:at 1593102616677) (:by |Oj4l0GxFU)
                                              :data $ {}
                                                |T $ %{} :Leaf (:at 1593102619419) (:by |Oj4l0GxFU) (:text |:border-left)
                                                |j $ %{} :Expr (:at 1593102619708) (:by |Oj4l0GxFU)
                                                  :data $ {}
                                                    |T $ %{} :Leaf (:at 1593102620532) (:by |Oj4l0GxFU) (:text |str)
                                                    |j $ %{} :Leaf (:at 1593102622937) (:by |Oj4l0GxFU) (:text "|\"1px solid ")
                                                    |r $ %{} :Expr (:at 1593102624897) (:by |Oj4l0GxFU)
                                                      :data $ {}
                                                        |T $ %{} :Leaf (:at 1593102624624) (:by |Oj4l0GxFU) (:text |hsl)
                                                        |j $ %{} :Leaf (:at 1593102625580) (:by |Oj4l0GxFU) (:text |0)
                                                        |r $ %{} :Leaf (:at 1593102625984) (:by |Oj4l0GxFU) (:text |0)
                                                        |v $ %{} :Leaf (:at 1593318615769) (:by |Oj4l0GxFU) (:text |94)
                                |n $ %{} :Expr (:at 1508565337813) (:by |root)
                                  :data $ {}
                                    |D $ %{} :Leaf (:at 1508565339869) (:by |root) (:text |let)
                                    |L $ %{} :Expr (:at 1508565340224) (:by |root)
                                      :data $ {}
                                        |T $ %{} :Expr (:at 1508565340357) (:by |root)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1508565341489) (:by |root) (:text |records)
                                            |j $ %{} :Expr (:at 1508565341750) (:by |root)
                                              :data $ {}
                                                |T $ %{} :Leaf (:at 1508565343854) (:by |root) (:text |:records)
                                                |j $ %{} :Leaf (:at 1508565344865) (:by |root) (:text |reel)
                                        |j $ %{} :Expr (:at 1508565345640) (:by |root)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1508565348389) (:by |root) (:text |pointer)
                                            |j $ %{} :Expr (:at 1508565348712) (:by |root)
                                              :data $ {}
                                                |T $ %{} :Leaf (:at 1508565350592) (:by |root) (:text |:pointer)
                                                |j $ %{} :Leaf (:at 1508565351762) (:by |root) (:text |reel)
                                        |r $ %{} :Expr (:at 1593318444149) (:by |Oj4l0GxFU)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1593318444149) (:by |Oj4l0GxFU) (:text |record)
                                            |j $ %{} :Expr (:at 1593318444149) (:by |Oj4l0GxFU)
                                              :data $ {}
                                                |T $ %{} :Leaf (:at 1593318444149) (:by |Oj4l0GxFU) (:text |if)
                                                |j $ %{} :Expr (:at 1593318444149) (:by |Oj4l0GxFU)
                                                  :data $ {}
                                                    |T $ %{} :Leaf (:at 1593318444149) (:by |Oj4l0GxFU) (:text |:stopped?)
                                                    |j $ %{} :Leaf (:at 1593318444149) (:by |Oj4l0GxFU) (:text |reel)
                                                |r $ %{} :Expr (:at 1615567870151) (:by |Oj4l0GxFU)
                                                  :data $ {}
                                                    |D $ %{} :Leaf (:at 1615567871095) (:by |Oj4l0GxFU) (:text |if)
                                                    |L $ %{} :Expr (:at 1615567871941) (:by |Oj4l0GxFU)
                                                      :data $ {}
                                                        |T $ %{} :Leaf (:at 1615567896597) (:by |Oj4l0GxFU) (:text |>)
                                                        |j $ %{} :Leaf (:at 1615567879321) (:by |Oj4l0GxFU) (:text |pointer)
                                                        |r $ %{} :Leaf (:at 1615567897525) (:by |Oj4l0GxFU) (:text |0)
                                                    |T $ %{} :Expr (:at 1593318444149) (:by |Oj4l0GxFU)
                                                      :data $ {}
                                                        |T $ %{} :Leaf (:at 1593318444149) (:by |Oj4l0GxFU) (:text |get)
                                                        |j $ %{} :Leaf (:at 1593318444149) (:by |Oj4l0GxFU) (:text |records)
                                                        |r $ %{} :Expr (:at 1593318444149) (:by |Oj4l0GxFU)
                                                          :data $ {}
                                                            |T $ %{} :Leaf (:at 1593318444149) (:by |Oj4l0GxFU) (:text |dec)
                                                            |j $ %{} :Leaf (:at 1593318444149) (:by |Oj4l0GxFU) (:text |pointer)
                                                    |j $ %{} :Leaf (:at 1615567881011) (:by |Oj4l0GxFU) (:text |nil)
                                                |v $ %{} :Expr (:at 1593318444149) (:by |Oj4l0GxFU)
                                                  :data $ {}
                                                    |T $ %{} :Leaf (:at 1593318444149) (:by |Oj4l0GxFU) (:text |last)
                                                    |j $ %{} :Leaf (:at 1593318444149) (:by |Oj4l0GxFU) (:text |records)
                                    |T $ %{} :Expr (:at 1593101555449) (:by |Oj4l0GxFU)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1593101555904) (:by |Oj4l0GxFU) (:text |if)
                                        |j $ %{} :Expr (:at 1593101556269) (:by |Oj4l0GxFU)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1593101557155) (:by |Oj4l0GxFU) (:text |some?)
                                            |j $ %{} :Leaf (:at 1593101558223) (:by |Oj4l0GxFU) (:text |record)
                                        |r $ %{} :Expr (:at 1593101606097) (:by |Oj4l0GxFU)
                                          :data $ {}
                                            |D $ %{} :Leaf (:at 1610609843987) (:by |Oj4l0GxFU) (:text |let[])
                                            |L $ %{} :Expr (:at 1593101608520) (:by |Oj4l0GxFU)
                                              :data $ {}
                                                |j $ %{} :Leaf (:at 1593101613234) (:by |Oj4l0GxFU) (:text |action)
                                                |r $ %{} :Leaf (:at 1593101615997) (:by |Oj4l0GxFU) (:text |op-data)
                                                |v $ %{} :Leaf (:at 1593101617631) (:by |Oj4l0GxFU) (:text |op-id)
                                                |x $ %{} :Leaf (:at 1593101619151) (:by |Oj4l0GxFU) (:text |op-time)
                                            |P $ %{} :Leaf (:at 1593101623431) (:by |Oj4l0GxFU) (:text |record)
                                            |T $ %{} :Expr (:at 1593103107877) (:by |Oj4l0GxFU)
                                              :data $ {}
                                                |D $ %{} :Leaf (:at 1593103108845) (:by |Oj4l0GxFU) (:text |div)
                                                |L $ %{} :Expr (:at 1593103109078) (:by |Oj4l0GxFU)
                                                  :data $ {}
                                                    |T $ %{} :Leaf (:at 1593103109447) (:by |Oj4l0GxFU) (:text |{})
                                                    |b $ %{} :Expr (:at 1657820579229) (:by |Oj4l0GxFU)
                                                      :data $ {}
                                                        |T $ %{} :Leaf (:at 1657820580671) (:by |Oj4l0GxFU) (:text |:class-name)
                                                        |b $ %{} :Expr (:at 1666024708062) (:by |Oj4l0GxFU)
                                                          :data $ {}
                                                            |D $ %{} :Leaf (:at 1666024711259) (:by |Oj4l0GxFU) (:text |str-spaced)
                                                            |T $ %{} :Leaf (:at 1657820582785) (:by |Oj4l0GxFU) (:text |css/font-code)
                                                            |b $ %{} :Leaf (:at 1666024715708) (:by |Oj4l0GxFU) (:text |css/column)
                                                    |j $ %{} :Expr (:at 1593318151491) (:by |Oj4l0GxFU)
                                                      :data $ {}
                                                        |T $ %{} :Leaf (:at 1593318152239) (:by |Oj4l0GxFU) (:text |:style)
                                                        |j $ %{} :Expr (:at 1593318457480) (:by |Oj4l0GxFU)
                                                          :data $ {}
                                                            |T $ %{} :Leaf (:at 1593318457480) (:by |Oj4l0GxFU) (:text |{})
                                                            |j $ %{} :Expr (:at 1593318457480) (:by |Oj4l0GxFU)
                                                              :data $ {}
                                                                |T $ %{} :Leaf (:at 1593318457480) (:by |Oj4l0GxFU) (:text |:font-size)
                                                                |j $ %{} :Leaf (:at 1593318457480) (:by |Oj4l0GxFU) (:text |12)
                                                |T $ %{} :Expr (:at 1593318424275) (:by |Oj4l0GxFU)
                                                  :data $ {}
                                                    |D $ %{} :Leaf (:at 1593318424969) (:by |Oj4l0GxFU) (:text |div)
                                                    |L $ %{} :Expr (:at 1593318425176) (:by |Oj4l0GxFU)
                                                      :data $ {}
                                                        |T $ %{} :Leaf (:at 1593318425741) (:by |Oj4l0GxFU) (:text |{})
                                                        |b $ %{} :Expr (:at 1657820438251) (:by |Oj4l0GxFU)
                                                          :data $ {}
                                                            |T $ %{} :Leaf (:at 1657820439981) (:by |Oj4l0GxFU) (:text |:class-name)
                                                            |b $ %{} :Leaf (:at 1657820442994) (:by |Oj4l0GxFU) (:text |css/row-parted)
                                                        |j $ %{} :Expr (:at 1593318426019) (:by |Oj4l0GxFU)
                                                          :data $ {}
                                                            |T $ %{} :Leaf (:at 1593318431207) (:by |Oj4l0GxFU) (:text |:style)
                                                            |j $ %{} :Expr (:at 1593318562621) (:by |Oj4l0GxFU)
                                                              :data $ {}
                                                                |T $ %{} :Leaf (:at 1593318563211) (:by |Oj4l0GxFU) (:text |{})
                                                                |j $ %{} :Expr (:at 1593318563444) (:by |Oj4l0GxFU)
                                                                  :data $ {}
                                                                    |T $ %{} :Leaf (:at 1593318565085) (:by |Oj4l0GxFU) (:text |:border-bottom)
                                                                    |j $ %{} :Expr (:at 1593318565355) (:by |Oj4l0GxFU)
                                                                      :data $ {}
                                                                        |T $ %{} :Leaf (:at 1593318565869) (:by |Oj4l0GxFU) (:text |str)
                                                                        |j $ %{} :Leaf (:at 1593318572584) (:by |Oj4l0GxFU) (:text "|\"1px solid ")
                                                                        |r $ %{} :Expr (:at 1593318569105) (:by |Oj4l0GxFU)
                                                                          :data $ {}
                                                                            |T $ %{} :Leaf (:at 1593318569794) (:by |Oj4l0GxFU) (:text |hsl)
                                                                            |j $ %{} :Leaf (:at 1593318570584) (:by |Oj4l0GxFU) (:text |0)
                                                                            |r $ %{} :Leaf (:at 1593318570879) (:by |Oj4l0GxFU) (:text |0)
                                                                            |v $ %{} :Leaf (:at 1593318618567) (:by |Oj4l0GxFU) (:text |94)
                                                    |T $ %{} :Expr (:at 1593101558841) (:by |Oj4l0GxFU)
                                                      :data $ {}
                                                        |T $ %{} :Leaf (:at 1593101560436) (:by |Oj4l0GxFU) (:text |div)
                                                        |j $ %{} :Expr (:at 1593101560661) (:by |Oj4l0GxFU)
                                                          :data $ {}
                                                            |T $ %{} :Leaf (:at 1593101560983) (:by |Oj4l0GxFU) (:text |{})
                                                        |r $ %{} :Expr (:at 1593101596692) (:by |Oj4l0GxFU)
                                                          :data $ {}
                                                            |T $ %{} :Leaf (:at 1593101597799) (:by |Oj4l0GxFU) (:text |<>)
                                                            |j $ %{} :Expr (:at 1593101626885) (:by |Oj4l0GxFU)
                                                              :data $ {}
                                                                |T $ %{} :Leaf (:at 1593101629076) (:by |Oj4l0GxFU) (:text |str)
                                                                |j $ %{} :Leaf (:at 1593101629927) (:by |Oj4l0GxFU) (:text |action)
                                                        |t $ %{} :Expr (:at 1593101657766) (:by |Oj4l0GxFU)
                                                          :data $ {}
                                                            |T $ %{} :Leaf (:at 1593101658454) (:by |Oj4l0GxFU) (:text |=<)
                                                            |j $ %{} :Leaf (:at 1593101669874) (:by |Oj4l0GxFU) (:text |24)
                                                            |r $ %{} :Leaf (:at 1593101660396) (:by |Oj4l0GxFU) (:text |nil)
                                                        |v $ %{} :Expr (:at 1593101596692) (:by |Oj4l0GxFU)
                                                          :data $ {}
                                                            |T $ %{} :Leaf (:at 1593101597799) (:by |Oj4l0GxFU) (:text |<>)
                                                            |j $ %{} :Leaf (:at 1593101641700) (:by |Oj4l0GxFU) (:text |op-id)
                                                        |w $ %{} :Expr (:at 1593101665843) (:by |Oj4l0GxFU)
                                                          :data $ {}
                                                            |T $ %{} :Leaf (:at 1593101665843) (:by |Oj4l0GxFU) (:text |=<)
                                                            |j $ %{} :Leaf (:at 1593101670960) (:by |Oj4l0GxFU) (:text |8)
                                                            |r $ %{} :Leaf (:at 1593101665843) (:by |Oj4l0GxFU) (:text |nil)
                                                        |x $ %{} :Expr (:at 1593103220254) (:by |Oj4l0GxFU)
                                                          :data $ {}
                                                            |T $ %{} :Leaf (:at 1593103220254) (:by |Oj4l0GxFU) (:text |<>)
                                                            |j $ %{} :Leaf (:at 1593103244397) (:by |Oj4l0GxFU) (:text |op-time)
                                                    |j $ %{} :Expr (:at 1593318432935) (:by |Oj4l0GxFU)
                                                      :data $ {}
                                                        |T $ %{} :Leaf (:at 1593318432935) (:by |Oj4l0GxFU) (:text |if)
                                                        |j $ %{} :Expr (:at 1593318432935) (:by |Oj4l0GxFU)
                                                          :data $ {}
                                                            |T $ %{} :Leaf (:at 1593318432935) (:by |Oj4l0GxFU) (:text |and)
                                                            |j $ %{} :Expr (:at 1593318432935) (:by |Oj4l0GxFU)
                                                              :data $ {}
                                                                |T $ %{} :Leaf (:at 1593318432935) (:by |Oj4l0GxFU) (:text |some?)
                                                                |j $ %{} :Leaf (:at 1593318432935) (:by |Oj4l0GxFU) (:text |pointer)
                                                            |r $ %{} :Expr (:at 1593318432935) (:by |Oj4l0GxFU)
                                                              :data $ {}
                                                                |T $ %{} :Leaf (:at 1666024772342) (:by |Oj4l0GxFU) (:text |not=)
                                                                |j $ %{} :Leaf (:at 1593318432935) (:by |Oj4l0GxFU) (:text |pointer)
                                                                |r $ %{} :Leaf (:at 1593318432935) (:by |Oj4l0GxFU) (:text |0)
                                                        |r $ %{} :Expr (:at 1593318432935) (:by |Oj4l0GxFU)
                                                          :data $ {}
                                                            |T $ %{} :Leaf (:at 1593318432935) (:by |Oj4l0GxFU) (:text |span)
                                                            |j $ %{} :Expr (:at 1593318432935) (:by |Oj4l0GxFU)
                                                              :data $ {}
                                                                |T $ %{} :Leaf (:at 1593318432935) (:by |Oj4l0GxFU) (:text |{})
                                                                |j $ %{} :Expr (:at 1593318432935) (:by |Oj4l0GxFU)
                                                                  :data $ {}
                                                                    |T $ %{} :Leaf (:at 1593318432935) (:by |Oj4l0GxFU) (:text |:inner-text)
                                                                    |j $ %{} :Leaf (:at 1593318432935) (:by |Oj4l0GxFU) (:text ||Remove)
                                                                |n $ %{} :Expr (:at 1666024724077) (:by |Oj4l0GxFU)
                                                                  :data $ {}
                                                                    |T $ %{} :Leaf (:at 1666024728065) (:by |Oj4l0GxFU) (:text |:class-name)
                                                                    |b $ %{} :Leaf (:at 1666024732942) (:by |Oj4l0GxFU) (:text |css/font-fancy)
                                                                |r $ %{} :Expr (:at 1593318432935) (:by |Oj4l0GxFU)
                                                                  :data $ {}
                                                                    |T $ %{} :Leaf (:at 1593318432935) (:by |Oj4l0GxFU) (:text |:style)
                                                                    |j $ %{} :Expr (:at 1593318432935) (:by |Oj4l0GxFU)
                                                                      :data $ {}
                                                                        |T $ %{} :Leaf (:at 1593318432935) (:by |Oj4l0GxFU) (:text |{})
                                                                        |j $ %{} :Expr (:at 1593318432935) (:by |Oj4l0GxFU)
                                                                          :data $ {}
                                                                            |T $ %{} :Leaf (:at 1593318432935) (:by |Oj4l0GxFU) (:text |:cursor)
                                                                            |j $ %{} :Leaf (:at 1593318432935) (:by |Oj4l0GxFU) (:text |:pointer)
                                                                        |r $ %{} :Expr (:at 1593318432935) (:by |Oj4l0GxFU)
                                                                          :data $ {}
                                                                            |T $ %{} :Leaf (:at 1593318432935) (:by |Oj4l0GxFU) (:text |:font-size)
                                                                            |j $ %{} :Leaf (:at 1593318432935) (:by |Oj4l0GxFU) (:text |12)
                                                                        |x $ %{} :Expr (:at 1593318432935) (:by |Oj4l0GxFU)
                                                                          :data $ {}
                                                                            |T $ %{} :Leaf (:at 1593318432935) (:by |Oj4l0GxFU) (:text |:color)
                                                                            |j $ %{} :Expr (:at 1593318432935) (:by |Oj4l0GxFU)
                                                                              :data $ {}
                                                                                |T $ %{} :Leaf (:at 1593318432935) (:by |Oj4l0GxFU) (:text |hsl)
                                                                                |j $ %{} :Leaf (:at 1593318432935) (:by |Oj4l0GxFU) (:text |200)
                                                                                |r $ %{} :Leaf (:at 1593318432935) (:by |Oj4l0GxFU) (:text |100)
                                                                                |v $ %{} :Leaf (:at 1593318432935) (:by |Oj4l0GxFU) (:text |84)
                                                                |v $ %{} :Expr (:at 1593318432935) (:by |Oj4l0GxFU)
                                                                  :data $ {}
                                                                    |T $ %{} :Leaf (:at 1593318432935) (:by |Oj4l0GxFU) (:text |:on-click)
                                                                    |j $ %{} :Expr (:at 1593318432935) (:by |Oj4l0GxFU)
                                                                      :data $ {}
                                                                        |T $ %{} :Leaf (:at 1593318432935) (:by |Oj4l0GxFU) (:text |fn)
                                                                        |j $ %{} :Expr (:at 1593318432935) (:by |Oj4l0GxFU)
                                                                          :data $ {}
                                                                            |T $ %{} :Leaf (:at 1593318432935) (:by |Oj4l0GxFU) (:text |e)
                                                                            |j $ %{} :Leaf (:at 1593318432935) (:by |Oj4l0GxFU) (:text |d!)
                                                                        |r $ %{} :Expr (:at 1593318432935) (:by |Oj4l0GxFU)
                                                                          :data $ {}
                                                                            |T $ %{} :Leaf (:at 1593318432935) (:by |Oj4l0GxFU) (:text |d!)
                                                                            |j $ %{} :Expr (:at 1688398296547) (:by |Oj4l0GxFU)
                                                                              :data $ {}
                                                                                |D $ %{} :Leaf (:at 1688398297174) (:by |Oj4l0GxFU) (:text |::)
                                                                                |T $ %{} :Leaf (:at 1593318432935) (:by |Oj4l0GxFU) (:text |:reel/remove)
                                                                                |b $ %{} :Expr (:at 1688398299335) (:by |Oj4l0GxFU)
                                                                                  :data $ {}
                                                                                    |T $ %{} :Leaf (:at 1688398299335) (:by |Oj4l0GxFU) (:text |:pointer)
                                                                                    |b $ %{} :Leaf (:at 1688398299335) (:by |Oj4l0GxFU) (:text |reel)
                                                |j $ %{} :Expr (:at 1593318160473) (:by |Oj4l0GxFU)
                                                  :data $ {}
                                                    |D $ %{} :Leaf (:at 1593318161128) (:by |Oj4l0GxFU) (:text |div)
                                                    |L $ %{} :Expr (:at 1593318161316) (:by |Oj4l0GxFU)
                                                      :data $ {}
                                                        |T $ %{} :Leaf (:at 1593318161596) (:by |Oj4l0GxFU) (:text |{})
                                                        |b $ %{} :Expr (:at 1657820453017) (:by |Oj4l0GxFU)
                                                          :data $ {}
                                                            |T $ %{} :Leaf (:at 1657820455354) (:by |Oj4l0GxFU) (:text |:class-name)
                                                            |b $ %{} :Leaf (:at 1657820457690) (:by |Oj4l0GxFU) (:text |css/expand)
                                                        |j $ %{} :Expr (:at 1593318162281) (:by |Oj4l0GxFU)
                                                          :data $ {}
                                                            |T $ %{} :Leaf (:at 1593318164691) (:by |Oj4l0GxFU) (:text |:style)
                                                            |j $ %{} :Expr (:at 1593318171643) (:by |Oj4l0GxFU)
                                                              :data $ {}
                                                                |T $ %{} :Leaf (:at 1593318171973) (:by |Oj4l0GxFU) (:text |{})
                                                                |j $ %{} :Expr (:at 1593318172223) (:by |Oj4l0GxFU)
                                                                  :data $ {}
                                                                    |T $ %{} :Leaf (:at 1593318178007) (:by |Oj4l0GxFU) (:text |:max-height)
                                                                    |j $ %{} :Leaf (:at 1593318180812) (:by |Oj4l0GxFU) (:text "|\"200px")
                                                    |T $ %{} :Expr (:at 1593103110508) (:by |Oj4l0GxFU)
                                                      :data $ {}
                                                        |T $ %{} :Leaf (:at 1593103112534) (:by |Oj4l0GxFU) (:text |<>)
                                                        |j $ %{} :Expr (:at 1593103112860) (:by |Oj4l0GxFU)
                                                          :data $ {}
                                                            |T $ %{} :Leaf (:at 1593103115443) (:by |Oj4l0GxFU) (:text |pr-str)
                                                            |j $ %{} :Leaf (:at 1593103117710) (:by |Oj4l0GxFU) (:text |op-data)
                                        |v $ %{} :Expr (:at 1593101566869) (:by |Oj4l0GxFU)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1593101566869) (:by |Oj4l0GxFU) (:text |<>)
                                            |j $ %{} :Leaf (:at 1593101572484) (:by |Oj4l0GxFU) (:text "|\"nil")
                                |t $ %{} :Expr (:at 1593101116021) (:by |Oj4l0GxFU)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1593101119089) (:by |Oj4l0GxFU) (:text |div)
                                    |j $ %{} :Expr (:at 1593101119414) (:by |Oj4l0GxFU)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1593101119845) (:by |Oj4l0GxFU) (:text |{})
                                        |j $ %{} :Expr (:at 1593101120085) (:by |Oj4l0GxFU)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1657820476988) (:by |Oj4l0GxFU) (:text |:class-name)
                                            |j $ %{} :Expr (:at 1593101122985) (:by |Oj4l0GxFU)
                                              :data $ {}
                                                |T $ %{} :Leaf (:at 1657820481330) (:by |Oj4l0GxFU) (:text |str-spaced)
                                                |b $ %{} :Leaf (:at 1657820483228) (:by |Oj4l0GxFU) (:text |css/expand)
                                                |j $ %{} :Leaf (:at 1657820504540) (:by |Oj4l0GxFU) (:text |css/font-code)
                                                |n $ %{} :Leaf (:at 1657820756961) (:by |Oj4l0GxFU) (:text |css-snippet)
                                    |r $ %{} :Expr (:at 1593101157010) (:by |Oj4l0GxFU)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1593101158301) (:by |Oj4l0GxFU) (:text |<>)
                                        |j $ %{} :Expr (:at 1610609934272) (:by |Oj4l0GxFU)
                                          :data $ {}
                                            |D $ %{} :Leaf (:at 1624008572724) (:by |Oj4l0GxFU) (:text |.trim)
                                            |T $ %{} :Expr (:at 1593101159115) (:by |Oj4l0GxFU)
                                              :data $ {}
                                                |T $ %{} :Leaf (:at 1624008566540) (:by |Oj4l0GxFU) (:text |format-cirru-edn)
                                                |j $ %{} :Expr (:at 1593101161154) (:by |Oj4l0GxFU)
                                                  :data $ {}
                                                    |T $ %{} :Leaf (:at 1593101162953) (:by |Oj4l0GxFU) (:text |:store)
                                                    |j $ %{} :Leaf (:at 1593101164587) (:by |Oj4l0GxFU) (:text |reel)
                    |v $ %{} :Expr (:at 1507451416170) (:by |root)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1507451419173) (:by |root) (:text |span)
                        |j $ %{} :Expr (:at 1507451420773) (:by |root)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1507451421144) (:by |root) (:text |{})
          |css-reel $ %{} :CodeEntry (:doc |)
            :code $ %{} :Expr (:at 1507454227127) (:by |root)
              :data $ {}
                |T $ %{} :Leaf (:at 1657820198125) (:by |Oj4l0GxFU) (:text |defstyle)
                |j $ %{} :Leaf (:at 1657820731711) (:by |Oj4l0GxFU) (:text |css-reel)
                |r $ %{} :Expr (:at 1657820198967) (:by |Oj4l0GxFU)
                  :data $ {}
                    |D $ %{} :Leaf (:at 1657820199749) (:by |Oj4l0GxFU) (:text |{})
                    |T $ %{} :Expr (:at 1657820200148) (:by |Oj4l0GxFU)
                      :data $ {}
                        |D $ %{} :Leaf (:at 1657820201600) (:by |Oj4l0GxFU) (:text "|\"$0")
                        |T $ %{} :Expr (:at 1507452151460) (:by |root)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1507452151763) (:by |root) (:text |{})
                            |j $ %{} :Expr (:at 1507452152021) (:by |root)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1507452153111) (:by |root) (:text |:width)
                                |j $ %{} :Leaf (:at 1593318594912) (:by |Oj4l0GxFU) (:text ||60%)
                            |n $ %{} :Expr (:at 1507453692403) (:by |root)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1507453694324) (:by |root) (:text |:height)
                                |j $ %{} :Leaf (:at 1593318597021) (:by |Oj4l0GxFU) (:text ||80%)
                            |v $ %{} :Expr (:at 1507452173376) (:by |root)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1507452174588) (:by |root) (:text |:right)
                                |j $ %{} :Leaf (:at 1623953297580) (:by |Oj4l0GxFU) (:text "|\"0px")
                            |w $ %{} :Expr (:at 1507453709327) (:by |root)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1507453710890) (:by |root) (:text |:bottom)
                                |j $ %{} :Leaf (:at 1623953390694) (:by |Oj4l0GxFU) (:text "|\"0px")
                            |wT $ %{} :Expr (:at 1507453712454) (:by |root)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1507453716229) (:by |root) (:text |:position)
                                |j $ %{} :Leaf (:at 1507453722949) (:by |root) (:text |:fixed)
                            |x $ %{} :Expr (:at 1507452177106) (:by |root)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1507452180135) (:by |root) (:text |:background-color)
                                |j $ %{} :Expr (:at 1507452180355) (:by |root)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1507452180632) (:by |root) (:text |hsl)
                                    |j $ %{} :Leaf (:at 1507452181050) (:by |root) (:text |0)
                                    |r $ %{} :Leaf (:at 1507452181286) (:by |root) (:text |0)
                                    |v $ %{} :Leaf (:at 1507452184217) (:by |root) (:text |100)
                                    |x $ %{} :Leaf (:at 1508641672644) (:by |root) (:text |0.7)
                            |y $ %{} :Expr (:at 1507452188930) (:by |root)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1507452192423) (:by |root) (:text |:border)
                                |j $ %{} :Expr (:at 1507452192841) (:by |root)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1507452195015) (:by |root) (:text |str)
                                    |j $ %{} :Leaf (:at 1507452198184) (:by |root) (:text "||1px solid ")
                                    |r $ %{} :Expr (:at 1507452199074) (:by |root)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1507452201159) (:by |root) (:text |hsl)
                                        |j $ %{} :Leaf (:at 1507452201403) (:by |root) (:text |0)
                                        |r $ %{} :Leaf (:at 1507452201547) (:by |root) (:text |0)
                                        |v $ %{} :Leaf (:at 1507452202300) (:by |root) (:text |90)
                            |yT $ %{} :Expr (:at 1508565128058) (:by |root)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1508565136071) (:by |root) (:text |:font-size)
                                |j $ %{} :Leaf (:at 1508565143233) (:by |root) (:text |14)
                            |yj $ %{} :Expr (:at 1508641456772) (:by |root)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1508641502324) (:by |root) (:text |:backdrop-filter)
                                |j $ %{} :Leaf (:at 1508641893398) (:by |root) (:text "||blur(2px)")
                            |yr $ %{} :Expr (:at 1593101279056) (:by |Oj4l0GxFU)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1593101283086) (:by |Oj4l0GxFU) (:text |:z-index)
                                |j $ %{} :Leaf (:at 1593101284175) (:by |Oj4l0GxFU) (:text |9999)
          |css-snippet $ %{} :CodeEntry (:doc |)
            :code $ %{} :Expr (:at 1657820757340) (:by |Oj4l0GxFU)
              :data $ {}
                |T $ %{} :Leaf (:at 1657820758829) (:by |Oj4l0GxFU) (:text |defstyle)
                |b $ %{} :Leaf (:at 1657820757340) (:by |Oj4l0GxFU) (:text |css-snippet)
                |h $ %{} :Expr (:at 1657820757340) (:by |Oj4l0GxFU)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1657820760572) (:by |Oj4l0GxFU) (:text |{})
                    |b $ %{} :Expr (:at 1657820760862) (:by |Oj4l0GxFU)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1657820762234) (:by |Oj4l0GxFU) (:text "|\"$0")
                        |b $ %{} :Expr (:at 1657820762689) (:by |Oj4l0GxFU)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1657820762689) (:by |Oj4l0GxFU) (:text |{})
                            |b $ %{} :Expr (:at 1657820762689) (:by |Oj4l0GxFU)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1657820762689) (:by |Oj4l0GxFU) (:text |:font-size)
                                |b $ %{} :Leaf (:at 1657820762689) (:by |Oj4l0GxFU) (:text |12)
                            |h $ %{} :Expr (:at 1657820762689) (:by |Oj4l0GxFU)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1657820762689) (:by |Oj4l0GxFU) (:text |:white-space)
                                |b $ %{} :Leaf (:at 1657820762689) (:by |Oj4l0GxFU) (:text |:pre)
                            |l $ %{} :Expr (:at 1657820762689) (:by |Oj4l0GxFU)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1657820762689) (:by |Oj4l0GxFU) (:text |:padding)
                                |b $ %{} :Leaf (:at 1657820762689) (:by |Oj4l0GxFU) (:text "|\"16px 0px 200px 0px")
                            |o $ %{} :Expr (:at 1657820762689) (:by |Oj4l0GxFU)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1657820762689) (:by |Oj4l0GxFU) (:text |:line-height)
                                |b $ %{} :Leaf (:at 1657820762689) (:by |Oj4l0GxFU) (:text "|\"20px")
                            |q $ %{} :Expr (:at 1657820762689) (:by |Oj4l0GxFU)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1657820762689) (:by |Oj4l0GxFU) (:text |:overflow)
                                |b $ %{} :Leaf (:at 1657820762689) (:by |Oj4l0GxFU) (:text |:auto)
                            |s $ %{} :Expr (:at 1657820762689) (:by |Oj4l0GxFU)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1657820762689) (:by |Oj4l0GxFU) (:text |:border-top)
                                |b $ %{} :Expr (:at 1657820762689) (:by |Oj4l0GxFU)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1657820762689) (:by |Oj4l0GxFU) (:text |str)
                                    |b $ %{} :Leaf (:at 1657820762689) (:by |Oj4l0GxFU) (:text "|\"1px solid ")
                                    |h $ %{} :Expr (:at 1657820762689) (:by |Oj4l0GxFU)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1657820762689) (:by |Oj4l0GxFU) (:text |hsl)
                                        |b $ %{} :Leaf (:at 1657820762689) (:by |Oj4l0GxFU) (:text |0)
                                        |h $ %{} :Leaf (:at 1657820762689) (:by |Oj4l0GxFU) (:text |0)
                                        |l $ %{} :Leaf (:at 1657820762689) (:by |Oj4l0GxFU) (:text |94)
          |render-button $ %{} :CodeEntry (:doc |)
            :code $ %{} :Expr (:at 1508642404409) (:by |root)
              :data $ {}
                |T $ %{} :Leaf (:at 1508642408166) (:by |root) (:text |defn)
                |j $ %{} :Leaf (:at 1508642404409) (:by |root) (:text |render-button)
                |n $ %{} :Expr (:at 1508642409197) (:by |root)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1508642419053) (:by |root) (:text |guide)
                    |j $ %{} :Leaf (:at 1508642427996) (:by |root) (:text |on-click)
                    |r $ %{} :Leaf (:at 1508644187491) (:by |root) (:text |enabled?)
                |r $ %{} :Expr (:at 1508642404409) (:by |root)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1508642404409) (:by |root) (:text |div)
                    |j $ %{} :Expr (:at 1508642404409) (:by |root)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1508642404409) (:by |root) (:text |{})
                        |b $ %{} :Expr (:at 1657820390003) (:by |Oj4l0GxFU)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1657820392205) (:by |Oj4l0GxFU) (:text |:class-name)
                            |b $ %{} :Leaf (:at 1657820394413) (:by |Oj4l0GxFU) (:text |css/link)
                        |j $ %{} :Expr (:at 1508642404409) (:by |root)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1508642404409) (:by |root) (:text |:style)
                            |j $ %{} :Expr (:at 1508644191367) (:by |root)
                              :data $ {}
                                |D $ %{} :Leaf (:at 1508644192874) (:by |root) (:text |merge)
                                |b $ %{} :Expr (:at 1508644806194) (:by |root)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1508644806562) (:by |root) (:text |{})
                                    |j $ %{} :Expr (:at 1508644807249) (:by |root)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1508644811640) (:by |root) (:text |:user-select)
                                        |j $ %{} :Leaf (:at 1508644812543) (:by |root) (:text |:none)
                                |j $ %{} :Expr (:at 1508644203599) (:by |root)
                                  :data $ {}
                                    |D $ %{} :Leaf (:at 1508644204269) (:by |root) (:text |if)
                                    |L $ %{} :Expr (:at 1508644210024) (:by |root)
                                      :data $ {}
                                        |D $ %{} :Leaf (:at 1508644212045) (:by |root) (:text |not)
                                        |T $ %{} :Leaf (:at 1508644210998) (:by |root) (:text |enabled?)
                                    |T $ %{} :Expr (:at 1508644193418) (:by |root)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1508644193886) (:by |root) (:text |{})
                                        |j $ %{} :Expr (:at 1508644194173) (:by |root)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1508644195405) (:by |root) (:text |:color)
                                            |j $ %{} :Expr (:at 1508644217863) (:by |root)
                                              :data $ {}
                                                |T $ %{} :Leaf (:at 1508644218938) (:by |root) (:text |hsl)
                                                |j $ %{} :Leaf (:at 1508644219277) (:by |root) (:text |0)
                                                |r $ %{} :Leaf (:at 1508644219499) (:by |root) (:text |0)
                                                |v $ %{} :Leaf (:at 1508644223185) (:by |root) (:text |90)
                        |r $ %{} :Expr (:at 1508642404409) (:by |root)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1515690318755) (:by |root) (:text |:on-click)
                            |j $ %{} :Expr (:at 1508644245209) (:by |root)
                              :data $ {}
                                |D $ %{} :Leaf (:at 1508644246382) (:by |root) (:text |if)
                                |L $ %{} :Leaf (:at 1508644250995) (:by |root) (:text |enabled?)
                                |T $ %{} :Leaf (:at 1508642431590) (:by |root) (:text |on-click)
                                |j $ %{} :Expr (:at 1623953561796) (:by |Oj4l0GxFU)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1623953563042) (:by |Oj4l0GxFU) (:text |fn)
                                    |j $ %{} :Expr (:at 1623953563346) (:by |Oj4l0GxFU)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1623953563857) (:by |Oj4l0GxFU) (:text |e)
                                        |j $ %{} :Leaf (:at 1623953564592) (:by |Oj4l0GxFU) (:text |d!)
                    |r $ %{} :Expr (:at 1508642404409) (:by |root)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1508642404409) (:by |root) (:text |<>)
                        |j $ %{} :Leaf (:at 1508642434512) (:by |root) (:text |guide)
        :ns $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1507357346880) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |ns)
              |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |reel.comp.reel)
              |r $ %{} :Expr (:at 1507357346880) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:require)
                  |j $ %{} :Expr (:at 1507358372096) (:by |root)
                    :data $ {}
                      |j $ %{} :Leaf (:at 1540918186929) (:by |root) (:text |respo.core)
                      |r $ %{} :Leaf (:at 1507358379750) (:by |root) (:text |:refer)
                      |v $ %{} :Expr (:at 1507358379959) (:by |root)
                        :data $ {}
                          |j $ %{} :Leaf (:at 1507358382917) (:by |root) (:text |defcomp)
                          |r $ %{} :Leaf (:at 1507358383894) (:by |root) (:text |<>)
                          |t $ %{} :Leaf (:at 1584768658961) (:by |Oj4l0GxFU) (:text |>>)
                          |v $ %{} :Leaf (:at 1507358385897) (:by |root) (:text |div)
                          |x $ %{} :Leaf (:at 1507358386740) (:by |root) (:text |button)
                          |y $ %{} :Leaf (:at 1507451429586) (:by |root) (:text |span)
                  |n $ %{} :Expr (:at 1657820173771) (:by |Oj4l0GxFU)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1657820174938) (:by |Oj4l0GxFU) (:text |respo.css)
                      |b $ %{} :Leaf (:at 1657820175685) (:by |Oj4l0GxFU) (:text |:refer)
                      |h $ %{} :Expr (:at 1657820175926) (:by |Oj4l0GxFU)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1657820176971) (:by |Oj4l0GxFU) (:text |defstyle)
                  |r $ %{} :Expr (:at 1507357346880) (:by nil)
                    :data $ {}
                      |j $ %{} :Leaf (:at 1610609588371) (:by |Oj4l0GxFU) (:text |respo.util.format)
                      |r $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:refer)
                      |v $ %{} :Expr (:at 1507357346880) (:by nil)
                        :data $ {}
                          |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |hsl)
                  |v $ %{} :Expr (:at 1507357346880) (:by nil)
                    :data $ {}
                      |j $ %{} :Leaf (:at 1507358398441) (:by |root) (:text |respo.comp.inspect)
                      |r $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:refer)
                      |v $ %{} :Expr (:at 1507357346880) (:by nil)
                        :data $ {}
                          |j $ %{} :Leaf (:at 1507358402753) (:by |root) (:text |comp-inspect)
                  |x $ %{} :Expr (:at 1507357346880) (:by nil)
                    :data $ {}
                      |j $ %{} :Leaf (:at 1516431432078) (:by |root) (:text |respo-ui.core)
                      |r $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:as)
                      |v $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |ui)
                  |y $ %{} :Expr (:at 1657820179773) (:by |Oj4l0GxFU)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1657820182292) (:by |Oj4l0GxFU) (:text |respo-ui.css)
                      |b $ %{} :Leaf (:at 1657820183239) (:by |Oj4l0GxFU) (:text |:as)
                      |h $ %{} :Leaf (:at 1657820183892) (:by |Oj4l0GxFU) (:text |css)
                  |yj $ %{} :Expr (:at 1507357346880) (:by nil)
                    :data $ {}
                      |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |respo.comp.space)
                      |r $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:refer)
                      |v $ %{} :Expr (:at 1507357346880) (:by nil)
                        :data $ {}
                          |j $ %{} :Leaf (:at 1507358410991) (:by |root) (:text |=<)
                  |yr $ %{} :Expr (:at 1507357346880) (:by nil)
                    :data $ {}
                      |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |reel.comp.records)
                      |r $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:refer)
                      |v $ %{} :Expr (:at 1507357346880) (:by nil)
                        :data $ {}
                          |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |comp-records)
                  |yv $ %{} :Expr (:at 1508566235717) (:by |root)
                    :data $ {}
                      |j $ %{} :Leaf (:at 1508566236831) (:by |root) (:text |respo-value.comp.value)
                      |r $ %{} :Leaf (:at 1508566238572) (:by |root) (:text |:refer)
                      |v $ %{} :Expr (:at 1508566238797) (:by |root)
                        :data $ {}
                          |j $ %{} :Leaf (:at 1508566240401) (:by |root) (:text |comp-value)
                  |yx $ %{} :Expr (:at 1508566816470) (:by |root)
                    :data $ {}
                      |j $ %{} :Leaf (:at 1508566820130) (:by |root) (:text |reel.style)
                      |r $ %{} :Leaf (:at 1508566820959) (:by |root) (:text |:as)
                      |v $ %{} :Leaf (:at 1508566822307) (:by |root) (:text |style)
      |reel.core $ {}
        :defs $ {}
          |play-records $ %{} :CodeEntry (:doc |)
            :code $ %{} :Expr (:at 1507357346880) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |defn)
                |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |play-records)
                |r $ %{} :Expr (:at 1507357346880) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |store)
                    |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |records)
                    |r $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |updater)
                    |v $ %{} :Leaf (:at 1518145142053) (:by |root) (:text |pointer)
                |v $ %{} :Expr (:at 1507357346880) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |if)
                    |j $ %{} :Expr (:at 1507357346880) (:by nil)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1610612070020) (:by |Oj4l0GxFU) (:text |&=)
                        |b $ %{} :Leaf (:at 1610612070244) (:by |Oj4l0GxFU) (:text |0)
                        |j $ %{} :Leaf (:at 1518145232804) (:by |root) (:text |pointer)
                    |r $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |store)
                    |v $ %{} :Expr (:at 1610610060483) (:by |Oj4l0GxFU)
                      :data $ {}
                        |D $ %{} :Leaf (:at 1610610061897) (:by |Oj4l0GxFU) (:text |let[])
                        |L $ %{} :Expr (:at 1610610064995) (:by |Oj4l0GxFU)
                          :data $ {}
                            |j $ %{} :Leaf (:at 1610610064995) (:by |Oj4l0GxFU) (:text |op)
                            |v $ %{} :Leaf (:at 1610610064995) (:by |Oj4l0GxFU) (:text |op-id)
                            |x $ %{} :Leaf (:at 1610610064995) (:by |Oj4l0GxFU) (:text |op-time)
                        |P $ %{} :Expr (:at 1610610067994) (:by |Oj4l0GxFU)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1610610067994) (:by |Oj4l0GxFU) (:text |first)
                            |j $ %{} :Leaf (:at 1610610067994) (:by |Oj4l0GxFU) (:text |records)
                        |T $ %{} :Expr (:at 1507357346880) (:by nil)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1610610075247) (:by |Oj4l0GxFU) (:text |&let)
                            |j $ %{} :Expr (:at 1507357346880) (:by nil)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |next-store)
                                |j $ %{} :Expr (:at 1507357346880) (:by nil)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |updater)
                                    |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |store)
                                    |r $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |op)
                                    |x $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |op-id)
                                    |y $ %{} :Leaf (:at 1518145251342) (:by |root) (:text |op-time)
                            |r $ %{} :Expr (:at 1507357346880) (:by nil)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |recur)
                                |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |next-store)
                                |r $ %{} :Expr (:at 1507357346880) (:by nil)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |rest)
                                    |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |records)
                                |v $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |updater)
                                |x $ %{} :Expr (:at 1518145256415) (:by |root)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1518145255357) (:by |root) (:text |dec)
                                    |j $ %{} :Leaf (:at 1518145257489) (:by |root) (:text |pointer)
          |reel-updater $ %{} :CodeEntry (:doc |)
            :code $ %{} :Expr (:at 1507357346880) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |defn)
                |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |reel-updater)
                |r $ %{} :Expr (:at 1507357346880) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |updater)
                    |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |reel)
                    |r $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |op)
                |v $ %{} :Expr (:at 1507357346880) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |;)
                    |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |println)
                    |r $ %{} :Leaf (:at 1507357346880) (:by |root) (:text ||Name:)
                    |v $ %{} :Expr (:at 1507357346880) (:by nil)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1623957554096) (:by |Oj4l0GxFU) (:text |turn-string)
                        |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |op)
                |x $ %{} :Expr (:at 1518143353421) (:by |root)
                  :data $ {}
                    |D $ %{} :Leaf (:at 1518143357146) (:by |root) (:text |let)
                    |L $ %{} :Expr (:at 1518143415678) (:by |root)
                      :data $ {}
                        |T $ %{} :Expr (:at 1518143357526) (:by |root)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1518143359827) (:by |root) (:text |op-id)
                            |j $ %{} :Expr (:at 1610610606006) (:by |Oj4l0GxFU)
                              :data $ {}
                                |D $ %{} :Leaf (:at 1623957481103) (:by |Oj4l0GxFU) (:text |generate-id!)
                        |j $ %{} :Expr (:at 1518143365609) (:by |root)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1518143366989) (:by |root) (:text |op-time)
                            |j $ %{} :Expr (:at 1518143368032) (:by |root)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1623957472162) (:by |Oj4l0GxFU) (:text |js/Date.now)
                    |T $ %{} :Expr (:at 1507357346880) (:by nil)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |if)
                        |j $ %{} :Expr (:at 1507357346880) (:by nil)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1623957528908) (:by |Oj4l0GxFU) (:text |.starts-with?)
                            |j $ %{} :Expr (:at 1507357346880) (:by nil)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |str)
                                |j $ %{} :Expr (:at 1687780734669) (:by |Oj4l0GxFU)
                                  :data $ {}
                                    |D $ %{} :Leaf (:at 1687780735534) (:by |Oj4l0GxFU) (:text |nth)
                                    |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |op)
                                    |b $ %{} :Leaf (:at 1687780752890) (:by |Oj4l0GxFU) (:text |0)
                            |r $ %{} :Leaf (:at 1507357346880) (:by |root) (:text ||:reel/)
                        |r $ %{} :Expr (:at 1507368075494) (:by |root)
                          :data $ {}
                            |D $ %{} :Leaf (:at 1507368076755) (:by |root) (:text |merge)
                            |L $ %{} :Leaf (:at 1507368078768) (:by |root) (:text |reel)
                            |T $ %{} :Expr (:at 1507460266439) (:by |root)
                              :data $ {}
                                |D $ %{} :Leaf (:at 1507460267525) (:by |root) (:text |let)
                                |L $ %{} :Expr (:at 1507460267723) (:by |root)
                                  :data $ {}
                                    |T $ %{} :Expr (:at 1507460267881) (:by |root)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1507460269766) (:by |root) (:text |pointer)
                                        |j $ %{} :Expr (:at 1507460270878) (:by |root)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1623957566056) (:by |Oj4l0GxFU) (:text |&map:get)
                                            |j $ %{} :Leaf (:at 1507460280553) (:by |root) (:text |reel)
                                            |r $ %{} :Leaf (:at 1623957566830) (:by |Oj4l0GxFU) (:text |:pointer)
                                    |j $ %{} :Expr (:at 1507460272705) (:by |root)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1507460274995) (:by |root) (:text |records)
                                        |j $ %{} :Expr (:at 1507460275353) (:by |root)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1623957570264) (:by |Oj4l0GxFU) (:text |&map:get)
                                            |j $ %{} :Leaf (:at 1507460278335) (:by |root) (:text |reel)
                                            |r $ %{} :Leaf (:at 1623957570856) (:by |Oj4l0GxFU) (:text |:records)
                                    |r $ %{} :Expr (:at 1507460282945) (:by |root)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1507460283997) (:by |root) (:text |base)
                                        |j $ %{} :Expr (:at 1507460284227) (:by |root)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1623957574755) (:by |Oj4l0GxFU) (:text |&map:get)
                                            |j $ %{} :Leaf (:at 1507460286428) (:by |root) (:text |reel)
                                            |r $ %{} :Leaf (:at 1623957575330) (:by |Oj4l0GxFU) (:text |:base)
                                    |t $ %{} :Expr (:at 1508643726664) (:by |root)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1508643727262) (:by |root) (:text |store)
                                        |j $ %{} :Expr (:at 1508643727680) (:by |root)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1623957578563) (:by |Oj4l0GxFU) (:text |&map:get)
                                            |j $ %{} :Leaf (:at 1508643729615) (:by |root) (:text |reel)
                                            |r $ %{} :Leaf (:at 1623957579113) (:by |Oj4l0GxFU) (:text |:base)
                                    |v $ %{} :Expr (:at 1507460297038) (:by |root)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1507460299995) (:by |root) (:text |stopped?)
                                        |j $ %{} :Expr (:at 1507460300311) (:by |root)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1623957584721) (:by |Oj4l0GxFU) (:text |&map:get)
                                            |j $ %{} :Leaf (:at 1507460302743) (:by |root) (:text |reel)
                                            |r $ %{} :Leaf (:at 1623957585299) (:by |Oj4l0GxFU) (:text |:stopped?)
                                |T $ %{} :Expr (:at 1507357346880) (:by nil)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1687780316890) (:by |Oj4l0GxFU) (:text |tag-match)
                                    |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |op)
                                    |r $ %{} :Expr (:at 1507357346880) (:by nil)
                                      :data $ {}
                                        |T $ %{} :Expr (:at 1687780337129) (:by |Oj4l0GxFU)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:reel/toggle)
                                        |r $ %{} :Expr (:at 1507368082521) (:by |root)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1507368082944) (:by |root) (:text |{})
                                            |j $ %{} :Expr (:at 1507368083622) (:by |root)
                                              :data $ {}
                                                |T $ %{} :Leaf (:at 1507368087349) (:by |root) (:text |:display?)
                                                |j $ %{} :Expr (:at 1507368087618) (:by |root)
                                                  :data $ {}
                                                    |T $ %{} :Leaf (:at 1507368088873) (:by |root) (:text |not)
                                                    |j $ %{} :Expr (:at 1507368089894) (:by |root)
                                                      :data $ {}
                                                        |T $ %{} :Leaf (:at 1507368091784) (:by |root) (:text |:display?)
                                                        |j $ %{} :Leaf (:at 1507368093578) (:by |root) (:text |reel)
                                    |v $ %{} :Expr (:at 1507357346880) (:by nil)
                                      :data $ {}
                                        |T $ %{} :Expr (:at 1687780278843) (:by |Oj4l0GxFU)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:reel/recall)
                                            |b $ %{} :Leaf (:at 1687780280400) (:by |Oj4l0GxFU) (:text |idx)
                                        |j $ %{} :Expr (:at 1507357346880) (:by nil)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |let)
                                            |j $ %{} :Expr (:at 1507357346880) (:by nil)
                                              :data $ {}
                                                |j $ %{} :Expr (:at 1507454289052) (:by |root)
                                                  :data $ {}
                                                    |T $ %{} :Leaf (:at 1507454292271) (:by |root) (:text |new-store)
                                                    |r $ %{} :Expr (:at 1507454845384) (:by |root)
                                                      :data $ {}
                                                        |T $ %{} :Leaf (:at 1507454848988) (:by |root) (:text |play-records)
                                                        |j $ %{} :Leaf (:at 1518144789988) (:by |root) (:text |base)
                                                        |n $ %{} :Leaf (:at 1518145272326) (:by |root) (:text |records)
                                                        |v $ %{} :Leaf (:at 1507454867021) (:by |root) (:text |updater)
                                                        |x $ %{} :Leaf (:at 1518145275996) (:by |root) (:text |idx)
                                            |r $ %{} :Expr (:at 1507368111971) (:by |root)
                                              :data $ {}
                                                |T $ %{} :Leaf (:at 1507368139409) (:by |root) (:text |{})
                                                |j $ %{} :Expr (:at 1507368139703) (:by |root)
                                                  :data $ {}
                                                    |T $ %{} :Leaf (:at 1507368140768) (:by |root) (:text |:pointer)
                                                    |j $ %{} :Leaf (:at 1507368141590) (:by |root) (:text |idx)
                                                |r $ %{} :Expr (:at 1507368142266) (:by |root)
                                                  :data $ {}
                                                    |T $ %{} :Leaf (:at 1507368150144) (:by |root) (:text |:stopped?)
                                                    |j $ %{} :Leaf (:at 1507368148541) (:by |root) (:text |true)
                                                |v $ %{} :Expr (:at 1507368154554) (:by |root)
                                                  :data $ {}
                                                    |T $ %{} :Leaf (:at 1507368155601) (:by |root) (:text |:store)
                                                    |j $ %{} :Leaf (:at 1507454312411) (:by |root) (:text |new-store)
                                    |x $ %{} :Expr (:at 1507357346880) (:by nil)
                                      :data $ {}
                                        |T $ %{} :Expr (:at 1687780336021) (:by |Oj4l0GxFU)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:reel/run)
                                        |j $ %{} :Expr (:at 1507454018529) (:by |root)
                                          :data $ {}
                                            |D $ %{} :Leaf (:at 1507454019567) (:by |root) (:text |let)
                                            |L $ %{} :Expr (:at 1507454019780) (:by |root)
                                              :data $ {}
                                                |T $ %{} :Expr (:at 1507454019932) (:by |root)
                                                  :data $ {}
                                                    |T $ %{} :Leaf (:at 1507454022324) (:by |root) (:text |new-store)
                                                    |j $ %{} :Expr (:at 1507357346880) (:by nil)
                                                      :data $ {}
                                                        |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |play-records)
                                                        |f $ %{} :Leaf (:at 1508643742013) (:by |root) (:text |base)
                                                        |n $ %{} :Leaf (:at 1508643745170) (:by |root) (:text |records)
                                                        |v $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |updater)
                                                        |x $ %{} :Expr (:at 1518145280211) (:by |root)
                                                          :data $ {}
                                                            |T $ %{} :Leaf (:at 1518145280931) (:by |root) (:text |count)
                                                            |j $ %{} :Leaf (:at 1518145282768) (:by |root) (:text |records)
                                            |T $ %{} :Expr (:at 1507357346880) (:by nil)
                                              :data $ {}
                                                |T $ %{} :Leaf (:at 1507368036236) (:by |root) (:text |{})
                                                |r $ %{} :Expr (:at 1507357346880) (:by nil)
                                                  :data $ {}
                                                    |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:store)
                                                    |r $ %{} :Leaf (:at 1507454044125) (:by |root) (:text |new-store)
                                                |v $ %{} :Expr (:at 1507357346880) (:by nil)
                                                  :data $ {}
                                                    |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:stopped?)
                                                    |r $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |false)
                                                |x $ %{} :Expr (:at 1507357346880) (:by nil)
                                                  :data $ {}
                                                    |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:pointer)
                                                    |r $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |nil)
                                    |xT $ %{} :Expr (:at 1508643439522) (:by |root)
                                      :data $ {}
                                        |T $ %{} :Expr (:at 1687780334356) (:by |Oj4l0GxFU)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1508643443321) (:by |root) (:text |:reel/step)
                                        |j $ %{} :Expr (:at 1508643444563) (:by |root)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1508643478757) (:by |root) (:text |if)
                                            |j $ %{} :Leaf (:at 1508643482423) (:by |root) (:text |stopped?)
                                            |n $ %{} :Expr (:at 1508643511009) (:by |root)
                                              :data $ {}
                                                |D $ %{} :Leaf (:at 1508643529004) (:by |root) (:text |if)
                                                |L $ %{} :Expr (:at 1508643529303) (:by |root)
                                                  :data $ {}
                                                    |T $ %{} :Leaf (:at 1508643629242) (:by |root) (:text |<)
                                                    |j $ %{} :Expr (:at 1508643630140) (:by |root)
                                                      :data $ {}
                                                        |D $ %{} :Leaf (:at 1508643631984) (:by |root) (:text |count)
                                                        |T $ %{} :Leaf (:at 1508643536702) (:by |root) (:text |records)
                                                    |r $ %{} :Leaf (:at 1508643633303) (:by |root) (:text |2)
                                                |P $ %{} :Leaf (:at 1508643540153) (:by |root) (:text |nil)
                                                |T $ %{} :Expr (:at 1508643542645) (:by |root)
                                                  :data $ {}
                                                    |D $ %{} :Leaf (:at 1508643551190) (:by |root) (:text |if)
                                                    |L $ %{} :Expr (:at 1508643570165) (:by |root)
                                                      :data $ {}
                                                        |T $ %{} :Leaf (:at 1508643572752) (:by |root) (:text |<)
                                                        |j $ %{} :Leaf (:at 1508643574727) (:by |root) (:text |pointer)
                                                        |r $ %{} :Expr (:at 1508643574992) (:by |root)
                                                          :data $ {}
                                                            |T $ %{} :Leaf (:at 1508643576949) (:by |root) (:text |count)
                                                            |j $ %{} :Leaf (:at 1508643584104) (:by |root) (:text |records)
                                                    |P $ %{} :Expr (:at 1508643774207) (:by |root)
                                                      :data $ {}
                                                        |D $ %{} :Leaf (:at 1508643774891) (:by |root) (:text |let)
                                                        |L $ %{} :Expr (:at 1508643775501) (:by |root)
                                                          :data $ {}
                                                            |D $ %{} :Expr (:at 1508643787674) (:by |root)
                                                              :data $ {}
                                                                |T $ %{} :Leaf (:at 1508643791656) (:by |root) (:text |next-pointer)
                                                                |j $ %{} :Expr (:at 1508643791968) (:by |root)
                                                                  :data $ {}
                                                                    |T $ %{} :Leaf (:at 1508643792486) (:by |root) (:text |inc)
                                                                    |j $ %{} :Leaf (:at 1508643793542) (:by |root) (:text |pointer)
                                                            |T $ %{} :Expr (:at 1508643775934) (:by |root)
                                                              :data $ {}
                                                                |T $ %{} :Leaf (:at 1508643778152) (:by |root) (:text |next-record)
                                                                |j $ %{} :Expr (:at 1508643778938) (:by |root)
                                                                  :data $ {}
                                                                    |T $ %{} :Leaf (:at 1610612516113) (:by |Oj4l0GxFU) (:text |get)
                                                                    |j $ %{} :Leaf (:at 1508643780566) (:by |root) (:text |records)
                                                                    |r $ %{} :Leaf (:at 1508644063248) (:by |root) (:text |pointer)
                                                        |T $ %{} :Expr (:at 1610610131342) (:by |Oj4l0GxFU)
                                                          :data $ {}
                                                            |D $ %{} :Leaf (:at 1610610133545) (:by |Oj4l0GxFU) (:text |let[])
                                                            |L $ %{} :Expr (:at 1610610135709) (:by |Oj4l0GxFU)
                                                              :data $ {}
                                                                |j $ %{} :Leaf (:at 1610610135709) (:by |Oj4l0GxFU) (:text |old-op)
                                                                |v $ %{} :Leaf (:at 1610610135709) (:by |Oj4l0GxFU) (:text |old-id)
                                                                |x $ %{} :Leaf (:at 1610610135709) (:by |Oj4l0GxFU) (:text |old-time)
                                                            |P $ %{} :Leaf (:at 1610610141650) (:by |Oj4l0GxFU) (:text |next-record)
                                                            |T $ %{} :Expr (:at 1508643588094) (:by |root)
                                                              :data $ {}
                                                                |T $ %{} :Leaf (:at 1508643589201) (:by |root) (:text |{})
                                                                |j $ %{} :Expr (:at 1508643589614) (:by |root)
                                                                  :data $ {}
                                                                    |T $ %{} :Leaf (:at 1508644007215) (:by |root) (:text |:pointer)
                                                                    |j $ %{} :Leaf (:at 1508643803877) (:by |root) (:text |next-pointer)
                                                                |r $ %{} :Expr (:at 1508643595851) (:by |root)
                                                                  :data $ {}
                                                                    |T $ %{} :Leaf (:at 1508643600116) (:by |root) (:text |:store)
                                                                    |j $ %{} :Expr (:at 1508643716913) (:by |root)
                                                                      :data $ {}
                                                                        |T $ %{} :Leaf (:at 1508643718603) (:by |root) (:text |updater)
                                                                        |j $ %{} :Expr (:at 1508643719547) (:by |root)
                                                                          :data $ {}
                                                                            |T $ %{} :Leaf (:at 1508643720444) (:by |root) (:text |:store)
                                                                            |j $ %{} :Leaf (:at 1508643721686) (:by |root) (:text |reel)
                                                                        |n $ %{} :Leaf (:at 1518144860083) (:by |root) (:text |old-op)
                                                                        |q $ %{} :Leaf (:at 1518144856124) (:by |root) (:text |old-id)
                                                                        |qT $ %{} :Leaf (:at 1518144857582) (:by |root) (:text |old-time)
                                                    |T $ %{} :Expr (:at 1508643494294) (:by |root)
                                                      :data $ {}
                                                        |T $ %{} :Leaf (:at 1508643494947) (:by |root) (:text |{})
                                                        |j $ %{} :Expr (:at 1508643496381) (:by |root)
                                                          :data $ {}
                                                            |T $ %{} :Leaf (:at 1508643498553) (:by |root) (:text |:store)
                                                            |j $ %{} :Leaf (:at 1508643844053) (:by |root) (:text |base)
                                                        |r $ %{} :Expr (:at 1508643503494) (:by |root)
                                                          :data $ {}
                                                            |T $ %{} :Leaf (:at 1508643505910) (:by |root) (:text |:pointer)
                                                            |j $ %{} :Leaf (:at 1508643845762) (:by |root) (:text |0)
                                            |r $ %{} :Leaf (:at 1508643493418) (:by |root) (:text |nil)
                                    |y $ %{} :Expr (:at 1507357346880) (:by nil)
                                      :data $ {}
                                        |T $ %{} :Expr (:at 1687780332334) (:by |Oj4l0GxFU)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:reel/merge)
                                        |j $ %{} :Expr (:at 1507460092439) (:by |root)
                                          :data $ {}
                                            |D $ %{} :Leaf (:at 1507460093329) (:by |root) (:text |if)
                                            |J $ %{} :Leaf (:at 1507460309817) (:by |root) (:text |stopped?)
                                            |P $ %{} :Expr (:at 1507460170935) (:by |root)
                                              :data $ {}
                                                |D $ %{} :Leaf (:at 1507460173285) (:by |root) (:text |if)
                                                |L $ %{} :Expr (:at 1507460177336) (:by |root)
                                                  :data $ {}
                                                    |T $ %{} :Leaf (:at 1612762647829) (:by |Oj4l0GxFU) (:text |&=)
                                                    |b $ %{} :Leaf (:at 1612762648472) (:by |Oj4l0GxFU) (:text |0)
                                                    |j $ %{} :Leaf (:at 1507460312458) (:by |root) (:text |pointer)
                                                |P $ %{} :Expr (:at 1507460184651) (:by |root)
                                                  :data $ {}
                                                    |T $ %{} :Leaf (:at 1507460184922) (:by |root) (:text |{})
                                                |T $ %{} :Expr (:at 1507460099262) (:by |root)
                                                  :data $ {}
                                                    |T $ %{} :Leaf (:at 1507460100175) (:by |root) (:text |let)
                                                    |j $ %{} :Expr (:at 1507460100392) (:by |root)
                                                      :data $ {}
                                                        |T $ %{} :Expr (:at 1507460100546) (:by |root)
                                                          :data $ {}
                                                            |T $ %{} :Leaf (:at 1507460165785) (:by |root) (:text |new-store)
                                                            |j $ %{} :Expr (:at 1507460166408) (:by |root)
                                                              :data $ {}
                                                                |T $ %{} :Leaf (:at 1507460191043) (:by |root) (:text |play-records)
                                                                |f $ %{} :Leaf (:at 1507460315276) (:by |root) (:text |base)
                                                                |j $ %{} :Leaf (:at 1518145395990) (:by |root) (:text |records)
                                                                |v $ %{} :Leaf (:at 1507460204218) (:by |root) (:text |updater)
                                                                |x $ %{} :Leaf (:at 1518145398697) (:by |root) (:text |pointer)
                                                    |r $ %{} :Expr (:at 1507460212334) (:by |root)
                                                      :data $ {}
                                                        |T $ %{} :Leaf (:at 1507460213515) (:by |root) (:text |{})
                                                        |j $ %{} :Expr (:at 1507460213803) (:by |root)
                                                          :data $ {}
                                                            |T $ %{} :Leaf (:at 1507460215443) (:by |root) (:text |:store)
                                                            |j $ %{} :Leaf (:at 1507460232166) (:by |root) (:text |new-store)
                                                        |r $ %{} :Expr (:at 1507460233799) (:by |root)
                                                          :data $ {}
                                                            |T $ %{} :Leaf (:at 1507460237281) (:by |root) (:text |:base)
                                                            |j $ %{} :Leaf (:at 1507460238950) (:by |root) (:text |new-store)
                                                        |v $ %{} :Expr (:at 1507460239757) (:by |root)
                                                          :data $ {}
                                                            |T $ %{} :Leaf (:at 1507460250084) (:by |root) (:text |:pointer)
                                                            |j $ %{} :Leaf (:at 1507460250403) (:by |root) (:text |0)
                                                        |x $ %{} :Expr (:at 1507460251240) (:by |root)
                                                          :data $ {}
                                                            |T $ %{} :Leaf (:at 1507460253143) (:by |root) (:text |:records)
                                                            |j $ %{} :Expr (:at 1507460254402) (:by |root)
                                                              :data $ {}
                                                                |T $ %{} :Leaf (:at 1623957606714) (:by |Oj4l0GxFU) (:text |.slice)
                                                                |j $ %{} :Leaf (:at 1507460324377) (:by |root) (:text |records)
                                                                |r $ %{} :Leaf (:at 1507460325668) (:by |root) (:text |pointer)
                                                        |y $ %{} :Expr (:at 1507460768539) (:by |root)
                                                          :data $ {}
                                                            |T $ %{} :Leaf (:at 1507460771421) (:by |root) (:text |:merged?)
                                                            |j $ %{} :Leaf (:at 1507460772031) (:by |root) (:text |true)
                                            |T $ %{} :Expr (:at 1507357346880) (:by nil)
                                              :data $ {}
                                                |T $ %{} :Leaf (:at 1507368016601) (:by |root) (:text |{})
                                                |v $ %{} :Expr (:at 1507357346880) (:by nil)
                                                  :data $ {}
                                                    |j $ %{} :Leaf (:at 1507369634770) (:by |root) (:text |:base)
                                                    |r $ %{} :Expr (:at 1507460386833) (:by |root)
                                                      :data $ {}
                                                        |T $ %{} :Leaf (:at 1507460387986) (:by |root) (:text |:store)
                                                        |j $ %{} :Leaf (:at 1507460389262) (:by |root) (:text |reel)
                                                |y $ %{} :Expr (:at 1507357346880) (:by nil)
                                                  :data $ {}
                                                    |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:pointer)
                                                    |r $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |nil)
                                                |yT $ %{} :Expr (:at 1507357346880) (:by nil)
                                                  :data $ {}
                                                    |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:records)
                                                    |r $ %{} :Expr (:at 1507357346880) (:by nil)
                                                      :data $ {}
                                                        |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |[])
                                                |yj $ %{} :Expr (:at 1507460774417) (:by |root)
                                                  :data $ {}
                                                    |T $ %{} :Leaf (:at 1507460777744) (:by |root) (:text |:merged?)
                                                    |j $ %{} :Leaf (:at 1507460778468) (:by |root) (:text |true)
                                    |yT $ %{} :Expr (:at 1507357346880) (:by nil)
                                      :data $ {}
                                        |T $ %{} :Expr (:at 1687780331267) (:by |Oj4l0GxFU)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:reel/reset)
                                        |j $ %{} :Expr (:at 1507461207954) (:by |root)
                                          :data $ {}
                                            |D $ %{} :Leaf (:at 1507461208632) (:by |root) (:text |if)
                                            |L $ %{} :Leaf (:at 1507461214178) (:by |root) (:text |stopped?)
                                            |P $ %{} :Expr (:at 1507461244462) (:by |root)
                                              :data $ {}
                                                |T $ %{} :Leaf (:at 1507461245029) (:by |root) (:text |{})
                                                |j $ %{} :Expr (:at 1507461245852) (:by |root)
                                                  :data $ {}
                                                    |T $ %{} :Leaf (:at 1507461323742) (:by |root) (:text |:records)
                                                    |j $ %{} :Expr (:at 1507461335274) (:by |root)
                                                      :data $ {}
                                                        |T $ %{} :Leaf (:at 1623957610172) (:by |Oj4l0GxFU) (:text |.slice)
                                                        |j $ %{} :Leaf (:at 1507461340479) (:by |root) (:text |records)
                                                        |n $ %{} :Leaf (:at 1507461344314) (:by |root) (:text |0)
                                                        |r $ %{} :Leaf (:at 1507461342955) (:by |root) (:text |pointer)
                                            |T $ %{} :Expr (:at 1507357346880) (:by nil)
                                              :data $ {}
                                                |T $ %{} :Leaf (:at 1507368000936) (:by |root) (:text |{})
                                                |r $ %{} :Expr (:at 1507357346880) (:by nil)
                                                  :data $ {}
                                                    |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:store)
                                                    |r $ %{} :Expr (:at 1507357346880) (:by nil)
                                                      :data $ {}
                                                        |T $ %{} :Leaf (:at 1507369637867) (:by |root) (:text |:base)
                                                        |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |reel)
                                                |v $ %{} :Expr (:at 1507357346880) (:by nil)
                                                  :data $ {}
                                                    |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:pointer)
                                                    |r $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |nil)
                                                |x $ %{} :Expr (:at 1507357346880) (:by nil)
                                                  :data $ {}
                                                    |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:records)
                                                    |r $ %{} :Expr (:at 1507357346880) (:by nil)
                                                      :data $ {}
                                                        |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |[])
                                                |y $ %{} :Expr (:at 1507357346880) (:by nil)
                                                  :data $ {}
                                                    |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:stopped?)
                                                    |r $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |false)
                                    |yb $ %{} :Expr (:at 1518144237153) (:by |root)
                                      :data $ {}
                                        |T $ %{} :Expr (:at 1687780290216) (:by |Oj4l0GxFU)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1518144245633) (:by |root) (:text |:reel/remove)
                                            |b $ %{} :Leaf (:at 1687780291163) (:by |Oj4l0GxFU) (:text |idx)
                                        |j $ %{} :Expr (:at 1518144510401) (:by |root)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1518144512105) (:by |root) (:text |if)
                                            |b $ %{} :Expr (:at 1518144525616) (:by |root)
                                              :data $ {}
                                                |T $ %{} :Leaf (:at 1612762640990) (:by |Oj4l0GxFU) (:text |&=)
                                                |b $ %{} :Leaf (:at 1612762641712) (:by |Oj4l0GxFU) (:text |0)
                                                |j $ %{} :Leaf (:at 1518144527985) (:by |root) (:text |idx)
                                            |j $ %{} :Leaf (:at 1518144536202) (:by |root) (:text |reel)
                                            |r $ %{} :Expr (:at 1518144538565) (:by |root)
                                              :data $ {}
                                                |T $ %{} :Leaf (:at 1518144540781) (:by |root) (:text |->)
                                                |j $ %{} :Leaf (:at 1518144541754) (:by |root) (:text |reel)
                                                |r $ %{} :Expr (:at 1518144542136) (:by |root)
                                                  :data $ {}
                                                    |T $ %{} :Leaf (:at 1518144543098) (:by |root) (:text |update)
                                                    |j $ %{} :Leaf (:at 1518144547041) (:by |root) (:text |:pointer)
                                                    |r $ %{} :Leaf (:at 1518144551300) (:by |root) (:text |dec)
                                                |v $ %{} :Expr (:at 1518144552926) (:by |root)
                                                  :data $ {}
                                                    |T $ %{} :Leaf (:at 1518144556579) (:by |root) (:text |update)
                                                    |j $ %{} :Leaf (:at 1518144565028) (:by |root) (:text |:records)
                                                    |r $ %{} :Expr (:at 1518144559296) (:by |root)
                                                      :data $ {}
                                                        |T $ %{} :Leaf (:at 1518144560312) (:by |root) (:text |fn)
                                                        |j $ %{} :Expr (:at 1518144560562) (:by |root)
                                                          :data $ {}
                                                            |T $ %{} :Leaf (:at 1518144562088) (:by |root) (:text |records)
                                                        |r $ %{} :Expr (:at 1518144579888) (:by |root)
                                                          :data $ {}
                                                            |T $ %{} :Leaf (:at 1518144612518) (:by |root) (:text |concat)
                                                            |j $ %{} :Expr (:at 1518144612765) (:by |root)
                                                              :data $ {}
                                                                |T $ %{} :Leaf (:at 1623957636527) (:by |Oj4l0GxFU) (:text |.slice)
                                                                |j $ %{} :Leaf (:at 1518144620904) (:by |root) (:text |records)
                                                                |r $ %{} :Leaf (:at 1518144621965) (:by |root) (:text |0)
                                                                |v $ %{} :Expr (:at 1518144722803) (:by |root)
                                                                  :data $ {}
                                                                    |D $ %{} :Leaf (:at 1518144723800) (:by |root) (:text |dec)
                                                                    |T $ %{} :Leaf (:at 1518144623807) (:by |root) (:text |idx)
                                                            |r $ %{} :Expr (:at 1518144624968) (:by |root)
                                                              :data $ {}
                                                                |T $ %{} :Leaf (:at 1623957637914) (:by |Oj4l0GxFU) (:text |.slice)
                                                                |j $ %{} :Leaf (:at 1518144629724) (:by |root) (:text |records)
                                                                |r $ %{} :Leaf (:at 1518144632700) (:by |root) (:text |idx)
                                                |x $ %{} :Expr (:at 1518144566254) (:by |root)
                                                  :data $ {}
                                                    |T $ %{} :Leaf (:at 1518144568683) (:by |root) (:text |assoc)
                                                    |j $ %{} :Leaf (:at 1518144570839) (:by |root) (:text |:store)
                                                    |r $ %{} :Expr (:at 1507460166408) (:by |root)
                                                      :data $ {}
                                                        |T $ %{} :Leaf (:at 1507460191043) (:by |root) (:text |play-records)
                                                        |f $ %{} :Leaf (:at 1518144675931) (:by |root) (:text |base)
                                                        |j $ %{} :Leaf (:at 1518145407462) (:by |root) (:text |records)
                                                        |v $ %{} :Leaf (:at 1507460204218) (:by |root) (:text |updater)
                                                        |x $ %{} :Expr (:at 1518145403399) (:by |root)
                                                          :data $ {}
                                                            |T $ %{} :Leaf (:at 1518145403987) (:by |root) (:text |dec)
                                                            |j $ %{} :Leaf (:at 1518145404788) (:by |root) (:text |idx)
                                    |z $ %{} :Expr (:at 1687780322945) (:by |Oj4l0GxFU)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1687780323565) (:by |Oj4l0GxFU) (:text |_)
                                        |b $ %{} :Expr (:at 1687780324019) (:by |Oj4l0GxFU)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1687780324019) (:by |Oj4l0GxFU) (:text |do)
                                            |b $ %{} :Expr (:at 1687780324019) (:by |Oj4l0GxFU)
                                              :data $ {}
                                                |T $ %{} :Leaf (:at 1687780324019) (:by |Oj4l0GxFU) (:text |js/console.warn)
                                                |b $ %{} :Leaf (:at 1687780324019) (:by |Oj4l0GxFU) (:text "||Unknown reel/ op:")
                                                |h $ %{} :Leaf (:at 1687780324019) (:by |Oj4l0GxFU) (:text |op)
                                            |h $ %{} :Leaf (:at 1687780324019) (:by |Oj4l0GxFU) (:text |nil)
                        |v $ %{} :Expr (:at 1507357346880) (:by nil)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |let)
                            |j $ %{} :Expr (:at 1507357346880) (:by nil)
                              :data $ {}
                                |T $ %{} :Expr (:at 1507357346880) (:by nil)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |data-pack)
                                    |j $ %{} :Expr (:at 1507357346880) (:by nil)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |[])
                                        |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |op)
                                        |v $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |op-id)
                                        |x $ %{} :Leaf (:at 1518143311133) (:by |root) (:text |op-time)
                            |r $ %{} :Expr (:at 1507357346880) (:by nil)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |if)
                                |j $ %{} :Expr (:at 1507357346880) (:by nil)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1623957658152) (:by |Oj4l0GxFU) (:text |&map:get)
                                    |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |reel)
                                    |r $ %{} :Leaf (:at 1623957659858) (:by |Oj4l0GxFU) (:text |:stopped?)
                                |r $ %{} :Expr (:at 1507357346880) (:by nil)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |->)
                                    |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |reel)
                                    |r $ %{} :Expr (:at 1507357346880) (:by nil)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |update)
                                        |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:records)
                                        |r $ %{} :Expr (:at 1507357346880) (:by nil)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |fn)
                                            |j $ %{} :Expr (:at 1507357346880) (:by nil)
                                              :data $ {}
                                                |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |records)
                                            |r $ %{} :Expr (:at 1507357346880) (:by nil)
                                              :data $ {}
                                                |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |conj)
                                                |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |records)
                                                |r $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |data-pack)
                                |v $ %{} :Expr (:at 1507357346880) (:by nil)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |->)
                                    |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |reel)
                                    |r $ %{} :Expr (:at 1507357346880) (:by nil)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |assoc)
                                        |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:store)
                                        |r $ %{} :Expr (:at 1507357346880) (:by nil)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |updater)
                                            |j $ %{} :Expr (:at 1507357346880) (:by nil)
                                              :data $ {}
                                                |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:store)
                                                |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |reel)
                                            |r $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |op)
                                            |x $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |op-id)
                                            |y $ %{} :Leaf (:at 1518143317433) (:by |root) (:text |op-time)
                                    |v $ %{} :Expr (:at 1507357346880) (:by nil)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |update)
                                        |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:records)
                                        |r $ %{} :Expr (:at 1507357346880) (:by nil)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |fn)
                                            |j $ %{} :Expr (:at 1507357346880) (:by nil)
                                              :data $ {}
                                                |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |records)
                                            |r $ %{} :Expr (:at 1507357346880) (:by nil)
                                              :data $ {}
                                                |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |conj)
                                                |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |records)
                                                |r $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |data-pack)
          |refresh-reel $ %{} :CodeEntry (:doc |)
            :code $ %{} :Expr (:at 1507458176794) (:by |root)
              :data $ {}
                |T $ %{} :Leaf (:at 1507458176794) (:by |root) (:text |defn)
                |j $ %{} :Leaf (:at 1507458176794) (:by |root) (:text |refresh-reel)
                |r $ %{} :Expr (:at 1507458176794) (:by |root)
                  :data $ {}
                    |5 $ %{} :Leaf (:at 1507458365099) (:by |root) (:text |reel)
                    |D $ %{} :Leaf (:at 1507458239194) (:by |root) (:text |base)
                    |j $ %{} :Leaf (:at 1507458202001) (:by |root) (:text |updater)
                |v $ %{} :Expr (:at 1507460926405) (:by |root)
                  :data $ {}
                    |D $ %{} :Leaf (:at 1507460931046) (:by |root) (:text |let)
                    |L $ %{} :Expr (:at 1507460932993) (:by |root)
                      :data $ {}
                        |T $ %{} :Expr (:at 1507460933177) (:by |root)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1507460936263) (:by |root) (:text |next-base)
                            |j $ %{} :Expr (:at 1507460790597) (:by |root)
                              :data $ {}
                                |D $ %{} :Leaf (:at 1507460791651) (:by |root) (:text |if)
                                |L $ %{} :Expr (:at 1507460794895) (:by |root)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1507460797122) (:by |root) (:text |:merged?)
                                    |j $ %{} :Leaf (:at 1507460800189) (:by |root) (:text |reel)
                                |P $ %{} :Expr (:at 1507460943456) (:by |root)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1507460944625) (:by |root) (:text |:base)
                                    |j $ %{} :Leaf (:at 1507460945531) (:by |root) (:text |reel)
                                |T $ %{} :Leaf (:at 1507458236984) (:by |root) (:text |base)
                        |j $ %{} :Expr (:at 1518145471588) (:by |root)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1518145474752) (:by |root) (:text |records)
                            |j $ %{} :Expr (:at 1518145475697) (:by |root)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1518145476707) (:by |root) (:text |:records)
                                |j $ %{} :Leaf (:at 1518145478113) (:by |root) (:text |reel)
                    |T $ %{} :Expr (:at 1507458204933) (:by |root)
                      :data $ {}
                        |D $ %{} :Leaf (:at 1507458208267) (:by |root) (:text |->)
                        |L $ %{} :Leaf (:at 1507458209254) (:by |root) (:text |reel)
                        |P $ %{} :Expr (:at 1507458213868) (:by |root)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1507460954515) (:by |root) (:text |assoc)
                            |j $ %{} :Leaf (:at 1507458219428) (:by |root) (:text |:base)
                            |r $ %{} :Leaf (:at 1507460951419) (:by |root) (:text |next-base)
                        |T $ %{} :Expr (:at 1507458210321) (:by |root)
                          :data $ {}
                            |D $ %{} :Leaf (:at 1507458211507) (:by |root) (:text |assoc)
                            |L $ %{} :Leaf (:at 1507458212867) (:by |root) (:text |:store)
                            |T $ %{} :Expr (:at 1507455028378) (:by |root)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1507455031749) (:by |root) (:text |play-records)
                                |f $ %{} :Leaf (:at 1507461001586) (:by |root) (:text |next-base)
                                |n $ %{} :Leaf (:at 1518145482704) (:by |root) (:text |records)
                                |v $ %{} :Leaf (:at 1507455081738) (:by |root) (:text |updater)
                                |x $ %{} :Expr (:at 1507455093169) (:by |root)
                                  :data $ {}
                                    |D $ %{} :Leaf (:at 1507455093879) (:by |root) (:text |if)
                                    |L $ %{} :Expr (:at 1507455014646) (:by |root)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1507455016971) (:by |root) (:text |:stopped?)
                                        |j $ %{} :Leaf (:at 1507455060390) (:by |root) (:text |reel)
                                    |P $ %{} :Expr (:at 1507455106619) (:by |root)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1507455107701) (:by |root) (:text |:pointer)
                                        |j $ %{} :Leaf (:at 1507455108552) (:by |root) (:text |reel)
                                    |T $ %{} :Expr (:at 1518145465491) (:by |root)
                                      :data $ {}
                                        |D $ %{} :Leaf (:at 1518145466795) (:by |root) (:text |count)
                                        |b $ %{} :Leaf (:at 1518145489149) (:by |root) (:text |records)
        :ns $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1507357346880) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |ns)
              |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |reel.core)
              |r $ %{} :Expr (:at 1507357346880) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:require)
      |reel.schema $ {}
        :defs $ {}
          |reel $ %{} :CodeEntry (:doc |)
            :code $ %{} :Expr (:at 1507366302508) (:by |root)
              :data $ {}
                |T $ %{} :Leaf (:at 1507366305398) (:by |root) (:text |def)
                |j $ %{} :Leaf (:at 1507366302508) (:by |root) (:text |reel)
                |r $ %{} :Expr (:at 1507357346880) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |{})
                    |j $ %{} :Expr (:at 1507357346880) (:by nil)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:records)
                        |j $ %{} :Expr (:at 1507357346880) (:by nil)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |[])
                    |r $ %{} :Expr (:at 1507357346880) (:by nil)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1507369668332) (:by |root) (:text |:base)
                        |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |nil)
                    |v $ %{} :Expr (:at 1507357346880) (:by nil)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:store)
                        |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |nil)
                    |x $ %{} :Expr (:at 1507357346880) (:by nil)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:pointer)
                        |j $ %{} :Leaf (:at 1507401028536) (:by |root) (:text |nil)
                    |yT $ %{} :Expr (:at 1507357346880) (:by nil)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:stopped?)
                        |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |false)
                    |yj $ %{} :Expr (:at 1507357346880) (:by nil)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |:display?)
                        |j $ %{} :Leaf (:at 1507461056473) (:by |root) (:text |false)
                    |yr $ %{} :Expr (:at 1507460749234) (:by |root)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1507460751129) (:by |root) (:text |:merged?)
                        |j $ %{} :Leaf (:at 1507460752256) (:by |root) (:text |false)
          |store $ %{} :CodeEntry (:doc |)
            :code $ %{} :Expr (:at 1507367922244) (:by |root)
              :data $ {}
                |T $ %{} :Leaf (:at 1507368231593) (:by |root) (:text |def)
                |j $ %{} :Leaf (:at 1507367922244) (:by |root) (:text |store)
                |r $ %{} :Expr (:at 1507367922244) (:by |root)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1507368232794) (:by |root) (:text |{})
                    |j $ %{} :Expr (:at 1507368233092) (:by |root)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1507368239249) (:by |root) (:text |:states)
                        |j $ %{} :Expr (:at 1507368239668) (:by |root)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1507368240332) (:by |root) (:text |{})
                    |r $ %{} :Expr (:at 1507368241158) (:by |root)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1507368242442) (:by |root) (:text |:tasks)
                        |j $ %{} :Expr (:at 1507368242806) (:by |root)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1610610389170) (:by |Oj4l0GxFU) (:text |[])
        :ns $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1507366292481) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1507366292481) (:by |root) (:text |ns)
              |j $ %{} :Leaf (:at 1507366292481) (:by |root) (:text |reel.schema)
      |reel.style $ {}
        :defs $ {}
        :ns $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1508566716290) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1508566716290) (:by |root) (:text |ns)
              |j $ %{} :Leaf (:at 1508566716290) (:by |root) (:text |reel.style)
      |reel.util $ {}
        :defs $ {}
          |listen-devtools! $ %{} :CodeEntry (:doc |)
            :code $ %{} :Expr (:at 1507451494757) (:by |root)
              :data $ {}
                |T $ %{} :Leaf (:at 1507451494757) (:by |root) (:text |defn)
                |j $ %{} :Leaf (:at 1507451494757) (:by |root) (:text |listen-devtools!)
                |r $ %{} :Expr (:at 1507451494757) (:by |root)
                  :data $ {}
                    |D $ %{} :Leaf (:at 1507452249162) (:by |root) (:text |keyboard)
                    |T $ %{} :Leaf (:at 1507451567897) (:by |root) (:text |dispatch!)
                |v $ %{} :Expr (:at 1507451500006) (:by |root)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1623953224099) (:by |Oj4l0GxFU) (:text |.!addEventListener)
                    |j $ %{} :Leaf (:at 1507451507467) (:by |root) (:text |js/window)
                    |r $ %{} :Leaf (:at 1507451509323) (:by |root) (:text ||keydown)
                    |v $ %{} :Expr (:at 1507451509797) (:by |root)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1507451510102) (:by |root) (:text |fn)
                        |j $ %{} :Expr (:at 1507451510347) (:by |root)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1507451513329) (:by |root) (:text |event)
                        |r $ %{} :Expr (:at 1507451513809) (:by |root)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1507451514597) (:by |root) (:text |if)
                            |j $ %{} :Expr (:at 1507451534178) (:by |root)
                              :data $ {}
                                |D $ %{} :Leaf (:at 1507451534855) (:by |root) (:text |and)
                                |L $ %{} :Expr (:at 1507451535745) (:by |root)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1507451543768) (:by |root) (:text |.-shiftKey)
                                    |j $ %{} :Leaf (:at 1507451542462) (:by |root) (:text |event)
                                |P $ %{} :Expr (:at 1507451544496) (:by |root)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1507451632357) (:by |root) (:text |.-metaKey)
                                    |j $ %{} :Leaf (:at 1507451550579) (:by |root) (:text |event)
                                |R $ %{} :Expr (:at 1615567783715) (:by |Oj4l0GxFU)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1615567788315) (:by |Oj4l0GxFU) (:text |.-altKey)
                                    |j $ %{} :Leaf (:at 1615567789295) (:by |Oj4l0GxFU) (:text |event)
                                |T $ %{} :Expr (:at 1507451523811) (:by |root)
                                  :data $ {}
                                    |D $ %{} :Leaf (:at 1507451524694) (:by |root) (:text |=)
                                    |L $ %{} :Expr (:at 1507452266270) (:by |root)
                                      :data $ {}
                                        |D $ %{} :Leaf (:at 1623953194543) (:by |Oj4l0GxFU) (:text |.!charCodeAt)
                                        |T $ %{} :Expr (:at 1507452256320) (:by |root)
                                          :data $ {}
                                            |D $ %{} :Leaf (:at 1623953192920) (:by |Oj4l0GxFU) (:text |.!toUpperCase)
                                            |T $ %{} :Leaf (:at 1507452257494) (:by |root) (:text |keyboard)
                                    |T $ %{} :Expr (:at 1507451515231) (:by |root)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1507451518260) (:by |root) (:text |.-keyCode)
                                        |j $ %{} :Leaf (:at 1507451519440) (:by |root) (:text |event)
                            |r $ %{} :Expr (:at 1507451552341) (:by |root)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1507451557928) (:by |root) (:text |dispatch!)
                                |j $ %{} :Expr (:at 1688398219666) (:by |Oj4l0GxFU)
                                  :data $ {}
                                    |D $ %{} :Leaf (:at 1688398220694) (:by |Oj4l0GxFU) (:text |::)
                                    |T $ %{} :Leaf (:at 1507451563128) (:by |root) (:text |:reel/toggle)
        :ns $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1507357346880) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |ns)
              |j $ %{} :Leaf (:at 1507357346880) (:by |root) (:text |reel.util)
              |r $ %{} :Expr (:at 1518143628490) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1518143629990) (:by |root) (:text |:require)
  :users $ {}
    |Oj4l0GxFU $ {} (:avatar nil) (:id |Oj4l0GxFU) (:name |chen) (:nickname |chen) (:password |d41d8cd98f00b204e9800998ecf8427e) (:theme :star-trail)
    |root $ {} (:avatar nil) (:id |root) (:name |root) (:nickname |root) (:password |d41d8cd98f00b204e9800998ecf8427e) (:theme :star-trail)
