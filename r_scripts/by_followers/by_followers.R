library(shiny)
library(httr)
library(dplyr)

ui <- fluidPage(
  tableOutput("tbl")
)

server <- function(input, output, session) {
  output$tbl <- renderTable( {
    # GET request from an API
    req <- httr::GET(url = "http://api.toth.eti.br:8080/api/get_data_order_by_followers")
    req_parsed <- httr::content(req, type = "application/json")
    
    df <- data.frame(matrix(unlist(req_parsed), nrow=length(req_parsed), byrow=T))
    colnames(df) <- c("ID","User","User_ID", "Followers")
    df
  })
}

shinyApp(ui, server)