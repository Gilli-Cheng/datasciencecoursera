x <- 1
x
print(x) # watchout for X x
msg <- "Hello World!"
print(msg)

x <- 5
x # auto-printing
print(x) # explicit printing

x <- 1:20
x 


#--------------------------------------

x<- c(0.5, 0.6)     ## numeric 
x<- c(TRUE, FALSE)  ## logical
x<- c(T, F)         ## logical
x<- c("a","b","c")  ## charac
x<- 9:29            ## integer
x<- c(1+0i, 2+3i)   ## complex

x <- vector("numeric", length =10)
x
class(x)

#--------------------------------------
# when the objects are mixed in a vector
# R will force it into the same datatype
y <- c(2,"y") ## character
y
y <- c(TRUE, 3) ## numeric
y
y <- c("a", TRUE) ## character
y

#--------------------------------------

x <- 0:8
x
class(x)
as.logical(x)
as.numeric(x)
as.character(x)
as.complex(x)

b <- c("1","2","3")
class(b)
as.logical(b)
as.numeric(b)

c<- c("a","b","c")
class(c)
as.numeric(c)
as.character(c)

#--------------------------------------
x <- list( TRUE, 2+3i, "g", 3)
x
#--------------------------------------
m <- matrix(nrow = 3, ncol = 4) #create a empty matrix
m
dim(m) # row->col
attributes(m)

m <- matrix(2:13, nrow = 3, ncol = 4)
m

m <- 1:15
m
dim(m)<-c(5, 3)
m

x <- 1:4
y<- 10:13
cbind(x,y)
rbind(x,y)

#--------------------------------------

x<- factor(c("yes", "yes", "no", "yes", "no"))
x
table(x)
unclass(x)

x <- factor(c("yes", "no", "yes", "yes", "no"), levels =c("yes","no"))
table(x)
unclass(x)

#--------------------------------------

x <- c(1,2,NaN, NA,4)
is.nan(x)
is.na(x)

#--------------------------------------
x <- data.frame(foo = 1:4, bar =c(T,T,F,F))
x
nrow(x)
ncol(x)
#--------------------------------------

y <- data.frame(a=1, b="a")
dput(y)
dput(y,file = "dputtest.R")
new.calldput <- dget("dputtest.R")
new.calldput
#--------------------------------------

y <- data.frame(a=1, b="a")
y
dput(y)
dput(y,file = "dputtest.R")
new.calldput <- dget("dputtest.R")
new.calldput

x <- "w"
y <- data.frame(a=1 , b = "a")
dump(c("x","y"),file = "dumptry.R")
rm(x,y)
source("dumptry.R")
y
x

#--------------------------------------

con <- url("https://www.coursera.org/learn/r-programming/lecture/pSHGL/connections-interfaces-to-the-outside-world")
con
close(con)

midterm <- file("midterm.csv","r")
data2 <- read.csv(midterm)
close(midterm)
