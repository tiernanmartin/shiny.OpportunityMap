#' @title Shiny Module: Project Card
#' @description Project Card
#' @name mod_projectCard
#' @param id Output id
#' @param input shiny input
#' @param output shiny output
#' @param session shiny session
#' @import shiny
#' @import htmltools
#' @import slickR
NULL

#' @rdname mod_projectCard
#' @export
projectCardUI <- function(id){

  ns <- NS(id)

  tagList(
    fluidPage(
      fluidRow(
        column(width = 12, slickROutput(ns("scroller"), width = '100%', height = round((535-40)*.667)))
      ),
      br(),
      fluidRow(
        h4("Project Title"),
        hr(),
        column(width = 6,"Column A"),
        column(width = 6,"Column B")
      )
    )

  )

}


#' @rdname mod_projectCard
#' @export
projectCard <- function(input, output, session){

  urls <- c('http://gdurl.com/zdcV',
            'http://gdurl.com/E07x',
            'http://gdurl.com/canC')


  my_slickr <- function(x){
    slickR(x,
           padding=0,
           slickOpts = list(
             centerMode = TRUE,
             cssEase = 'linear',
             fade = TRUE,
             dots = TRUE,
             arrows = TRUE,
             slidesToShow = 1,
             slidesToScroll = 1
           )
    )
  }

  output$scroller <- renderSlickR({my_slickr(urls)})

}


