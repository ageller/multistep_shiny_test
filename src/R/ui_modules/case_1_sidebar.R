case_1_sidebar <- function(namespace){

    tagList(
        h3("Analysis workflow"),
        
        div(class = "button-container",
            actionButton(
                class = "sidebar-content button-fullwidth button-left",
                NS(namespace, "case_1_data_selection"),
                "Data selection"
            ),
            div(class = "badge badge-indicator")
        ),
        br(),
        
        div(class = "button-container",
            actionButton(
                class = "sidebar-content button-fullwidth button-left",
                NS(namespace, "case_1_expression_threshold"),
                "Expression threshold"
            ),
            div(class = "badge badge-indicator")
        ),
        br(),

        div(class = "button-container",
            actionButton(
                class = "sidebar-content button-fullwidth button-left",
                NS(namespace, "case_1_identify_top_degs"),
                "Identify top DEGs"
            ),
            div(class = "badge badge-indicator")
        ),
        br(),

        div(class = "button-container",
            actionButton(
                class = "sidebar-content button-fullwidth button-left",
                NS(namespace, "case_1_quyantify_coexpression"),
                "Quantify co-expression"
            ),
            div(class = "badge badge-indicator")
        ),
        br(),

    )
}