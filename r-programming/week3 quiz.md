
```{r}
library(datasets)
data("iris")
data("mtcars")
```

Q1In this dataset, what is the mean of 'Sepal.Length' for the species virginica? 
Please round your answer to the nearest whole number.
```{r}
a <- tapply(iris$Sepal.Length, iris$Species, mean)
as.list(a)
a["viginica"]
```

### Question 2
Continuing with the 'iris' dataset from the previous Question, what R code returns a vector of the means of the variables 'Sepal.Length', 'Sepal.Width', 'Petal.Length', and 'Petal.Width'?

```{r}
apply(iris[, 1:4], 2, mean)
```

2 represents for the col

### Question 3
```{r}

with(mtcars, tapply(mpg, cyl, mean))

sapply(split(mtcars$mpg, mtcars$cyl), mean)

tapply(mtcars$mpg, mtcars$cyl, mean)
```

### Question 4
Continuing with the 'mtcars' dataset from the previous Question, what is the absolute difference between the average horsepower of 4-cylinder cars and the average horsepower of 8-cylinder cars?
```{r}
b <- tapply(mtcars$hp, mtcars$cyl, mean)
abs(b[[1]]-b[[3]])
```

