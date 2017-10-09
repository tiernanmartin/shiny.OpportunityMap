server <- function(input, output, session) {

  # Map ----
  callModule(module = tabItemContent_map, id = "map")

  # Lists ----

  output$radio_group <- renderUI({
    tagList(
      boxed_radio_subgroup(inputId = "radio_group",id = "first", box_title = "First",choices = pull(p_sf,NAME)),
      boxed_radio_subgroup(inputId = "radio_group",id = "second",box_title = "Second",choices = 1:45),
      boxed_radio_subgroup(inputId = "radio_group",id = "third",box_title = "Third",choices = 1:15)
    )
  })

  # About ----
  callModule(module = tabItemContent_about, id = "about")

}
