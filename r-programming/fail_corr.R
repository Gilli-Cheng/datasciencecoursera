directory <- "specdata"
thresholds <- 1000

corr <- function(directory,thresholds = 0){
        ck <- complete(directory)
        ck
        directory <- paste(getwd(),"/",directory,"/",sep = "")
        directory
        list <- list.files(directory)
        list
        a <- which(ck["nobs"]>thresholds)
        a
        len <- length(a)
        len
        blank <- c()
                for (i in 1:len) {
                        file <- read.csv(paste(directory,list[i],sep = ""))
                        c_cases <- subset(file,!is.na(sulfate) & !is.na(nitrate))
                        cor <- cor(c_cases["sulfate"],c_cases["nitrate"])
                        blank <- c(blank,cor)
                        }
        blank
}
cr <- corr("specdata", 400)
head(cr)

