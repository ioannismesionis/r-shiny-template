# Load required packages
library(shiny)              # package version: 1.1.0
library(shinyjs)            # package version: 1.0
library(shinydashboard)     # package version: 0.7.0
library(shinyWidgets)       # package version: 0.5.0
library(shinycssloaders)    # package version: 0.3
library(jsonlite)           # package version: 1.5
library(DT)                 # package version: 0.4
library(ggplot2)            # package version: 3.2.1
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
  theme = shinytheme("spacelab"),
  
  # id for css
  id = "mainNav",
  # inverse = TRUE, 
  fluid = FALSE,
  collapsible = TRUE,
  
  # include the UI for each tab
  source(file.path("ui", "tab-upload.R"),  local = TRUE)$value,
  source(file.path("ui", "tab-results.R"),  local = TRUE)$value,
  source(file.path("ui", "tab-plot.R"),  local = TRUE)$value,
  source(file.path("ui", "tab-about.R"),  local = TRUE)$value
)
)