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

p_sf <- read_rds('./www/data/priorities_sf.rds')


# UI MODULES ----
# note: these should all become functions eventually


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



projectCardUI <- function(id){
  ns <- NS(id)

  tagList(
    br()  # project card template goes here
  )
}


# SERVER MODULES ----
# note: these should all become functions eventually







