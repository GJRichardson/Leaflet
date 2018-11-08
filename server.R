
library(shiny)
data(galton)

diabetesRisk <- function(Minutes) (Minutes*26.2)/60
shinyServer(
  function(input, output) {
    output$inputValue <- renderPrint({input$Minutes})
    output$prediction <- renderPrint({diabetesRisk(input$Minutes)})
  }
)