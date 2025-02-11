main_panel <- function(namespace){

    tagList(
        h3("Select a use case below:"),
        br(),

        div(class = "button-container",
            actionButton(
                class = "button-fullwidth button-left badge-button",
                NS(namespace, "use_case_1_clicked"),
                "I have a gene of interest, and I want to find other correlated genes."
            ),
            div(class = "badge badge-number", "1")
        ),
        br(),

        div(class = "button-container",
            actionButton(
                class = "button-fullwidth button-left badge-button",
                NS(namespace, "use_case_2_clicked"),
                "use case 2 (TBD)."
            ),
            div(class = "badge badge-number", "2")
        ),
        br(),

        div(class = "button-container",
            actionButton(
                class = "button-fullwidth button-left badge-button",
                NS(namespace, "use_case_3_clicked"),
                "use case 3 (TBD)."
            ),
            div(class = "badge badge-number", "3")
        ),
        br(),

        div(class = "button-container",
            actionButton(
                class = "button-fullwidth button-left badge-button",
                NS(namespace, "use_case_4_clicked"),
                "use case 4 (TBD)."
            ),
            div(class = "badge badge-number", "4")
        ),
    )
}