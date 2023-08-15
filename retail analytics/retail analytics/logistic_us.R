setwd("E:/retail analytics")
data1<-read.csv("supermarket (2).csv")

variable.names(data1)

model1<-lm(Sales~Price.Eggs + Price.Cookies, data=data1)
summary(model1)
library(car)

vif(model1)

#linear regression model with the dummy variable

model2<-lm(Sales~Price.Eggs + Price.Cookies + Ad.Type , data=data1)

model2<-lm(Sales ~ ., data=data1)

summary(model2)



# Logistic regression

data2<-read.csv("Carseats.csv")
data2$Urban_yes<-ifelse(data2$Urban == "Yes",1,0)


data2$US_yes<-ifelse(data2$US == "Yes",1,0)

variable.names(data2)

model3<-glm(US_yes ~  Sales + Income + Education, data=data2, family=binomial)
summary(model3)

model4<-glm(US_yes ~  Sales + Education, data=data2, family=binomial)
summary(model4)
 # multicolinearity
library(car)

vif(model4)

