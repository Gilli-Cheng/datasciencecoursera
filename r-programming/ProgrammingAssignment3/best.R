best <- function(state, outcome) {
        ## Read outcome data
        care <- read.csv("outcome-of-care-measures.csv")
        
        ## Check that state and outcome are valid
        
        care[,7] <- as.factor(care[,7])
        state_name <- as.list(levels(care[,7]))
        if(state %in% state_name == FALSE)message("invalid state.")
        
        outcomes <- c("heart attack", "heart failure", "pneumonia")
        if(outcome %in% outcomes==FALSE)message("invalid outcome.")
        
        ## Return hospital name in that state with lowest 30-day death
        data <- subset(care, care$State == state)
        

        if(outcome == "heart attack"){
                data[,11] <- as.numeric(data[,11])
                ha_min <- min(data[,11],na.rm = TRUE)
                # data[11] as the ha mortality
                ha <- data[which(data[11] == ha_min),]
                paste(ha[2],ha_min,sep = " ")
        }else if(outcome == "heart failure"){
                data[,17] <- as.numeric(data[,17])
                hf_min <- min(data[,17],na.rm = TRUE)
                # data[17] as the hf mortality
                hf <- data[which(data[17] == hf_min),]
                paste(hf[2],hf_min,sep = " ")
        }else if(outcome == "pneumonia"){
                data[,23] <- as.numeric(data[,23])
                pn_min <- min(data[,23],na.rm = TRUE)
                # data[23] as the pn mortalit
                pn <- data[which(data[23]==pn_min),]
                paste(pn[2],pn_min,sep = " ")}
}

best("AL","heart attack")
best("TX", "heart attack")

