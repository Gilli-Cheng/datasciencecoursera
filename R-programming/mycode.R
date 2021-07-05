## by using source 

myfunction <- function() {
  x <- rnorm(100)
  mean(x)
}

second <- function(x) {
  x + rnorm(length(x))
}

## R programming class

add2 <- function(x,y){
        x + y
}

##add2(2,7)

above10 <- function(y){
  use <- y > 10
  y[use]
}
##above10(11)
##above10(9)

above <- function(x,n = 10){
  use <- x > n
  x[use]
}
##x <- 1:20
##above(2,3)
##above(x,12)
##above(x) ## default n=10

columnmean <- function(y ,removeNA = TRUE){
        nc <- ncol(y) ## col count
        means <- numeric(nc)  ## empty numeric with the length of ncol
        for(i in 1:nc){ ## for 1 to ncol
              means[i] <- mean(y[, i], na.rm = removeNA) 
        }     
        means
}
## the index i of this empty means box
## , will calc with mean of the data by the ncol
## na.rm is an argument in mean , if =TRUE then remove the NAs


## columnmean(airquality)
