#packages
install.packages("dummy")
install.packages("dendextend")
install.packages("gridExtra")
install.packages("cluster")
install.packages("factoextra")
install.packages("MASS")
install.packages("fpc")

#Run the library
library("dummy")
library("dendextend")
library("gridExtra")
library("cluster")
library("factoextra")
library("MASS")
library("fpc")


#data upload
setwd("E:/Retail Analytics/30 Nov 2022")
data1<-read.csv("revloan.csv")


#Hierarchical Clustering 

d<-dist(data1, method = "euclidean")

fit <- hclust(d, method="ward.D2")

fit <- as.dendrogram(fit)

plot(fit)

cd = color_branches(fit) #Coloured dendrogram branches
plot(cd)

abline(h = 10, col = 'red')
abline(h = 7, col = 'brown')
abline(h = 6.2, col = 'blue')
abline(h =4 , col = 'green')
abline(h = 2, col = 'orange')

# c 
groups <- cutree(fit, k=3)
table(groups)
g1 = aggregate(data1,list(groups),median)
g1
data.frame(Cluster=g1[,1],Freq=as.vector(table(groups)),g1[,-1])
#d
SampleSize = as.integer(0.95 * nrow(data1))
SampleSize
sample1 = data1[sample(1:nrow(data1), SampleSize,replace=FALSE),]
sample1

dist.1 = dist(sample1[,1:10], method = "euclidean") 
fit.1 <- hclust(dist.1, method="ward.D2")
fit.1 <- as.dendrogram(fit.1)
cd = color_branches(fit.1,k=3) #Coloured dendrogram branches
plot(cd)
sample2 = data1[sample(1:nrow(data1), SampleSize,replace=FALSE),]
sample2

dist.2 = dist(sample2[,1:10], method = "euclidean") 
fit.2 <- hclust(dist.2, method="ward.D2")
fit.2 <- as.dendrogram(fit.2)
cd = color_branches(fit.2,k=3) #Coloured dendrogram branches
plot(cd)
#e
km.3 <- eclust(data1, "kmeans", k = 3, nstart = 25, graph = TRUE)
km.4 <- eclust(data1, "kmeans", k = 4, nstart = 25, graph = TRUE)
km.5 <- eclust(data1, "kmeans", k = 5, nstart = 25, graph = TRUE)
km.6 <- eclust(data1, "kmeans", k = 7, nstart = 25, graph = TRUE)

#non hierarchical clustering- K means clustering

set.seed(410014)

fviz_nbclust(data1, FUN = hcut, method = "wss")
fviz_nbclust(data1, FUN = hcut, method = "silhouette")
gap_stat <- clusGap(data1, FUN = hcut, nstart = 25, K.max = 10, B = 50)
fviz_gap_stat(gap_stat)

k1<-kmeans(data1, 4, iter.max=100, nstart=50 )
k1$centers
write.csv(k1$centers, "k4_cluster.csv")

k2<-kmeans(data1, 7, iter.max=100, nstart=50 )
k2$centers
