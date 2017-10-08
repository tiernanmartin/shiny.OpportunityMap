#' Shiny Module: fullscreen leaflet map in a tab panel
#'
#' This is the server portion of this module.
#' @param input shiny input
#' @param output shiny output
#' @param session shiny session
#' @seealso \code{\link{tabItemContentUI_map}}
#' @import leaflet
#' @importFrom miscgis "myLflt"
#' @export
tabItemContent_map <- function(input, output, session){

  ns <- session$ns

  output$map <- renderLeaflet({ miscgis::myLflt(tile_opts = list(minZoom = 10),chinatown = TRUE)
    })

}
