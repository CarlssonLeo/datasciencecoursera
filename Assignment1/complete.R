complete <- function(directory, id = 1:332) {
        file_use <- list.files(paste(getwd(),"/",directory,sep="")) 
        data_frame <- data.frame() #Creates an empty data frame
        complete_nobs <- data.frame() #Creates a second empty frame for depositing
        for (i in id) { #loop that goes through id, using it as index,
                #and depositing file in frame
                data_frame <- read.csv(paste(getwd(),
                                "/",directory,"/",file_use[i],sep = "")) #Read csv from directory
                                                                        #deposit in data frame
                good<-complete.cases(data_frame) #sort out only complete cases
                x <- data.frame(id = i,nobs =nrow(data_frame[good,])) #write into new 
                #data frame, with i in first position and number of rows (nobs) in second
                complete_nobs <- rbind(complete_nobs, x) #deposit the two numbers into new frame and repeat
        }
        
        complete_nobs
       
}