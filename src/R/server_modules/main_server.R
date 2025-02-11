main_server <- function(namespace){

	moduleServer(namespace, function(input, output, session){

        observeEvent(input$home_clicked, {
            print("main") # debugging
            updateNumericInput(session, "main_enabled", value = 1) 
            updateNumericInput(session, "case_1_enabled", value = 0)
            updateNumericInput(session, "case_2_enabled", value = 0)
            updateNumericInput(session, "case_3_enabled", value = 0)
            updateNumericInput(session, "case_4_enabled", value = 0)
            updateNumericInput(session, "case_1_step_1_enabled", value = 0)
            updateNumericInput(session, "case_1_step_2_enabled", value = 0)
            updateNumericInput(session, "case_1_step_3_enabled", value = 0)
            updateNumericInput(session, "case_1_step_4_enabled", value = 0)
        })

        observeEvent(input$use_case_1_clicked, { 
            print("use_case_1") # debugging
            updateNumericInput(session, "main_enabled", value = 0) 
            updateNumericInput(session, "case_1_enabled", value = 1)
            updateNumericInput(session, "case_2_enabled", value = 0)
            updateNumericInput(session, "case_3_enabled", value = 0)
            updateNumericInput(session, "case_4_enabled", value = 0)
            updateNumericInput(session, "case_1_step_1_enabled", value = 1)
            updateNumericInput(session, "case_1_step_2_enabled", value = 0)
            updateNumericInput(session, "case_1_step_3_enabled", value = 0)
            updateNumericInput(session, "case_1_step_4_enabled", value = 0)
        })

        observeEvent(input$use_case_2_clicked, { 
            print("use_case_2") # debugging
            updateNumericInput(session, "main_enabled", value = 0) 
            updateNumericInput(session, "case_1_enabled", value = 0)
            updateNumericInput(session, "case_2_enabled", value = 1)
            updateNumericInput(session, "case_3_enabled", value = 0)
            updateNumericInput(session, "case_4_enabled", value = 0)
            updateNumericInput(session, "case_1_step_1_enabled", value = 0)
            updateNumericInput(session, "case_1_step_2_enabled", value = 0)
            updateNumericInput(session, "case_1_step_3_enabled", value = 0)
            updateNumericInput(session, "case_1_step_4_enabled", value = 0)
        })

        observeEvent(input$use_case_3_clicked, { 
            print("use_case_3") # debugging
            updateNumericInput(session, "main_enabled", value = 0) 
            updateNumericInput(session, "case_1_enabled", value = 0)
            updateNumericInput(session, "case_2_enabled", value = 0)
            updateNumericInput(session, "case_3_enabled", value = 1)
            updateNumericInput(session, "case_4_enabled", value = 0)
            updateNumericInput(session, "case_1_step_1_enabled", value = 0)
            updateNumericInput(session, "case_1_step_2_enabled", value = 0)
            updateNumericInput(session, "case_1_step_3_enabled", value = 0)
            updateNumericInput(session, "case_1_step_4_enabled", value = 0)
        })

        observeEvent(input$use_case_4_clicked, { 
            print("use_case_4") # debugging
            updateNumericInput(session, "main_enabled", value = 0) 
            updateNumericInput(session, "case_1_enabled", value = 0)
            updateNumericInput(session, "case_2_enabled", value = 0)
            updateNumericInput(session, "case_3_enabled", value = 0)
            updateNumericInput(session, "case_4_enabled", value = 1)
            updateNumericInput(session, "case_1_step_1_enabled", value = 0)
            updateNumericInput(session, "case_1_step_2_enabled", value = 0)
            updateNumericInput(session, "case_1_step_3_enabled", value = 0)
            updateNumericInput(session, "case_1_step_4_enabled", value = 0)
        })
    })

}