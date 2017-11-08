#' Shiny Module: fullscreen leaflet map in a tab panel
#'
#' A fullscreen leaflet map in a tab panel.
#' @name mod_map
#' @param id Output id
#' @param tab_name Name of the tab panel.
#' @param input shiny input
#' @param output shiny output
#' @param data simple feature object to map
#' @param session shiny session
#' @import shiny
#' @import htmltools
#' @import leaflet
#' @import mapview
#' @importFrom shmodules "myLflt"
NULL

#' @rdname mod_map
#' @export
tabItemContentUI_map <- function(id, tab_name){

  ns <- NS(id)

  tabItem(tabName = tab_name,
          tags$head(tags$style(HTML("section.content{padding:0px;}
                                    .outer { height: calc(100vh - 50px); padding: 0px; margin: 0; }"))),
          tags$div(class = "outer",
                   # leafletOutput(ns("map"),
                   #               height = "100%",
                   #               width = "100%")
                   mapviewOutput(ns("map"),
                                 height = "100%",
                                 width = "100%")
                   )
          )
}

#' @rdname mod_map
#' @export
tabItemContent_map <- function(input, output, data, session){

  ns <- session$ns

  # output$map <- renderLeaflet({
  #   shmodules::myLflt(tile_opts = list(minZoom = 10),chinatown = TRUE)
  #
  #   })

  output$map <- renderMapview({
    pts <-
      data %>%
      filter(POINT_LGL) %>%
      select(NAME, CATEGORY, SCALE, NEIGHBORHOOD)

    lines <-
      data %>%
      filter(LINESTRING_LGL) %>%
      select(NAME, CATEGORY, SCALE, NEIGHBORHOOD)

    mapview(pts) +
      mapview(lines)
  })

}
