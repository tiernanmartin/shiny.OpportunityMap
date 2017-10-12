#' @title Shiny Module: About text in a shinydashboard box.
#' @description About text in a shinydashboard box.
#' @name mod_about
#' @param id Output id
#' @param tab_name Name of the tab panel
#' @param input shiny input
#' @param output shiny output
#' @param session shiny session
#' @import shiny
#' @import shinydashboard
#' @import htmltools
NULL

#' @rdname mod_about
#' @export
tabItemContentUI_about <- function(id, tab_name){

  ns <- NS(id)
  tabItem(tab_name,
          fluidPage(
            fluidRow(
              column(3),
              column(6,
                     box(width = 12, title = "About", status = "primary",
                         uiOutput(ns("about"))
                         )
                     ),
              column(3)

            )

          )

  )
}

#' @rdname mod_about
#' @export
tabItemContent_about <- function(input, output, session){

  ns <- session$ns

  content <- includeHTML("./www/about.html")

  output$about <- renderUI({content})

}
