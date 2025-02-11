case_1_step_1_main_panel <- function(namespace){

    tagList(
        h3("Step 1:"),
        h4("Data selection"),
        tags$div(
            style = "background-color: #f1f1f1; padding: 10px; margin-bottom: 10px;",
            # Dropdowns placed in the top bar
            selectInput(NS(namespace,"dropdown1_1"), "Select Option 1-1", choices = c("A", "B", "C")),
            selectInput(NS(namespace,"dropdown1_2"), "Select Option 1-2", choices = c("X", "Y", "Z"))
        ),

        plotlyOutput(NS(namespace,"case_1_step_1_plot_1"), height = "500px")
    )



}