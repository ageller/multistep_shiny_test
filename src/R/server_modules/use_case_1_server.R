use_case_1_server <- function(namespace, df){

	moduleServer(namespace, function(input, output, session){

        # update variables based on user interaction
        observeEvent(input$case_1_step_1_clicked, {
            print("case_1_step_1") # debugging
            updateNumericInput(session, "case_1_step_1_enabled", value = 1)
            updateNumericInput(session, "case_1_step_2_enabled", value = 0)
            updateNumericInput(session, "case_1_step_3_enabled", value = 0)
            updateNumericInput(session, "case_1_step_4_enabled", value = 0)
         })

        observeEvent(input$case_1_step_2_clicked, {
            print("case_1_step_2") # debugging
            updateNumericInput(session, "case_1_step_1_enabled", value = 0)
            updateNumericInput(session, "case_1_step_2_enabled", value = 1)
            updateNumericInput(session, "case_1_step_3_enabled", value = 0)
            updateNumericInput(session, "case_1_step_4_enabled", value = 0)
        })

        observeEvent(input$case_1_step_3_clicked, {
            print("case_1_step_3") # debugging
            updateNumericInput(session, "case_1_step_1_enabled", value = 0)
            updateNumericInput(session, "case_1_step_2_enabled", value = 0)
            updateNumericInput(session, "case_1_step_3_enabled", value = 1)
            updateNumericInput(session, "case_1_step_4_enabled", value = 0)
        })

        observeEvent(input$case_1_step_4_clicked, {
            print("case_1_step_4") # debugging
            updateNumericInput(session, "case_1_step_1_enabled", value = 0)
            updateNumericInput(session, "case_1_step_2_enabled", value = 0)
            updateNumericInput(session, "case_1_step_3_enabled", value = 0)
            updateNumericInput(session, "case_1_step_4_enabled", value = 1)
        })

        # change button colors
        observe({
            if (input$case_1_step_1_enabled == 1) {
                runjs(paste0('$("#',NS(namespace, "case_1_step_1_clicked"),'").addClass("background-yellow");'))
                runjs(paste0('$("#',NS(namespace, "case_1_step_2_clicked"),'").removeClass("background-yellow");'))
                runjs(paste0('$("#',NS(namespace, "case_1_step_3_clicked"),'").removeClass("background-yellow");'))
                runjs(paste0('$("#',NS(namespace, "case_1_step_4_clicked"),'").removeClass("background-yellow");'))
                runjs('$("#case_1_step_1_badge").removeClass("background-green");')
                runjs('$("#case_1_step_2_badge").removeClass("background-green");')
                runjs('$("#case_1_step_3_badge").removeClass("background-green");')
                runjs('$("#case_1_step_4_badge").removeClass("background-green");')
            } else {
                runjs(paste0('$("#',NS(namespace, "case_1_step_1_clicked"),'").removeClass("background-yellow");'))
            }

            if (input$case_1_step_2_enabled == 1) {
                runjs(paste0('$("#',NS(namespace, "case_1_step_2_clicked"),'").addClass("background-yellow");'))
                runjs(paste0('$("#',NS(namespace, "case_1_step_1_clicked"),'").removeClass("background-yellow");'))
                runjs(paste0('$("#',NS(namespace, "case_1_step_3_clicked"),'").removeClass("background-yellow");'))
                runjs(paste0('$("#',NS(namespace, "case_1_step_4_clicked"),'").removeClass("background-yellow");'))
                runjs('$("#case_1_step_1_badge").addClass("background-green");')
                runjs('$("#case_1_step_2_badge").removeClass("background-green");')
                runjs('$("#case_1_step_3_badge").removeClass("background-green");')
                runjs('$("#case_1_step_4_badge").removeClass("background-green");')
            } else {
                runjs(paste0('$("#',NS(namespace, "case_1_step_2_clicked"),'").removeClass("background-yellow");'))
            }

            if (input$case_1_step_3_enabled == 1) {
                runjs(paste0('$("#',NS(namespace, "case_1_step_3_clicked"),'").addClass("background-yellow");'))
                runjs(paste0('$("#',NS(namespace, "case_1_step_1_clicked"),'").removeClass("background-yellow");'))
                runjs(paste0('$("#',NS(namespace, "case_1_step_2_clicked"),'").removeClass("background-yellow");'))
                runjs(paste0('$("#',NS(namespace, "case_1_step_4_clicked"),'").removeClass("background-yellow");'))
                runjs('$("#case_1_step_1_badge").addClass("background-green");')
                runjs('$("#case_1_step_2_badge").addClass("background-green");')
                runjs('$("#case_1_step_3_badge").removeClass("background-green");')
                runjs('$("#case_1_step_4_badge").removeClass("background-green");')
            } else {
                runjs(paste0('$("#',NS(namespace, "case_1_step_3_clicked"),'").removeClass("background-yellow");'))
            }

            if (input$case_1_step_4_enabled == 1) {
                runjs(paste0('$("#',NS(namespace, "case_1_step_4_clicked"),'").addClass("background-yellow");'))
                runjs(paste0('$("#',NS(namespace, "case_1_step_1_clicked"),'").removeClass("background-yellow");'))
                runjs(paste0('$("#',NS(namespace, "case_1_step_2_clicked"),'").removeClass("background-yellow");'))
                runjs(paste0('$("#',NS(namespace, "case_1_step_3_clicked"),'").removeClass("background-yellow");'))
                runjs('$("#case_1_step_1_badge").addClass("background-green");')
                runjs('$("#case_1_step_2_badge").addClass("background-green");')
                runjs('$("#case_1_step_3_badge").addClass("background-green");')
                runjs('$("#case_1_step_4_badge").removeClass("background-green");')
            } else {
                runjs(paste0('$("#',NS(namespace, "case_1_step_4_clicked"),'").removeClass("background-yellow");'))
            }
        })

        # generate figures
        g_1 <- ggplot(df, aes(x = Petal.Length, y = Petal.Width))

        g_1_1 <- g_1 + geom_point()
        output$case_1_step_1_plot_1 <- renderPlotly(g_1_1)

        g_2_1 <- g_1_1 + geom_smooth(method = "lm")
        output$case_1_step_2_plot_1 <- renderPlotly(g_2_1)

        g_3_1 <- g_1 + geom_point(aes(color = Species)) + geom_smooth(method = "lm")
        output$case_1_step_3_plot_1 <- renderPlotly(g_3_1)

        g_4_1 <- g_1 + geom_point(aes(color = Species, size = Sepal.Width)) + geom_smooth(method = "lm")
        output$case_1_step_4_plot_1 <- renderPlotly(g_4_1)

    })

}