setwd("E:/retail analytics")

data1<-read.csv("Insurance data.csv")

#package (Party)

library(party)

variable.names(data1)

$ordered function only for qualitative variables

data1$Age.Band<-ordered(data1$Age.Band)
data1$Gender<-ordered(data1$Gender)
data1$Married<-ordered(data1$Married)
data1$Premium.payment<-ordered(data1$Premium.payment)

model_chaid<-ctree(Premium.payment ~Age.Band+ Gender+Married+
                     Years.of.Driving.Experience+
                     Number.of.Vehicles,
                   data=data1)
plot(model_chaid)


model_chaid_1<-ctree(Premium.payment ~Age.Band+Married+
                     Years.of.Driving.Experience+
                     Number.of.Vehicles,
                   data=data1)
plot(model_chaid_1)


# CART Analysis

# package rpart & rpart.plot

library(rpart)
library(rpart.plot)

model_cart<-rpart(Losses ~ Married + Vehicle.Age
                  +Age.Band + Number.of.Vehicles, data=data1, 
                  method='anova')
rpart.plot(model_cart, type=5, digits=5, 
           fallen.leaves = TRUE)
