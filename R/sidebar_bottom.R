#' @title CSS Styling for UI in the Lower Sidebar of a Shinydashboard.
#' @description CSS Styling for UI in the Lower Sidebar of a Shinydashboard.
#' @name sidebar_bottom
#' @param ... UI content.
#' @import shiny
#' @import htmltools
#' @export
NULL
sidebar_bottom <- function(...){
  tagList(
    HTML("<hr style='margin: 5px;height:1px;border-width:0;color:#404040;background-color:#404040'>"),
    HTML("<div style='padding-right: 25px;padding-left: 25px;'>"),
    br(),
    ...,
    HTML("</div>")
  )

}
