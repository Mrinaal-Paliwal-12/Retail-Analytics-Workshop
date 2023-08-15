data<-read.csv("Insurance data.csv")

#package (party)
library(party)

$ ordered function only for qualitative variables
variable.names(data)
data$Age.Band<-ordered(data$Age.Band)
data$Gender<-ordered(data$Gender)
data$Married<-ordered(data$Married)
data$Premium.payment<-ordered(data$Premium.payment)


model_chaid<-ctree(Premium.payment ~Age.Band+Married+Years.of.Driving.Experience+
                     Number.of.Vehicles, data=data)
plot(model_chaid)

#CART Analysis
#package rpart & rpart.plot

library(rpart)
library(rpart.plot)

model_cart<-rpart(Losses ~ Married + Vehicle.Age + Age.Band + Number.of.Vehicles,
                  data=data, method='anova')
rpart.plot(model_cart, type=5, digits=5, fallen.leaves = TRUE)
