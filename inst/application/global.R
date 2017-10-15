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

# SERVER MODULES ----
# note: these should all become functions eventually







