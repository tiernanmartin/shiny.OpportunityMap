#SETUP ----

library(shiny)
library(shinydashboard)

# See https://github.com/rstudio/shiny/issues/650#issuecomment-62443654


# MODULES ---
modUI <- function(id){
  ns <- NS(id)

  plotOutput(ns("plot"), height="auto")
}

mod <- function(input,output,session){
  ns <- session$ns

  output$plot <- renderPlot({
    plot(cars)
  }, height = function() {

    target <- paste("output",ns("plot"),"width",sep = "_")

    session$clientData[[target]]
  })
}

# UI ----
header <- dashboardHeader(title = "CID Opportunity Explorer", titleWidth = "350px")

sidebar <- dashboardSidebar()

body <- dashboardBody(
  fluidRow(box(width = 6,
               modUI("test1")),
           box(width = 4,
               modUI("test2")),
           box(width = 2,
               modUI("test3")))
)

ui <- dashboardPage(header,sidebar,body, skin = 'yellow')



# SERVER ----
server <-  function(input, output, session) {
  callModule(module = mod, id = "test1")
  callModule(module = mod, id = "test2")
  callModule(module = mod, id = "test3")
}

# RUN APP ----
shinyApp(ui,server)


