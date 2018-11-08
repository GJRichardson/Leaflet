library(shiny)
shinyUI(
  pageWithSidebar(
    headerPanel("Marathon Time Prediction"),
    sidebarPanel(
      numericInput('Minutes', 'Minutes/Mile', 8, min = 4, 
                   max = 12, step = 5
      ),
      submitButton('Submit')
    ),
    mainPanel(
      h3('Results of prediction'),
      h4('You entered'),
      verbatimTextOutput("inputValue"),
      h4('Which resulted in a prediction of '),
      verbatimTextOutput("prediction")
    )
  )
)