---
output:
  pdf_document: default
  html_document: default
---
##Scoping
so what is <<- operator?
<<- can assign a value to an obs in an environment that is different from the current environment.
if i name up a obs inside a func by using <<-, i could recall it outside the func, also it'll be prioritized to be call though i may had assign value to it previously.
```{r}
a <- 1

foo <- function(){
    a <<- 2
    0
}

foo()

a
## 2
```
i've assigned a to value 1,
then use the non local assignment<<- to assign it value 2, when i call a , i'll get 2 instead of 1.
That is the replacement occurs in the nearest enclosing environment that contains an object of the same name, or the workspace (that is the example case) if none do.
So if you assign A the value of 2 using A <<- 2 within, for example, a function, and then call that function, other functions and the command line can then use the value of A. 
```{r}
foo1 <- function(x){
  increment <- x+1
  sqrt      <- sqrt(increment)
  return(sqrt)
}
foo2 <- function(x){
  increment <<- x+1
  sqrt      <- sqrt(increment)
  return(sqrt)
}

> foo1(3)
[1] 2
> increment
Error: object 'increment' not found
> foo2(3)
[1] 2
> increment
[1] 4
```

