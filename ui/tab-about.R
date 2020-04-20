# --- About tab --- #

tabPanel(
  title = "About",
  id    = "aboutTab",
  value = "aboutTab",
  name  = "aboutTab",
  icon  = icon("user-circle"), # https://fontawesome.com/  icons shown on the tabs
  
  # Split into two halves (bootstrap divides the page into 12 columns)
  fluidRow(
    column(9,
           br(),
           h3("About R Shiny Template"),
           hr(),
           p("The current R Shiny template is based on personal work and references found online which will be listed below."),
           br(),
           p("You are more than welcome to expand the template by adding generic functionalities that you think it would be useful to have."),
           br(),
           
           h3("Version"),
           hr(),
           p("V 1.0 - April 2020"),
           br(),

           h3("References"),
           hr(),
           tags$a(href="https://github.com/rstudio/shinythemes", "Shiny themes"),
           br(),
           tags$a(href="https://deanattali.com/blog/advanced-shiny-tips/", "Code structure")
    ),
    column(3,
            br(), br(),
            br(), br(),
            br(), br(),
            br(), br(),
            br(), br(),
            div(
              img(src = "/robot.jpg", width = 300, height = 200) # css specification and photo displayed
            )
    )
  )
)