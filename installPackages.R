# Specify the packages that are needed for the R Shiny App
packages <- c('shinycssloaders')

# If the packages are not installed already, procceed with the installment 
if (length(setdiff(packages, rownames(installed.packages()))) > 0) {
  install.packages(setdiff(packages, rownames(installed.packages())))  
}

# remove the variable 'packages'
rm(packages)
