corr <- function(directory, threshold = 0) {
        
        #Creates an indexed list of files
        file_use <- list.files(paste(getwd(),"/",directory,sep="")) 
        data_frame <- data.frame() #Creates an empty data frame
        x<- c()
        for (i in length(file_use)) { #loop that goes through id, using it as index,
                #and depositing file in frame
                data_frame <- read.csv(paste(getwd(),"/",directory,"/",file_use[i],sep=""))
                good<-complete.cases(data_frame)
                
                if(threshold > nrow(data_frame[good,])) { 
                x <- append(x, cor(data_frame$nitrate, data_frame$sulfate, use = "complete.obs"))
                        
                }    
               
        }
        x   
}
