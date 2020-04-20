# --- Upload tab --- #

# Enable the upload button after a file has been uploaded
observe({
  shinyjs::toggleState("uploadFileBtn", !is.null(input$fileInput))
})

# when "Upload data" button is clicked then move to the Results Tab in the app
observeEvent(input$uploadFileBtn,
             updateTabsetPanel(session, "mainNav", "resultsTab"))
