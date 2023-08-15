data1<-read.csv("supermarketData2.csv")
View(data1)
variable.names(data1)
model1<-lm(Sales ~ Price.Eggs + Price.Cookies , data = data1)
summary(model1)
library(car)
vif(model1)

#Linear Regression Model with dummy variable
model2<-lm(Sales ~ . , data = data1)
summary(model2)
vif(model2)
