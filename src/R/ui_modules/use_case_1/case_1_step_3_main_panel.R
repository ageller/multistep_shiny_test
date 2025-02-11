case_1_step_3_main_panel <- function(namespace){

    tagList(
        h3("Step 3:"),
        h4("Identify top DEGs"),
        tags$div(
            style = "background-color: #f1f1f1; padding: 10px; margin-bottom: 10px;",
            # Dropdowns placed in the top bar
            selectInput(NS(namespace,"dropdown3_1"), "Select Option 3-1", choices = c("A", "B", "C")),
            selectInput(NS(namespace,"dropdown3_2"), "Select Option 3-2", choices = c("X", "Y", "Z"))
        ),

        plotlyOutput(NS(namespace,"case_1_step_3_plot_1"), height = "500px")

    )



}