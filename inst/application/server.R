server <- function(input, output, session) {

  callModule(module = tabItemContent_map, data = p_sf, id = "map")
  callModule(module = tabItemContent_lists, id = "lists")
  # callModule(module = tabItemContent_projectCard, id = "card")
  # Table module goes here
  # Documents modules goes here
  callModule(module = tabItemContent_about, id = "about")

}
