setwd("C:/Users/T2910/Desktop/Desktop/MCA 201-23/TRIM 5/Retail Analytics/21 Nov 2022")
data1 <-read.csv("Retail_Data.csv")
head(data1)
P1=data1$Prod1
P1.freq=table(P1)
P1.freq
P1.rel.freq=P1.freq/nrow(data1)
P1.rel.freq

P2=data1$Prod2
P2.freq=table(P2)
P2.freq
P2.rel.freq=P2.freq/nrow(data1)
P2.rel.freq

P3=data1$Prod3
P3.freq=table(P3)
P3.freq
P3.rel.freq=P3.freq/nrow(data1)
P3.rel.freq

#install package arules
library(arules)

#sample
data2<-data1[1:5000,]

#Factorization of vairables to get all the combinations
for(i in 1:col(data2)){data2[,i]=as.factor(data2[,i])}

basket_rules<-apriori(data2,parameter = list(sup=0.005,conf=0.01,target='rules',minlen=2,maxlen=3))
summary(basket_rules)
inspect(basket_rules)
inspect(head(sort(basket_rules,by='lift'),20))

#install package arules
library(arulesViz)
plot(basket_rules, method='grouped', control = list(k=5))

