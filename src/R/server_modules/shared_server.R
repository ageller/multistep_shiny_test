shared_server <- function(namespace){

	moduleServer(namespace, function(input, output, session){

        observeEvent(input$home_clicked, {
            print("main") # debugging
            updateNumericInput(session, "main_enabled", value = 1) 
            updateNumericInput(session, "case_1_sidebar", value = 0)
        })

        observeEvent(input$use_case_1_clicked, { 
            print("use_case_1") # debugging
            updateNumericInput(session, "main_enabled", value = 0) 
            updateNumericInput(session, "case_1_sidebar", value = 1)
        })

    })

}