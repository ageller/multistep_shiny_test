case_1_step_2_main_panel <- function(namespace){

    tagList(
        h3("Step 2:"),
        h4("Expression threshold"),
        tags$div(
            style = "background-color: #f1f1f1; padding: 10px; margin-bottom: 10px;",
            # Dropdowns placed in the top bar
            selectInput(NS(namespace,"dropdown2_1"), "Select Option 2-1", choices = c("A", "B", "C")),
            selectInput(NS(namespace,"dropdown2_2"), "Select Option 2-2", choices = c("X", "Y", "Z"))
        ),

        plotlyOutput(NS(namespace,"case_1_step_2_plot_1"), height = "500px")

    )



}