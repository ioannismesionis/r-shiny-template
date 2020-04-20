# --- Results tab --- #

# Output message of the 'resultsMessage'
output$resultsMessage <- renderUI({
  "The main purpose of this tab is to display any data that you would be interested in. That can either be a ggplot, a table (data.frame) or whatever you think it is useful. For the purpose of the template, I am displaying a table that shows the data uploaded."
})

# Initialise an empty reactive value to accomodate for the data that is being uploaded every time.
reactData <- reactiveVal()

# When the Upload Data is pressed, read the file that was uploaded and save it to reactData()
# Note: req() specified that we require that a file is already uploaded
observeEvent(req(input$uploadFileBtn), {
  reactData(read.csv(req(input$fileInput$datapath)))
                     })

# Specify the data to be displayed from the uiOutput with id = 'dataOutput' specified in the respective ui/results-tab.R script
output$dataOutput <- DT::renderDT({
  
  #change dependency to uploadFileBtn ('Upload File' Button)
  input$uploadFileBtn
  
  # isolate the dependency of reactData() and evaluate the result of reactData() only when the 'Upload File' button is pressed
  isolate(reactData())
})

# enable the 'Download Data' button only when the output of reactData() is not empty/null 
observe({
  shinyjs::toggleState("downloadFileBtn", !is.null(reactData()))
})

# Specify what should be downloaded from the downloadFileBtn 
output$downloadFileBtn <- downloadHandler(
  # Specify the filename
  filename = function() {
    paste("myData", ".csv", sep = "")
  },
  # Specify the contenct of the file that will be downloaded
  content = function(file) {
    write.csv(reactData(), file)
  }
)
