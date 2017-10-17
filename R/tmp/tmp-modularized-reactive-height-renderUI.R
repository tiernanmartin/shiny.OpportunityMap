#SETUP ----

library(shiny)
library(shinyjs)
library(shinydashboard)

# See https://github.com/rstudio/shiny/issues/650#issuecomment-62443654


# MODULES ---


# UI ----
header <- dashboardHeader(title = "CID Opportunity Explorer", titleWidth = "350px")

sidebar <- dashboardSidebar(fluidPage(textOutput(outputId = "width")))

body <- dashboardBody(
 tags$style(HTML(".slickR {padding-left: 20px; padding-right: 20px;}")),
  fixedPage(
    fixedRow(
      column(2,
             box(width = NULL)
             ),
      column(2,
             box(width = NULL)
             ),
      column(2,
             box(width = NULL)
             ),
      column(6,
             box(width = NULL,
                 slickROutput("scroller",width = '100%', height = round((535-40)*.666))
                 )
             )
    )
  )
)



ui <- dashboardPage(header,sidebar,body, skin = 'yellow')



# SERVER ----
server <- function(input, output, session) {


   output$scroller <- renderSlickR({

     urls <- c('http://gdurl.com/zdcV',
               'http://gdurl.com/E07x',
               'http://gdurl.com/canC')

      slickR(urls,slickOpts = list(centerMode = TRUE, cssEase = 'linear', fade = TRUE),padding = "1%")
    })

  }

# RUN APP ----
shinyApp(ui,server)


