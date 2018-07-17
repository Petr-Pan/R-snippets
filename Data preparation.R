rawdata<-read.table("Fact.txt",header=TRUE)
#Remove unneeded variables
data <- subset(rawdata, select = -c(var1, var2, var3, var4) )


#If random data split needed
#Replace 306 with N
odd_indexes<-seq(1,306,2)
even_indexes<-seq(2,306,2)
#Pro rozdělení vzorku
#data<-data[c(odd_indexes),]
#data<-data[c(even_indexes),]
#data<-data[c(odd_indexes),]
#data<-data[c(even_indexes),]


#Preparation for both EFA and CFA
data.c<-cov(na.omit(data[,]))
data.k<-cor(na.omit(data))