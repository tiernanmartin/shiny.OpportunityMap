server <- function(input, output, session) {

  # Map ----
  callModule(module = tabItemContent_map, id = "map")

  # Lists ----
  callModule(module = tabItemContent_list, id = "priorities", choices = pull(p_sf,NAME))

  callModule(module = tabItemContent_list, id = "change_pri" )

  callModule(module = tabItemContent_list, id = "change_pub")

  # About ----
  callModule(module = tabItemContent_about, id = "about")

}
