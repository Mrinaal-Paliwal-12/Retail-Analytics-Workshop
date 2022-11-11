data1<-read.csv("walmart.csv")
head(data1)
variable.names(data1)
model1<-lm(Sales ~ Promotion.Index+Walmart + FeatureAdvertising.Index + Holiday , data = data1)
summary(model1)

library(car)
vif(model1)
