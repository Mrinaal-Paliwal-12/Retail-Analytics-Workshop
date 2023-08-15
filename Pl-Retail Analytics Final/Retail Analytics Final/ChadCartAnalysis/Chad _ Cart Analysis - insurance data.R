setwd("D:/MCA/SY MCA/Trim 5/RA/Practice/Chad & Chart Analysis")
getwd()

data1 = read.csv("insurance data.csv")
View(data1)
variable.names(data1)

#install package party
install.packages("party")

library(party)

#creating qualitative variables using ordered function for Age,Gender,Married,Premium.payment
data1$Age.Band<-ordered(data1$Age.Band)
data1$Gender<-ordered(data1$Gender)
data1$Married<-ordered(data1$Married)
data1$Premium.payment<-ordered(data1$Premium.payment)
head(data1)
tail(data1)

model_chaid<-ctree(Premium.payment~Age.Band+Gender+
                     Married+
                     Years.of.Driving.Experience+
                     Number.of.Vehicles,
                   data=data1)

plot(model_chaid)


model_chaid1<-ctree(Premium.payment~Age.Band+
                      Married+
                      Years.of.Driving.Experience+
                      Number.of.Vehicles,
                    data=data1)

plot(model_chaid1)



#CART Analysis
install.packages("rpart")
install.packages("rpart.plot")
library(rpart)
library(rpart.plot)
data2<-read.csv('insurance data.csv')
model_cart<-rpart(Losses~Married+
                    Vehicle.Age+
                    Age.Band+
                    Number.of.Vehicles,data=data1,method='anova')

rpart.plot(model_cart,type=4,digits=5,fallen.leaves = TRUE)

#type 5
rpart.plot(model_cart,type=5,digits=5,fallen.leaves = TRUE)


