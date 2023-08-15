setwd("E:/Retail Analytics")
data1 <-read.csv("Customer-Churn.csv")
head(data1)

variable.names(data1)

#creating dummy for gender
gender_dummy_female<-ifelse(data1$gender=="Female",1,0)
#creating dummy for Partner
partner_dummy_yes<-ifelse(data1$Partner=="Yes",1,0)
#creating dummy for Dependents
dependent_dummy_yes<-ifelse(data1$Dependents=="Yes",1,0)
#creating dummy for PhoneService
dependent_dummy_yes<-ifelse(data1$PhoneService=="Yes",1,0)

library(fastDummies)

data2<-read.csv("dummy.csv")
data3<-data.frame(data2)
model1<-fastDummies::dummy_cols(data3)
write.csv(model1,"data5.csv")

data6<-read.csv("data5.csv")
variable.names(data6)
#glm-generalized linear model
model2<-glm(Churn_Yes~.,data=data6)
summary(model2)

model3<-glm(Churn_Yes~MultipleLines_No +Contract_Month.to.month+Contract_One.year+PaperlessBilling_Yes+PaymentMethod_Electronic.check+SeniorCitizen +tenure+TotalCharges,data=data6,family = binomial)
summary(model3)
