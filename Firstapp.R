########################
# James Corby          # 
# First Simple Web App #
########################


library(shiny)
library(shinythemes)


#define UI (front page)

UI <- fluidPage(theme = shinytheme("yeti"),
  navbarPage(
    
  
  "My First App with R",
  tabPanel("Navbar 1",
           sidebarPanel(
             tags$h3("input"),
             textInput("txt1", "Given Name",""),
             textInput("txt2", "Surname", ""),
            
           ), #sidebar 
           mainPanel(
             h1("Your Name"),
             
             h4("Output 1"),
             verbatimTextOutput("txtout"),
             
           )#main panel
  ))) #tab pane/navbar/fluidpage
  
  
#create server  
Server<- function(input, output) {
  
  output$txtout <- renderText({
    paste(input$txt1, input$txt2, sep = "")
  })
}

#create object app
shinyApp(ui = UI , server = Server)


