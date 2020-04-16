# R script to install required packages
source("/repos/shinytemplate/installPackages.R")

# Load required packages
library(shiny)              # package version: 1.1.0
library(shinyjs)            # package version: 1.0
library(shinydashboard)     # package version: 0.7.0
library(shinyWidgets)       # package version: 0.5.0
library(shinycssloaders)    # package version: 0.3
library(jsonlite)           # package version: 1.5
library(DT)                 # package version: 0.4
library(ggplot2)            # package version: 3.2.1

# Source any additional functions needed for different tasks in the R Shiny App
source("/repos/shinytemplate/server/helpers.R")
source("/repos/shinytemplate/ui/helpers.R")

# Create R shiny app with the specified css specifications
tagList(
  useShinyjs(),
  useShinydashboard(),
  tags$head(
    tags$script(src = "info_message.js"),
    tags$link(href = "style.css", rel = "stylesheet")),        # How to connect the style.css file, rel is saying what that document is

# R shiny app will be a navigation page
navbarPage(
  title = img(src = "ej32.png"),
  
  # App title here
  windowTitle = "R Shiny Template",
  
  # id for css
  id = "mainNav",
  inverse = TRUE, 
  fluid = FALSE,
  collapsible = TRUE,
  
  # include the UI for each tab
  source(file.path("ui", "tab-upload.R"),  local = TRUE)$value,
  source(file.path("ui", "tab-results.R"),  local = TRUE)$value,
  source(file.path("ui", "tab-plot.R"),  local = TRUE)$value,
  source(file.path("ui", "tab-about.R"),  local = TRUE)$value
)
)