setwd("E:/Retail Analytics")

data1 <- read.csv("supermarket.csv")
View(data1)
variable.names(data1)
model1 <- lm(Sales ~ Price.Eggs+Price.Cookies,data=data1  )
summary(model1)
library(car)
vif(model1)

model2 <- lm(Sales ~ Price.Eggs+Price.Cookies+Ad.Type,data=data1 )

model2 <- lm(Sales ~.,data=data1)
summary(model2)
