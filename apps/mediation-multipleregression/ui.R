library(shiny)
fig.width = 620
fig.height = 320


shinyUI(
  fluidPage(
    fluidRow(column(2,
                    br(), br(),
                    aligh = "left",
                    div(
                      checkboxGroupInput("predcheckbox",
                                  label = "Additional predictors",
                                  choices = c("Age" = "age",
                                              "Education" = "education",
                                              "News site use" = "newssite"),
                                  inline = FALSE
                                  )
                      )
                    ),
             column(10,
                    align = "center",
                    plotOutput("mainplot",
                          width = fig.width,
                          height = fig.height
                          )
                    )
             )
    )
)
