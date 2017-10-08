#' Shiny Module: fullscreen leaflet map in a tab panel
#'
#' This is the UI portion of this module.
#' @param id Output id
#' @param tab_name Name of the tab panel
#' @import shiny
#' @import htmltools
#' @seealso \code{\link{tabItemContent_map}}
#' @export
tabItemContentUI_map <- function(id, tab_name){

  ns <- NS(id)

  tabItem(tabName = tab_name,
          tags$head(tags$style(HTML("section.content{padding:0px;}
                                    .outer { height: calc(100vh - 50px); padding: 0px; margin: 0; }"))),
          tags$div(class = "outer",
                   leafletOutput(ns("map"),
                                 height = "100%",
                                 width = "100%")
                   )
          )
}
