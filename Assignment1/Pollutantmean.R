#PollutantMean
pollutantmean <- function(directory, pollutant, id = 1:332) {
        #Creates an indexed list of files
        file_use <- list.files(paste(getwd(),"/",directory,sep="")) 
        data_frame <- data.frame() #Creates an empty data frame
        for (i in id) { #loop that goes through id, using it as index,
                        #and depositing file in frame
                data_frame <- rbind(data_frame, read.csv(paste(getwd(),
                                "/",directory,"/",file_use[i],sep = "")))         
        }
        mean(data_frame[[pollutant]], na.rm = T)
}