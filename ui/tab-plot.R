# --- Plot tab --- #

tabPanel(
  title = "Plot",
  id    = "resultsPlotTab",
  value = "resultsPlotTab",
  name  = "resultsPlotTab",
  icon  = icon("image"),  # https://fontawesome.com/  icons shown on the tabs
  
  # specify what is displayed in the side bar
  sidebarLayout(
    sidebarPanel(h3("Shiny Template"),
                 br(),
                 wellPanel(tags$ol("1. File Input tab."),
                           tags$ol("In this tab, you can upload a file and do some manipulations on the server side."),
                           tags$ol("2. Results tab"),
                           tags$ol("This tab may be used to display some results - e.g. a table and download it."),
                           tags$ol("3. Plots tab"),
                           tags$ol("This tab may be used to display some results and download the plot - e.g. a ggplot2 and download it."),
                           tags$ol("4. About tab."),
                           tags$ol("This tab is a generic one to diplsay the about section")
                 )),
    # specify what is displayed in the main panel
    mainPanel(
      # ui output with id = "plotMessage". The output shown in specified in the respective server/tab-plot.R
      uiOutput("plotMessage"),
      br(),   # empty line (for visual purposes)
      
      # withBusyIndicator grays out the ability to click the downloadButton until a condition is met - specified in the respective server tab
      withBusyIndicator(
        downloadButton(
          "downloadPlotBtn",                        # Button ID
          "Download Plot",                          # Shown text
          class = "btn-primary"                     # css class
        )
      ),
      br(), # empty line (for visual purposes)
      
      # ui output that expects to display a plot in this position. The plot is specified in the server side
      plotOutput("histOutput")
    )
  ))
