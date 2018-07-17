#Exploratory factor analysis
efa.data<-princomp(na.omit(data[,]),cor=T)

summary(efa.data)
loadings(efa.data)

plot(efa.data, type="lines")


library(GPArotation)

efarot.data<-principal(data[,], nfactors=2,rotate="oblimin")
efarot.data

a<-print(efarot.data$loadings)

library(nFactors)
ev <- eigen(cor(na.omit(data))) # get eigenvalues
ap <- parallel(subject=nrow(data),var=ncol(data), rep=100, cent=.05)
nS <- nScree(x=ev$values, aparallel=ap$eigen$qevpea)
plotnScree(nS)
