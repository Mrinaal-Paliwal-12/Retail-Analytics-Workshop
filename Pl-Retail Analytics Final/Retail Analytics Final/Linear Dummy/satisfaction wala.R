data1<-read.csv("C:/Users/T2910/Desktop/Desktop/MCA 201-23/TRIM 5/Retail Analytics/satisfaction.csv")
head(data1)
model1<-lm(Satisfaction ~price+service+convenience, data=data1)




data1$Age_dummy1<-ifelse(data1$Age==1,1,0)
data1$Age_dummy2<-ifelse(data1$Age==2,1,0)

model2<-lm(Satisfaction~price+service+convenience+Age_dummy1 +Age_dummy2, data=data1)
summary(model2)


View(data1)
