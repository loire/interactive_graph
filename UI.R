library(shiny)
library(plotly)

shinyUI(fluidPage(
		  titlePanel("Animal species structure and diversity"),
		  checkboxInput(inputId = "large",
				      label = strong("Show interspecies values"),
				            value = FALSE),

		    checkboxInput(inputId = "pics",
				        label = strong("Show density estimate"),
					      value = FALSE),
		  
		  ),
		  mainPanel(
			    plotlyOutput("popphyl_data")
			    )
		  ))
