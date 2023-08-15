setwd("E:/Retail Analytics")
#Logistic Regression

data2=read.csv("Carseats.csv")
#data2$Urban_yes <-ifelse(data2$Urban =="Yes",1,0)
data2$US_yes <-ifelse(data2$US =="Yes",1,0)
variable.names(data2)
model2 <-glm(US_yes ~ Sales+Income+Education,data=data2,family=binomial )
summary(model2)
model3<-glm(US_yes ~ Sales+Education,data=data2,family=binomial )
summary(model3)
library(car)
vif(model3)
