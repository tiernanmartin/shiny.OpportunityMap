#' UI Function: grouped radio button within a Shinydashboard box
#'
#' This is a radio button UI element that can be linked to others.
#' @param input_id The input slot that will be used to access the value.
#' @param id The id for button list (should be unique within the group).
#' @param box_status The status of the item This determines the item's background color (see \code{\link[shinydashboard]{box}}).
#' @param box_title Title for the container box (optional).
#' @param box_width The width of the box, using the Bootstrap grid system.
#' @param label Display label for the control, or NULL for no label.
#' @param choices List of values to select from (if elements of the list are named then that name rather than the value is displayed to the user).
#' @param inline If TRUE, render the choices inline (i.e. horizontally).
#' @note This is not a shiny module.
#' @import shiny
#' @import shinydashboard
#' @export
boxed_radio_subgroup <- function(input_id, id, box_title = "", box_status = "primary", label = "", choices = NULL, inline = FALSE,box_width = NULL) {
  values <- paste0(id, "-", choices)
  choices <- setNames(values, choices)

  tagList(
    column(width = 2,
           box(width = box_width, title = box_title, status = box_status, collapsible = TRUE,
               radioButtons(input_id, label, choices, selected = character(0), inline = inline)
           )

    )
  )
}
