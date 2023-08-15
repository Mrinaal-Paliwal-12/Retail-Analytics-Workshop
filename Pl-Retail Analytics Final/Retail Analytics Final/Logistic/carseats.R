setwd("C:/Users/T2910/Desktop/Desktop/MCA 201-23/TRIM 5/Retail Analytics/16 Nov 2022")
data1 <-read.csv("carseats.csv")
variable.names(data1)
#Logistic Regression
#Us_yes->dependent variable
#creating the dummy variables for US
data1$US_yes<-ifelse(data1$US=="Yes",1,0)
model1<-glm(US_yes~Sales+Income+Education,data=data1,family = binomial)
summary(model1)

model2<-glm(US_yes~Sales+Education,data=data1,family = binomial)
summary(model2)
