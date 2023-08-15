setwd("E:/RetailAnalytics")
getwd()


data1 = read.csv("supermarket (2).csv")
data1

variable.names(data1)

model1 = lm(Sales ~ Price.Eggs + Price.Cookies, data=data1)

summary(model1)

library(car)

vif(model1)

#model2 = lm(Sales ~ Price.Eggs + Price.Cookies + Ad.Type, data=data1)
model2 = lm(Sales ~ ., data=data1)
summary(model2)

#Logistic Reg on carseats dataset

data2 = read.csv("Carseats.csv")
data2

variable.names(data2)

#data2$Urban_yes<-ifelse(data2$Urban=="Yes",1,0)
data2$US_yes<-ifelse(data2$US=="Yes",1,0)


model3 = glm(US_yes ~ Income +  Education , data=data2, family = binomial)
summary(model3)


model4 = glm(US_yes ~  Sales +  Education , data=data2, family = binomial)
summary(model4)





