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
source("src/R/ui_modules/case_1_sidebar.R")

# modules for the server
source("src/R/server_modules/shared_server.R")

# load the data
data(faithful)

# Define UI
ui <- fluidPage(

    # need the enable shinyjs
    useShinyjs(),

    # set the theme (many options : https://rstudio.github.io/shinythemes/)
    theme = shinytheme("yeti"),

    # include custom CSS
    tags$head(
        tags$link(rel = "stylesheet", type = "text/css", href = "styles.css")
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
                condition = sprintf("input['%s'] == 1", NS(namespace, "case_1_sidebar")),
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
        )

    )
)

# Define server logic
server <- function(input, output, session) {
	shared_server(namespace)
}

# Return the shiny.appobj object
shinyApp(ui, server)