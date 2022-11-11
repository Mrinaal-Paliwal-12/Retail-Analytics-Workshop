setwd("E:/mrinaal retail analytics")
data1<-read.csv("atm res.csv")
View(data1)
variable.names(data1)
model1<-lm(frequency.of.visit ~ shoping.when.bored + waste.of.time
           +wall.colour+ fragrance+emp.knowledge+layout.flooring+recommend
           + emp.concerned + layout.spacious+emp.trustworthy+layout.design.display
           + entertain + enthusiam+ moretime.spent + buy.more + design.good
           + light.dull + music.bothersome + emp.not.assist , data = data1)
summary(model1)

model2<-lm(frequency.of.visit ~ wall.colour + emp.knowledge
           +moretime.spent +music.bothersome, data = data1)
summary(model2)

model3<-lm(frequency.of.visit ~ wall.colour + emp.knowledge
           +moretime.spent, data = data1)
summary(model3)

library(car)
vif(model3)

