# Load required packages
library(shiny)             
library(shinyjs)            
library(shinydashboard)    
library(shinyWidgets)       
library(shinycssloaders)    
library(jsonlite)          
library(DT)                 
library(ggplot2)            
library(shinythemes)

# Source any additional functions needed for different tasks in the R Shiny App
source("server/helpers.R")
source("ui/helpers.R")

# Create R shiny app with the specified css specifications
tagList(
  useShinyjs(),
  useShinydashboard(),

# R shiny app will be a navigation page
navbarPage(
  title = img(src = "/r.png", style="margin-top: -14px; padding-right:10px;padding-bottom:10px", height = 60),
  
  # App title here
  windowTitle = "R Shiny Template",
  
  # theme to choose
  theme = "spacelab.min.css",

  id = "mainNav",
  fluid = FALSE,
  collapsible = TRUE,
  
  # include the UI for each tab
  source(file.path("ui", "tab-upload.R"),  local = TRUE)$value,
  source(file.path("ui", "tab-results.R"),  local = TRUE)$value,
  source(file.path("ui", "tab-plot.R"),  local = TRUE)$value,
  source(file.path("ui", "tab-about.R"),  local = TRUE)$value
)
)