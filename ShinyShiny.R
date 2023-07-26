library(shiny)

ui <- fluidPage(
  radioButtons(
    inputId = "radio_input",
    label = "Are you a cat person or a dog person?",
    choices = c(
      "Cat person",
      "Dog person",
      "Don't make me choose!",
      "Neither :("
    ),
    selected = "Don't make me choose!"
  ),
  verbatimTextOutput("radio_output")
)

server <- function(input, output) {
  output$radio_output <- renderPrint({
    input$radio_input
  })
}

shinyApp(ui, server)

