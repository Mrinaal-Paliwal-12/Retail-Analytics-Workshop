setwd("C:/Users/T2910/Desktop/Desktop/MCA 201-23/TRIM 5/Retail Analytics/14 Nov 2022")
data1 <-read.csv("supermarket.csv")
variable.names(data1)
model1 <-lm(Sales~Price.Eggs+Price.Cookies,data=data1)
summary(model1)

library(car)
vif(model1)

#linear regression model with the dummy variable
model2 <-lm(Sales~Price.Eggs+Price.Cookies+Ad.Type,data=data1)
model2 <-lm(Sales~.,data=data1)
summary(model2)

library(car)
vif(model2)
