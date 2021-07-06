pollutantmean <- function(directory, pollutant, id){
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
# 我需要資料夾路徑
# 需要把各個資料，依著col和id整併成一個檔案
# 需要能算平均
# mean(某個新資料, id)
# 還要排除掉NA !is.NA() 或是 na.rm = TRUE


