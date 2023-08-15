setwd("E:/Retail Analytics")
#Market Basket Analysis

data1<-read.csv("Retail_Data.csv")
head(data1)

p1 = data1$Prod1

p1.freq = table(p1)
p1.freq

p1.rel.freq = p1.freq/nrow(data1)
p1.rel.freq

p2 = data1$Prod2

p2.freq = table(p2)
p2.freq

p2.rel.freq = p2.freq/nrow(data1)
p2.rel.freq

p3 = data1$Prod3

p3.freq = table(p3)
p3.freq

p3.rel.freq = p3.freq/nrow(data1)
p3.rel.freq

#install arules 

library(arules)


#sample

data2<-data1[1:5000,]

#factrization of variables to get all the combinations 

#to make the pairs
for(i in 1:col(data2)){data2[,i]=as.factor(data2[,i])}

basket_rules <-apriori(data2,parameter = list(sup=0.005, conf=0.01, target='rules',
                                              minlen=2, maxlen=3))
summary(basket_rules)


inspect(basket_rules)

inspect(head(sort(basket_rules,by='lift'),20))

library(arulesViz)

plot(basket_rules, method='grouped', control = list(k=5))
