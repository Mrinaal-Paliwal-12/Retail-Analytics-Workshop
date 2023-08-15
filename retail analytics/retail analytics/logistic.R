setwd("E:/retail analytics")

data1<-read.csv("Customer_churn.csv")

library(fastDummies)



data3<-read.csv("dummy.csv")

data4<-data.frame(data3)

model1<-fastDummies::dummy_cols(data4)

write.csv(model1, "data5.csv")

data6<-read.csv("data5.csv")

variable.names(data6)

model2<-glm(Churn_Yes~., data=data6)

summary(model2)

model3<-glm(Churn_Yes ~ MultipleLines_No + 
              Contract_Month.to.month +Contract_One.year 
            +PaperlessBilling_Yes+ 
              PaymentMethod_Electronic.check +
              SeniorCitizen  + tenure +
              TotalCharges, data=data6, family=binomial)
summary(model3)

