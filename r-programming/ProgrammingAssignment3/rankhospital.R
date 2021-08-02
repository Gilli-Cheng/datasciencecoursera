rankhospital <- function(state, outcome, num = "best") {
        ## Read outcome data
        care <- read.csv("outcome-of-care-measures.csv")
        
        ## Check that state and outcome are valid
        care[,7] <- as.factor(care[,7])
        state_name <- as.list(levels(care[,7]))
        if(state %in% state_name == FALSE)message("invalid state.")
        
        outcomes <- c("heart attack", "heart failure", "pneumonia")
        if(outcome %in% outcomes==FALSE)message("invalid outcome.")
        
        data <- subset(care, care$State == state)
        nums <- c("best","worst")
        if(num %in% 1:nrow(data)==FALSE)message("NA") 
        # else if(num %in% nums==FALSE){
        #                 message("NA")}
        ## Return hospital name in that state with the given rank
        d1 <- cbind(Hospital.name=data$Hospital.Name, 
                    Hospital.30.Day.Death..Mortality..Rates.from.Heart.Attack=data[,11], 
                    Hospital.30.Day.Death..Mortality..Rates.from.Heart.Failure= data[,17],
                    Hospital.30.Day.Death..Mortality..Rates.from.Pneumonia= data[,23])
       
        
        # class(d1[,2])
        # na <- c("Not Available")
        # d1 <- apply(d1,2,function(x){ ifelse(x %in% na,0,x)})
        # you can't do this cuz by order(), the 0s will get to the top
        d1 <- as.data.frame(d1)

        d1[,2] <- as.numeric(d1[,2])
        d1[,3] <- as.numeric(d1[,3])
        d1[,4] <- as.numeric(d1[,4])
        
        
        if(num=="worth"){num==nrow(d1)}else if(num=="best"){num==1}
        
        if(outcome=="heart attack"){
                d1 <- d1[order(d1[,2],d1[,1],decreasing = FALSE),]
        }else if(outcome=="heart failure"){
                d1 <- d1[order(d1[,3],d1[,1],decreasing = FALSE),]
        }else if(outcome=="pneumonia"){
                d1 <- d1[order(d1[,4],d1[,1],decreasing = FALSE),]
        }
        N <- c(1:nrow(d1))
        d1 <- cbind(d1,N)
        output <- subset(d1,num==N)
        paste(output$Hospital.name)
        ## 30-day death rate
}

source("rankhospital.R")
rankhospital("TX", "heart failure", 4)
"DETAR HOSPITAL NAVARRO"