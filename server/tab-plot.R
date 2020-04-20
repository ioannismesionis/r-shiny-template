# --- Plot tab --- #

# Output message of the 'plotMessage'
output$plotMessage <- renderUI({
  "The main purpose of this tab is to display any data that you would be interested in. For demonstrating purposes I use this tab to display a ggplot plot."
})

# Initialise an empty reactive value to accomodate for the plot that is being generated from the reactData()
reactPlot <- reactiveVal()

# When the Upload Data is pressed, save the generated plot to reactPlot()
# Note: req() specified that we require that a file is already uploaded
observeEvent(req(input$uploadFileBtn), { 
    reactPlot(ggplot( data = reactData(), aes(x = reactData()[,1], y = reactData()[,2]) ) +
      geom_point() +                      # Scratteplot ---> check ggplot2 documentation for available selectiong
      xlab("x-axis") +                    # x-lab name 
      ylab("y-axis") +                    # y-lab name
      ggtitle("Just a ggplot!", subtitle = "Just a subtitle!")   # title and sub-title specified
  )
})

# Output of the histOutput element specified in the respective ui folder
output$histOutput <- renderPlot({
  reactPlot()
})

# Only enable the 'Download Plot' when reactData() is not null/empty
observe({
  shinyjs::toggleState("downloadPlotBtn", !is.null(reactData()))
})

# Specify the output of the downloadPlotBtn element specified in the ui
output$downloadPlotBtn <- downloadHandler(
  filename = function() {
    # Specify the filename
    paste("myPlot", ".png", sep = "")
  }, 
  content = function(file) {
    # Specify the contenct of the file that will be downloaded
    ggsave(file, plot = reactPlot(), device = "png")
  }
)
