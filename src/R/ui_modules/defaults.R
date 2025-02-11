set_defaults <- function(namespace){

    tagList(
        hidden(numericInput(NS(namespace, "main_enabled"), "main", 1)),
        hidden(numericInput(NS(namespace, "case_1_enabled"), "case1", 0)),
        hidden(numericInput(NS(namespace, "case_2_enabled"), "case2", 0)),
        hidden(numericInput(NS(namespace, "case_3_enabled"), "case3", 0)),
        hidden(numericInput(NS(namespace, "case_4_enabled"), "case4", 0)),
        hidden(numericInput(NS(namespace, "case_1_step_1_enabled"), "case1-1", 0)),
        hidden(numericInput(NS(namespace, "case_1_step_2_enabled"), "case1-2", 0)),
        hidden(numericInput(NS(namespace, "case_1_step_3_enabled"), "case1-3", 0)),
        hidden(numericInput(NS(namespace, "case_1_step_4_enabled"), "case1-4", 0)),
    )
}