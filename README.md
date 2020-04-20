# R-Shiny Template
The following repository contains the code for an R-Shiny template.

To start the app, open the `ui.R` script and press the `Run App` button shown on the upper right corner of the R script.

To build on top of the template, you need to change the respective `tab-*.R` scripts both in the `ui` and `server` folders.

### _ui_ folder:
The `tab-*.R` scripts contain the _ui_ elements displayed in the app using the built-in function of R Shiny. Some of the functions used are the following:
  - `fileInput()`
  - `uiOutput()`
  - `downloadButton()`
 
The aforementioned functions create ui elements shown in the app but the functionality of these is specified in the _server_ folder in the respective `tab-*.R` script.

E.g. The `downloadButton()` function specified in the _`ui/tab-upload.R`_  displays a download button in the frontend of the app. However, the action that occurs when pressing the button is to be specified in the respective _`server/tab-upload.R`_ in the _server_ folder.

In this folder, you can also change the name of the tabs or add extra tabs however it seems fit for the purpose of the shiny app needed to be developed. The code is commented to assist as much as possible to make such changes as easy as possible. 

### _server_ folder:

In the server folder, the functionality of the respective tabs is specified. The trickiest part of R-Shiny is the reactivity functions that make the code reactive triggered by specific events.

Some of the functions that are being used are the following:

  - `observeEvent()`
  - `reactive()`
  - `reactiveVal()`
 
or for rendering the ui elements

  - `renderUI()`
  - `renderPlot()`
  - `renderDT()`
 
To know more about R-Shiny and reactivity, feel free to address to the following [link](https://shiny.rstudio.com/tutorial/). 
  
## References:
I used many tricks suggested by Dean Attali.

Please check his GitHub account for more:
https://github.com/daattali
