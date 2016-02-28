library(shiny)

shinyUI(pageWithSidebar(
  headerPanel("Miles per Gallon (MPG) Prediction"),
  sidebarPanel(
    h6('This tool was developed to predict your vehicle fuel economy based on the number of cylinders the vehicle has, the horsepower of the vehicle, and the transmission type of the vehicle.'),
    h4('Make your selections below to predict the MPG of your vehicle:'),
    numericInput('cylInput', 'Number of Cylinders:', 4, min = 0, max = 12, step = 1),
    numericInput('hpInput', 'Approximate Horsepower:', 170, min = 70, max = 700, step = 10),
    radioButtons('amInput', 'Transmission Type:', c('Automatic' = 0, 'Manual' = 1)),
    submitButton('Calculate MPG!')
  ),
  mainPanel(
    h1('Results of the Prediction'),
    h4('Number of cylinders you entered:'),
    verbatimTextOutput("cylOutput"),
    h4('Horsepower you entered:'),
    verbatimTextOutput("hpOutput"),
    h4('Transmission type you entered (0 = Automatic, 1 = Manual):'),
    verbatimTextOutput("amOutput"),
    h2('Predicted MPG based on your inputs:'),
    verbatimTextOutput("prediction")
  )
  )
)

