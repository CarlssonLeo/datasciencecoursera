corr <- function(directory, threshold = 0) {
        
        #Creates an indexed list of files in specified directory. 
        #Directory must be a subfolder of working directory
        file_use <- list.files(paste(getwd(),"/",directory,sep="")) 
        data_deposit <- data.frame() #Creates an empty data frame
        cor_print <- c()  #creates an empty vector
        for (i in 1:length(file_use)) {   #loop that goes through all files in directory, 
                                          #using the number of files as index,
                                          #and depositing file in frame
                data_deposit <- read.csv(paste(getwd(),"/",directory,"/",file_use[i],sep=""))
                good<-complete.cases(data_deposit)
                
                #Measures logically if threshold is larger than the number of
                #complete pairs. If it is, it appends cor_print with the correlation
                if(threshold < nrow(data_deposit[good,])) { 
                cor_print <- append(cor_print,cor(data_deposit["nitrate"], data_deposit["sulfate"], use = "pairwise.complete.obs"),after = length(cor_print))
                }  
                
        }
        cor_print #prints the results
}
