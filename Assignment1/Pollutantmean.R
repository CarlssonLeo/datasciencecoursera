#PollutantMean
pollutantmean <- function(directory, pollutant, id = 1:332) {
        ## 'directory' is a character vector of length 1 indicating the
        ## location of the csv files
        
        ## 'pollutant' is a character vector of length 1 indicating the
        ## name of the pollutant for which we will calculate the 
        ## mean; either "sulfate" or "nitrate"
        
        ## 'id' is an integer vector indicating the monitor ID numbers
        # to be used
        
        ## Return the mean of the pollutant across all monitors list
        ## in the 'id' vector (ignoring NA values)
        ## NOTE: Do not round the results!
        file_use <- list.files(paste(getwd(),"/",directory,sep="")) #Creates an indexed list of files
        data_frame <- data.frame() #Creates an empty data frame
        for (i in id) { #loop that goes through id, using it as index, and depositing file in frame
                data_frame <- rbind(data_frame, read.csv(paste(getwd(),"/",directory,"/",file_use[i],sep = "")))         
        }
        mean(data_frame[[pollutant]], na.rm = T)
}