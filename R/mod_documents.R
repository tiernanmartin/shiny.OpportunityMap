#' @title Shiny Module: Documents
#' @description Documents
#' @name mod_documents
#' @param id Output id
#' @param tab_name Name of the tab panel
#' @param input shiny input
#' @param output shiny output
#' @param session shiny session
#' @import shiny
#' @import htmltools
NULL

#' @rdname mod_documents
#' @export
tabItemContentUI_documents <- function(id, tab_name){

  ns <- NS(id)
  tabItem(tab_name,
          box(title = "Docs", status = "primary")

  )
}

#' @rdname mod_documents
#' @export
tabItemContent_documents <- function(input, output, session){

  ns <- session$ns

}
