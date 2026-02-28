#Week 5a
#Load the data
data(iris)

#Understand the data
str(iris)
View(iris)

#Basic Scatter Plot: sepal length vs sepal width
plot(iris$Sepal.Length,iris$Sepal.Width)
#Labeled scatter plot
plot(
  iris$Sepal.Length,
  iris$Sepal.Width,
  main = "Sepal Length vs Sepal Width",
  xlab = "Sepal Length (cm)",
  ylab = "Sepal Width (cm)",
  col = "blue",
  pch = 16
)

#Colored scatter plot by species
plot(iris$Sepal.Length,
     iris$Sepal.Width,
     col = as.numeric(iris$Species),
     pch = 16,
     main = "Sepal Dimensions by species")

legend(
  "topright",
  legend=levels(iris$Species),
  col=1:3,
  pch = 16
)

#Multi variates scatter
#Add size as a third variable
plot(iris$Sepal.Length,
     iris$Sepal.Width,
     col = as.numeric(iris$Species),
     pch = 16,
     cex = iris$Petal.Length/max(iris$Petal.Length),
     main = "Multivariate scatter plot(Color+size)"
)
#Scatter plot matrix
#All numeric variables against each other
pairs(
  iris[,1:4],
  col = as.numeric(iris$Species),
  pch = 16,
  main = "Scatter plot matrix of iris dataset"
)



#GGPlot 2
library(ggplot2)
#Basic scatter plot
ggplot(iris,aes(x=Sepal.Length,
                y=Sepal.Width))+
  geom_point()

#Multivariate scatter plot
#Color+size encoding
ggplot(iris,
       aes(x=))
