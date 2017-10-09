#' Shiny Module: About text in a shinydashboard box.
#'
#' This is the UI portion of this module.
#' @param id Output id
#' @param tab_name Name of the tab panel
#' @import shiny
#' @import htmltools
#' @import shinydashboard
#' @seealso \code{\link{tabItemContent_about}}
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
