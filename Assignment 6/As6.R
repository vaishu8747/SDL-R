# Assignment 6

install.packages("caret")
library(caret)

# data prepossing
getwd()
setwd("C:/Users/User/Documents/R") 
dir()
as<- read.csv("Cars.csv",header = T) 
as
data(as)
View(as)

# data dimension
dim(as)

# list type each attribute
sapply(as, class)

head(as)

# summarize
summary(as)

# create validation
validation <- createDataPartition(as$Model,p=0.80,list=FALSE)
validation20 <- as[-validation,]


# visualize Datasety 
x <- as[,1:5]
View(x)
y <- as[,6]
View(y)

# univariate plots
boxplot(x[,1],main=names(as)[1])
library(caret)

par(mfrow=c(1:3))
for (i in 1:3) {
  boxplot(x[,i],main=names(as)[i])
}
library(caret)
plot(y)

#multivariate plot
#scater plot
library(caret)
featurePlot(x=x,y=y)
install.packages("ellipse")
library(ellipse)
library(caret)
featurePlot(x=x,y=y,plot = "ellipse")