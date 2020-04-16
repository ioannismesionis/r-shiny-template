# --- Results tab --- #

tabPanel(
  title = "Results",
  id    = "resultsTab",
  value = "resultsTab",
  name  = "resultsTab",
  icon  = icon("tablet"),  # https://fontawesome.com/  icons shown on the tabs
  
  # specify what is displayed in the side bar
  sidebarLayout(
    sidebarPanel(h3("Shiny Template"),
                 br(),
                 wellPanel(tags$ol("1. File Input tab."),
                           tags$ol("In this tab, you can upload a file and do some manipulations on the server side."),
                           tags$ol("2. Results tab"),
                           tags$ol("This tab may be used to display some results - e.g. a table."),
                           tags$ol("3. Plots tab"),
                           tags$ol("This tab may be used to display some results - e.g. a ggplot2."),
                           tags$ol("4. About tab."),
                           tags$ol("This tab is a generic one to diplsay the about section")
                 )),
  # specify what is displayed in the main panel  
  mainPanel(
  # ui output with id = "resultsMessage". The output shown in specified in the respective server/tab-results.R
  uiOutput("resultsMessage"),
  br(),  # empty line (for visual purposes)
  
  # withBusyIndicator grays out the ability to click the downloadButton until a condition is met - specified in the respective server tab
  withBusyIndicator(
    downloadButton(
      "downloadFileBtn",                        # Button ID
      "Download Data",                          # Shown text
      class = "btn-primary"                     # css class
    )
  ),
  
  br(),  # empty line (for visual purposes)
  
  # Specifies the easyJet orange colour shown in the head of the table 
  tags$style(HTML('table.dataTable th {background-color: #ff903e !important;}')),
  
  br(),  # empty line (for visual purposes)
  
  # Data table output from the 'DT' library using a spinner with the orange colour specified while loading.
  # Which data is displayed is specified in the respective server/tab-results.R script
  DT::dataTableOutput('dataOutput') %>% withSpinner(color="#ff8800")
)
))
