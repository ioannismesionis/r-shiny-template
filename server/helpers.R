withBusyIndicator <- function(buttonId, expr) {
  # Function to show the submit button as grayed out when there is no file loaded.
  # param: buttonID - (character) - the button ID
  # param: expr - (character) - value of the button
  # return: NA
  
  loadingEl <- sprintf("[data-for-btn=%s] .btn-loading-indicator", buttonId)
  doneEl <- sprintf("[data-for-btn=%s] .btn-done-indicator", buttonId)
  disable(buttonId)
  show(selector = loadingEl)
  hide(selector = doneEl)
  hide("errorDiv")
  on.exit({
    enable(buttonId)
    hide(selector = loadingEl)
  })
  
  tryCatch({
    value <- expr
    show(selector = doneEl)
    delay(2000, hide(selector = doneEl, anim = TRUE, animType = "fade",
                     time = 0.5))
    value
  }, error = errorFunc)
}
