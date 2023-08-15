data2 = read.csv("CarseatsData.csv")
variable.names(data2)
data2$Urban_yes<-ifelse(data2$Urban=="Yes",1,0)
data2$US_yes<-ifelse(data2$US=="Yes",1,0)
model3 = glm(US_yes 
             ~Sales
             +Education
             ,data = data2
             ,family=binomial
)
summary(model3)

#Multi Collinearity
library(car)
vif(model3)
