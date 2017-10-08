# HEADER ----
header <- dashboardHeader(title = "CID Opportunity Explorer",titleWidth = "350px")
# SIDEBAR ----
sidebar <- dashboardSidebar(
  width = "350px",
  shmodules::sidebarCSS(),
  sidebarSearchForm(textId = "searchText", buttonId = "searchButton",
                    label = "Search..."),
  sidebarMenu(id = 'menu',
              menuItem("Community Priorties & Coming Changes",
                       startExpanded = TRUE,
                       tabName = "CPCC",
                       icon = icon("building", lib = "font-awesome"),
                       menuSubItem("Map",tabName = "map",icon = icon("globe", lib = "font-awesome")),
                       menuSubItem("Lists",tabName = "lists",icon = icon("list-ul", lib = "font-awesome")),
                       menuSubItem("Table",tabName = "table",icon = icon("table", lib = "font-awesome")),
                       menuSubItem("Documents", tabName = "documents", icon = icon("book", lib = "font-awesome")),
                       br()
                       ),
              menuItem("About", tabName = "about", icon = icon("question-circle", lib = "font-awesome"))
  ),
  tags$style(HTML("p{font-size: 12px;}
                        #barmap1-var_text{background-color: #1e282c;margin-top: 15px;}
                        #searchButton{margin:0px;}
                        .sidebar-form {border:0px !important;}
                        .container-fluid {padding:15px !important}")),
  HTML("<hr style='margin: 5px;height:1px;border-width:0;color:#404040;background-color:#404040'>"),
  HTML("<div style='padding-right: 25px;padding-left: 25px;'>"),
  HTML("</div>")
)
# BODY ----

body <-
  fluidDashboardBody(
    sidebarCollapsed = FALSE,
    tabItems(
      tabItemContentUI_map(id = "map",tab_name = "map"),
      tabItem(tabName = "lists",
              fluidPage(
                fluidRow(
                  tabItemContentUI_list(id = "priorities",
                                        box_title = "Priorities"),
                  tabItemContentUI_list(id = "change_pri",
                                        box_title = "Changes (Private)",
                                        box_status = "warning" ),
                  tabItemContentUI_list(id = "change_pub",
                                        box_title = "Changes (Public)",
                                        box_status = "danger" ),
                  tagList(
                    box(width = 6, title = "",
                        projectCardUI("list_proj_card")
                    )
                  )
                )
              )
      ),
      tabItemContentUI_table(id = "table",tab_name = "table"),
      tabItemContentUI_documents(id = "documents",tab_name = "documents"),
      tabItemContentUI_about(id = "about",tab_name = "about")
    )
  )
# UI ----
ui <- dashboardPage(header,sidebar,body, skin = 'yellow')
