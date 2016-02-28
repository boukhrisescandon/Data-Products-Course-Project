library(shiny)

## Develop model to predict MPG:
## lm(mpg ~ cyl + hp + am, data=mtcars)
#### mpg = 30.889 - 1.127*cyl - 0.03688*hp + 3.9043*am

mpgPrediction <- function(cyl, hp, am) {
  30.889 - 1.127*cyl - 0.03688*hp + 3.9043*am
}

shinyServer(
  function(input, output) {
    output$cylOutput <- renderPrint({input$cylInput})
    output$hpOutput <- renderPrint({input$hpInput})
    output$amOutput <- renderPrint({as.numeric(input$amInput)})
    output$prediction <- renderPrint({mpgPrediction(input$cylInput, input$hpInput, as.numeric(input$amInput))})
  }
)


