case_1_step_4_main_panel <- function(namespace){

    tagList(
        h3("Step 4:"),
        h4("Quantify co-expression"),
        tags$div(
            style = "background-color: #f1f1f1; padding: 10px; margin-bottom: 10px;",
            # Dropdowns placed in the top bar
            selectInput(NS(namespace,"dropdown4_1"), "Select Option 4-1", choices = c("A", "B", "C")),
            selectInput(NS(namespace,"dropdown4_2"), "Select Option 4-2", choices = c("X", "Y", "Z"))
        ),

        plotlyOutput(NS(namespace,"case_1_step_4_plot_1"), height = "500px")

    )



}