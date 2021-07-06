pollutantmean <- function(directory, pollutant, id =1:332){
        # the path , check 
        directory <- paste(getwd(),"/",directory, "/",sep = "")
        file_list <- list.files(directory)
        blank <- data.frame()
        
        for(i in id){
                files <- read.csv(paste(directory,file_list[i],sep = ""))
                blank <- rbind(blank, files)
        }
        mean(blank[[pollutant]],na.rm = TRUE)
}
test <- pollutantmean("specdata","sulfate",id = 1:10)
test

pollutantmean("specdata", "sulfate", 1:10)
pollutantmean("specdata", "nitrate", 70:72)
pollutantmean("specdata", "sulfate", 34)
pollutantmean("specdata", "nitrate")
