# load the necessary libraries
library(shiny)
library(shinyjs)
library(ggplot2)
library(plotly)
library(shinythemes)

# everything will be on the same namespace
# Note: if you change this namespace, you need to also change it below in the Shiny.setInputValue command.
namespace <- "testing"

# modules for the ui
source("src/R/ui_modules/defaults.R")
source("src/R/ui_modules/main_panel.R")
source("src/R/ui_modules/use_case_1/case_1_sidebar.R")
source("src/R/ui_modules/use_case_1/case_1_step_1_main_panel.R")
source("src/R/ui_modules/use_case_1/case_1_step_2_main_panel.R")
source("src/R/ui_modules/use_case_1/case_1_step_3_main_panel.R")
source("src/R/ui_modules/use_case_1/case_1_step_4_main_panel.R")

# modules for the server
source("src/R/server_modules/main_server.R")
source("src/R/server_modules/use_case_1_server.R")

# load the data
df <- iris

# Define UI
ui <- fluidPage(

    # need the enable shinyjs
    useShinyjs(),

    # set the theme (many options : https://rstudio.github.io/shinythemes/)
    theme = shinytheme("yeti"),

    # include custom CSS and JS
    tags$head(
        tags$link(rel = "stylesheet", type = "text/css", href = "styles.css"),
        tags$script(src = "transition.js")
    ),

    # App title 
    headerPanel("Multistep Shiny App Test"),

    # set the defaults
    set_defaults(namespace),

    # side-by-side layout
    sidebarLayout(

        #  panel for inputs
        sidebarPanel(
            class = "sidebar", 
            conditionalPanel(
                condition = sprintf("input['%s'] == 1", NS(namespace, "case_1_enabled")),
                case_1_sidebar(namespace)
            ),

            actionButton(
                class = "sidebar-button sidebar-bottom",
                NS(namespace, "home_clicked"),
                "Home"
            )
        ),

        # Main panel for displaying outputs
        mainPanel(
            conditionalPanel(
                condition = sprintf("input['%s'] == 1", NS(namespace, "main_enabled")),
                main_panel(namespace)
            ),
            conditionalPanel(
                condition = sprintf("input['%s'] == 1", NS(namespace, "case_1_enabled")),
                conditionalPanel(
                    condition = sprintf("input['%s'] == 1", NS(namespace, "case_1_step_1_enabled")),
                    case_1_step_1_main_panel(namespace)
                ),
                conditionalPanel(
                    condition = sprintf("input['%s'] == 1", NS(namespace, "case_1_step_2_enabled")),
                    case_1_step_2_main_panel(namespace)
                ),
                conditionalPanel(
                    condition = sprintf("input['%s'] == 1", NS(namespace, "case_1_step_3_enabled")),
                    case_1_step_3_main_panel(namespace)
                ),
                conditionalPanel(
                    condition = sprintf("input['%s'] == 1", NS(namespace, "case_1_step_4_enabled")),
                    case_1_step_4_main_panel(namespace)
                )
            ),
        )

    )
)

# Define server logic
server <- function(input, output, session) {
	main_server(namespace)
	use_case_1_server(namespace, df)

}

# Return the shiny.appobj object
shinyApp(ui, server)