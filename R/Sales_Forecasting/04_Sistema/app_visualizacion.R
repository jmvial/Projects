library(shiny)

lista_visualizacion = readRDS("lista_visualizacion.rds")

ui = fluidPage(
  tags$head(
    tags$style(HTML("
      body {
        background-color: #f4f4f9;
        font-family: Arial, sans-serif;
      }
      .title-panel {
        text-align: center;
        margin-bottom: 20px;
      }
      .sidebar-panel {
        background-color: #ffffff;
        padding: 15px;
        border: 1px solid #ddd;
        border-radius: 8px;
        box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
      }
      .main-panel {
        display: flex;
        justify-content: center;
        align-items: center;
      }
    "))
  ),
  
  fluidRow(
    column(
      width = 12,
      div(class = "title-panel",
          h1("Product Forecast Visualization")
      )
    )
  ),
  
  fluidRow(
    column(
      width = 3,
      div(class = "sidebar-panel",
          selectInput("plot", "Selecciona un gráfico:", choices = names(lista_visualizacion))
      )
    ),
    
    column(
      width = 9,
      div(class = "main-panel",
          plotOutput("plotOutput", height = "600px")
      )
    )
  )
)

server = function(input, output) {
  output$plotOutput = renderPlot({
    plot_selected = lista_visualizacion[[input$plot]]
    print(plot_selected)
  })
}

shinyApp(ui = ui, server = server)
