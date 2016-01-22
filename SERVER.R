library(shiny)
library(plotly)

dat = read.table("data/popphyl_data_pis_fis.csv",sep = ",",header = T )


shinyServer(function(input, output) {

		    output$popphyl_data <- renderPlotly({
			    # size of the bins depend on the input 'bins'
			    if(intput$large){
			    

				gg = ggplot(dat) + geom_point(aes(x = pisS,y=Fit))
							    
			    
			    
			    }
			    else{
			    
				gg = ggplot(dat[which(dat$status=="single"),]) + geom_point(aes(x =piS,y=Fit))
			    }	
				p = ggplotly(gg)
			    	p
		    })
})
