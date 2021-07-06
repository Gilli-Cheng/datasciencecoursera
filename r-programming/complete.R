complete <- function(directory, id = 1:332){
        directory <- paste(getwd(),"/",directory,"/",sep = "")
        list <- list.files(directory)
        blank <- data.frame()
        for (i in id) {
                file <- read.csv(paste(directory,list[i],sep = ""))
                file_no <- file[2,4]
                c_cases <- subset(file,!is.na(sulfate) & !is.na(nitrate))
                pair <- data.frame(id = file_no, nobs = nrow(c_cases))
                blank <- rbind(blank, pair)
                
        }
        blank
}
complete("specdata",id=1:2)
## return the num of the complete cases
## uses subset to modify

