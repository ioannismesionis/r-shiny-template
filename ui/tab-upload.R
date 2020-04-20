# --- Upload tab --- #

tabPanel(
  title = "File Upload",
  id    = "uploadTab",
  value = "uploadTab",
  name  = "uploadTab",
  icon  = icon("upload"),  # https://fontawesome.com/  icons shown on the tabs
  
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
    
  # fileInput element that which let the user upload a file 
  fileInput("fileInput", "Upload File"),
  
  # withBusyIndicator grays out the ability to click the downloadButton until a condition is met - specified in the respective server tab
  withBusyIndicator(
    actionButton(
      "uploadFileBtn",                             # Button ID
      "Upload data",                               # Shown text
      class = "btn-primary"                        # css class
      )
    )
   )
  )
)
