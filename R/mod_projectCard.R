#' @title Shiny Module: Project Card
#' @description Project Card
#' @name mod_projectCard
#' @param id Output id
#' @param tab_name Name of the tab panel
#' @param input shiny input
#' @param output shiny output
#' @param session shiny session
#' @import shiny
#' @import htmltools
NULL

#' @rdname mod_projectCard
#' @export
tabItemContentUI_projectCard <- function(id){

  ns <- NS(id)

  tagList(
    box(title = "Docs", status = "primary")
  )

}

#' @rdname mod_projectCard
#' @export
tabItemContent_projectCard <- function(input, output, session){

  ns <- session$ns

}
