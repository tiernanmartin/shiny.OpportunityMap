#' @title Shiny Module: Filter UI linked to Menu Items.
#' @description Filter UI linked to Menu Items (using conditionalPanel).
#' @name mod_filters
#' @param id Output id
#' @param tab_names  The names of the Menu Items that should trigger this conditional panel.
#' @param input shiny input
#' @param output shiny output
#' @param session shiny session
#' @import shiny
#' @import htmltools
#' @import stringr
#' @import purrr
#' @importFrom magrittr "%>%"
NULL

#' @rdname mod_filters
#' @export
condUI_filters <- function(id, tab_names){
  req(tab_names)

  condition <-
    tab_names %>%
    map(~ str_c("'",.x,"'")) %>%
    map_chr(~ str_c("input.menu == ",.x)) %>%
    str_c(collapse = " || ")

  tagList(
    conditionalPanel(
      condition = condition,
      p("FILTERS")
    )
  )

}

#' @rdname mod_filters
#' @export
cond_filters <- function(input, output, session){

  ns <- session$ns

}
