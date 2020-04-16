# allow uploading files up to 100MB
options(shiny.maxRequestSize = 100*1024^2) 

server <- function(input, output, session) {
  
  # Include the logic (server) for each tab
  source(file.path("server", "tab-upload.R"),  local = TRUE)$value
  source(file.path("server", "tab-results.R"),  local = TRUE)$value
  source(file.path("server", "tab-plot.R"),  local = TRUE)$value
}
