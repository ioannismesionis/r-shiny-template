# --- About tab --- #

tabPanel(
  title = "About",
  id    = "aboutTab",
  value = "aboutTab",
  name  = "aboutTab",
  icon  = icon("user-circle"), # https://fontawesome.com/  icons shown on the tabs
  
  # Split into two halves (bootstrap divides the page into 12 columns)
  fluidRow(
    column(3,
           align = "left",
           div(
                img(style="display: inline-block;", src = "http://images.all-free-download.com/images/graphiclarge/natural_beauty_highdefinition_picture_166133.jpg", height=300, width=300) # css specification and photo displayed
           )
    ),
    column(9,
           h3("About R Shiny Template"),
           hr(),
           p("The current R Shiny template is based on Long Term Galaxy R Shiny app."),
           br(),
           p("You are more than welcome to expand the template by adding generic functionalities that you think it would be useful to have."),
           br(),
           
           h3("Version"),
           hr(),
           p("V 1.0 - January 2020"),
           br(),

           h3("Contact"),
           hr(),
           p("If you would like to report any issues, ask for more information or provide feedback about the R Shiny Template please get in contact with #DataScience.")
    )
  )
)