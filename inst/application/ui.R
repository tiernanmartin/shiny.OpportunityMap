# HEADER ----
header <- dashboardHeader(title = "CID Opportunity Explorer",titleWidth = "350px")
# SIDEBAR ----
sidebar <- dashboardSidebar(
  width = "350px",
  shmodules::sidebarCSS(),
  sidebarSearchForm(textId = "searchText",
                    buttonId = "searchButton",
                    label = "Search..."),
  sidebarMenu(id = 'menu',
              menuItem("Community Priorties & Coming Changes",
                       startExpanded = TRUE,
                       tabName = "CPCC",
                       icon = icon("building", lib = "font-awesome"),
                       menuSubItem("Map",tabName = "map",icon = icon("globe", lib = "font-awesome")),
                       menuSubItem("Lists",tabName = "lists",icon = icon("list-ul", lib = "font-awesome")),
                       menuSubItem("Table",tabName = "table",icon = icon("table", lib = "font-awesome")),
                       menuSubItem("Documents", tabName = "documents", icon = icon("book", lib = "font-awesome"))
                       ),
              menuItem("About", tabName = "about", icon = icon("question-circle", lib = "font-awesome"))
  ),
  sidebar_bottom(
    condUI_filters(tab_names = c("map", "lists"))
  ),
  tags$style(HTML("p{font-size: 12px;}
                        #barmap1-var_text{background-color: #1e282c;margin-top: 15px;}
                        #searchButton{margin:0px;}
                        .sidebar-form {border:0px !important;}
                        .container-fluid {padding:15px !important}"))
)
# BODY ----
body <-
  fluidDashboardBody(
    sidebarCollapsed = FALSE,
    tabItems(
      tabItemContentUI_map(id = "map",tab_name = "map"),
      tabItemContentUI_lists(id = "lists", tab_name = "lists"),
      tabItemContentUI_table(id = "table",tab_name = "table"),
      tabItemContentUI_documents(id = "documents",tab_name = "documents"),
      tabItemContentUI_about(id = "about",tab_name = "about"),
      tabItem("") # note: this is just to prevent the "absent comma"
    )
  )
# UI ----
ui <- dashboardPage(header,sidebar,body, skin = 'yellow')
