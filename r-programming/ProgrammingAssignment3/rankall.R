rankall <- function(outcome, num = "best") {
        ## Read outcome data
        care <- read.csv("outcome-of-care-measures.csv")
        
        ## Check that state and outcome are valid
        care[,7] <- as.factor(care[,7])
        state_name <- as.list(levels(care[,7]))
        
        outcomes <- c("heart attack", "heart failure", "pneumonia")
        if(outcome %in% outcomes==FALSE)message("invalid outcome.")
        
        
        source("rankhospital.R")
        output <- data.frame(NULL)
        for (i in 1:length(state_name)) {
                state <- state_name[i]
                hosp <- rankhospital(state,outcome,num)
                row <- cbind(hosp,state)
                output <- rbind(output,row)
        }
        dput(output)
        
        
        ## 30-day death rate
}
