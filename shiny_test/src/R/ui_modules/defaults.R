set_defaults <- function(namespace){

    tagList(
        hidden(numericInput(NS(namespace, "main_enabled"), "main", 1)),
        hidden(numericInput(NS(namespace, "case_1_sidebar"), "case1", 0)),

    )
}