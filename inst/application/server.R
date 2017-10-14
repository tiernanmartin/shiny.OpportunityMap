server <- function(input, output, session) {

  callModule(module = tabItemContent_map, id = "map")
  callModule(module = tabItemContent_lists, id = "lists")
  # Table module goes here
  # Documents modules goes here
  callModule(module = tabItemContent_about, id = "about")

}
