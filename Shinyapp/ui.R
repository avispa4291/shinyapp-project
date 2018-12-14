

library(shiny)


# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel(title = h2("Histogram of selected Iris variable in reference to frequency", align = "center")),
  
  # Sidebar with a slider input for number of bins 
  sidebarLayout(
    sidebarPanel(
       selectInput("var", "1. Select variable from the iris dataset", choices = c("Sepal.Length" = 1, "Sepal.Width" = 2, "Petal.Length" = 3, "Petal.Width" = 4), selected = 1),
                   br(),
       sliderInput("bins", "2. Select number of BINs for histogram", min=5, max=25, value=15),
       br(),
       radioButtons ("color", "3. Make the histogram fancy with a different color", choices=c("lightcoral", "plum", "cyan"), selected="lightcoral")
    ),
   
mainPanel(
  plotOutput("myhist")
)
)

 )
)
