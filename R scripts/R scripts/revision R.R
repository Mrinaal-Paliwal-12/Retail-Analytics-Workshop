data1<-read.csv("credit card data - credit card data.csv")


data1$Education_dummy1<-ifelse(data1$Education ==1,1,0)
data1$Education_dummy2<-ifelse(data1$Education==2,1,0)


variable.names(data1)
model3<-glm(Personal.Loan ~ Age +Experience +Income + Family + CCAvg +Education_dummy1+ Education_dummy2, data=data1, family = binomial )
summary(model3)


model4<-glm(Personal.Loan ~ Income + Family + CCAvg +Education_dummy1, data=data1, family = binomial )
summary(model4)


write.csv(data1,"data2.csv")
