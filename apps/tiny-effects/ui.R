library(shiny)
fig.height = 325 
fig.width = 500

shinyUI(
  fluidPage(
    fluidRow(column(3,
                    align = "left",
                    align = "center",
                    sliderInput("savslider",
                                label = "Sample mean",
                                min = 2.8,
                                max = 3.3,
                                value = 2.9,
                                step = .01),
                    sliderInput("ssizeslider",
                                label = "Sample size",
                                min = 10,
                                max = 15000,
                                value = 10,
                                step = 10),
                    sliderInput("effectslider",
                                label = "True population mean",
                                min = 2.8,
                                max = 3.3,
                                value = 3.0,
                                step = .01),
                    checkboxInput("showpower", "Show test power")
             ),
             column(9, 
                   align = "center",
                   plotOutput("mainplot",
                        width = fig.width,
                        height = fig.height
                    )
             
             )
  )

))
