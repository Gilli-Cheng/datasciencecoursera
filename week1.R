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
