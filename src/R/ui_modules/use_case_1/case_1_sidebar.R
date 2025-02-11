case_1_sidebar <- function(namespace){

    tagList(
        h3("Use case 1:"),
        h4("Analysis workflow"),
        
        div(class = "button-container",
            actionButton(
                class = "sidebar-content button-fullwidth button-left",
                NS(namespace, "case_1_step_1_clicked"),
                "1. Data selection"
            ),
            div(class = "badge badge-indicator", id = "case_1_step_1_badge")
        ),
        br(),
        
        div(class = "button-container",
            actionButton(
                class = "sidebar-content button-fullwidth button-left",
                NS(namespace, "case_1_step_2_clicked"),
                "2. Expression threshold"
            ),
            div(class = "badge badge-indicator", id = "case_1_step_2_badge")
        ),
        br(),

        div(class = "button-container",
            actionButton(
                class = "sidebar-content button-fullwidth button-left",
                NS(namespace, "case_1_step_3_clicked"),
                "3. Identify top DEGs"
            ),
            div(class = "badge badge-indicator", id = "case_1_step_3_badge")
        ),
        br(),

        div(class = "button-container",
            actionButton(
                class = "sidebar-content button-fullwidth button-left",
                NS(namespace, "case_1_step_4_clicked"),
                "4. Quantify co-expression"
            ),
            div(class = "badge badge-indicator", id = "case_1_step_4_badge")
        ),
        br(),

    )
}