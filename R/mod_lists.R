#' @title Shiny Module: grouped radio button within a Shinydashboard box
#' @description This is a radio button UI element that can be linked to others.
#' @name mod_lists
#' @param id Output id
#' @param tab_name Name of the tab panel
#' @param input shiny input
#' @param output shiny output
#' @param session shiny session
#' @import shiny
#' @import htmltools
NULL

#' @rdname mod_lists
#' @export
tabItemContentUI_lists <- function(id, tab_name){
  ns <- NS(id)

  tabItem(tabName = tab_name,
              fluidPage(
                column(6,
                       uiOutput(ns("radio_group"))
                ),
                column(6,
                       tagList(
                         box(width = 12, title = "Project Card",
                             # projectCardUI("list_proj_card"),
                             br()
                         )
                       )
                )
              )
      )
}

#' @rdname mod_lists
#' @export
tabItemContent_lists <- function(input, output, session){

  ns <- session$ns

  output$radio_group <- renderUI({
    tagList(
      boxed_radio_subgroup(input_id = ns("radio_group"), id = "first", box_title = "First",choices = LETTERS[1:10]),
      boxed_radio_subgroup(input_id = ns("radio_group"), id = "second",box_title = "Second",choices = 1:10),
      boxed_radio_subgroup(input_id = ns("radio_group"), id = "third",box_title = "Third",choices = rownames(mtcars)[1:10])
    )
  })

}
