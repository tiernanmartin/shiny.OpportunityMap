#' @title Shiny Module: Table
#' @description Table
#' @name mod_table
#' @param id Output id
#' @param tab_name Name of the tab panel
#' @param input shiny input
#' @param output shiny output
#' @param session shiny session
#' @import shiny
#' @import htmltools
NULL

#' @rdname mod_table
#' @export
tabItemContentUI_table <- function(id, tab_name){

  ns <- NS(id)
  tabItem(tab_name,
          box(title = "Table", status = "primary")

  )
}

#' @rdname mod_table
#' @export
tabItemContent_table <- function(input, output, session){

  ns <- session$ns

}
