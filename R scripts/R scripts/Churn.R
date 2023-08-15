setwd("E:/Retail Analytics")

data1 <- read.csv("Customer-Churn.csv")
gender_dummy_female <- ifelse(data1$gender=="Female",1,0)
Partner_dummy_Yes <- ifelse(data1$Partner=="Yes",1,0)
Dependents_dummy_Yes <- ifelse(data1$Dependents=="Yes",1,0)



library(fastDummies)
data2<-data.frame(data1)
fastDummies::dummy_cols(gender, )

data3<-read.csv("dummy.csv")
data4<-data.frame(data3)
model1<-fastDummies::dummy_cols(data4)
write.csv(model1,"data5.csv")

data6<-read.csv("data5.csv")
variable.names(data6)
model2<-glm(Churn_Yes~., data=data6)
summary(model2)
