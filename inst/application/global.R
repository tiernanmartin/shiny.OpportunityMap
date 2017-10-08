# SETUP -----

library(shiny.OpportunityMap)
library(gplots)
library(shiny)
library(htmltools)
library(shmodules)
library(miscgis)
library(tidyverse)
library(sf)
library(mapview)
library(leaflet)
library(leaflet.extras)
library(slickR)
library(htmlwidgets)
library(shinydashboard)

# COLORS ----
proj_light_grey <- col2hex("grey75")
proj_grey <- col2hex("grey50")
proj_dark_grey <- col2hex("grey25")
proj_orange <- '#D59C40'

# DATA ----

p_sf <- read_rds('./www/priorities_sf.rds')


# UI MODULES ----
# note: these should all become functions eventually

boxed_radio_subgroup <- function(inputId, id, label, choices, inline = FALSE) {
  values <- paste0(id, "-", choices)
  choices <- setNames(values, choices)

  radioButtons(inputId, label, choices, selected = character(0), inline = inline)
}



tabItemContentUI_list <- function(id, box_width = 2, box_title = "", box_status = "primary"){

  ns <- NS(id)

  tagList(
    box(width = box_width, title = box_title, status = box_status, collapsible = TRUE,
        uiOutput(ns("radio_list"))
    )
  )
}

tabItemContentUI_table <- function(id, tab_name){

  ns <- NS(id)

  tabItem(tab_name,
          box(title = "Table", status = "primary")

  )

}

tabItemContentUI_documents <- function(id, tab_name){

  ns <- NS(id)
  tabItem(tab_name,
          box(title = "Docs", status = "primary")

  )
}

tabItemContentUI_about <- function(id, tab_name){

  ns <- NS(id)
  tabItem(tab_name,
          fluidPage(
            fluidRow(
              column(3),
              column(6,
                     box(width = 12, title = "About", status = "primary",
                         uiOutput(ns("about"))
                         )
                     ),
              column(3)

            )

          )

  )
}

projectCardUI <- function(id){
  ns <- NS(id)

  tagList(
    br()  # project card template goes here
  )
}


# SERVER MODULES ----
# note: these should all become functions eventually

tabItemContent_list <- function(input, output, session, choices = LETTERS){
   output$radio_list <- renderUI({
      radioButtons(inputId = session$ns("btn"),
                 label = NULL,
                 choices = choices,
                 selected = character(0))
   })

   radio_sel <- reactive({input[[session$ns("btn")]]})

    observeEvent(radio_sel(), {
      showNotification("Message text")
    })


}

tabItemContent_about <- function(input, output, session){

  ns <- session$ns

  content <- includeHTML("./www/about.html")

  output$about <- renderUI({content})

}
