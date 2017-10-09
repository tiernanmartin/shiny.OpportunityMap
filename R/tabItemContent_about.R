#' Shiny Module: About text in a shinydashboard box.
#'
#' This is the server portion of this module.
#' @param input shiny input
#' @param output shiny output
#' @param session shiny session
#' @seealso \code{\link{tabItemContentUI_about}}
#' @import shiny
#' @import shinydashboard
#' @importFrom htmltools "includeHTML"
#' @export
tabItemContent_about <- function(input, output, session){

  ns <- session$ns

  content <- includeHTML("./www/about.html")

  output$about <- renderUI({content})

}
