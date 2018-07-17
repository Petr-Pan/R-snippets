#Confirmatory factor analysis
library(sem)
#Here we have two factors, each loaded by different variables
mod1.data<-specifyModel()
F1->var1, b1, NA
F2->var2, b2, NA
F2->var3, b3, NA
F1->var4, b4, NA
F2->var5, b5, NA
F2->var6, b6, NA
F2->var7, b7, NA
F2->var8, b8, NA
F2->var9, b9, NA
F1->var10, b10, NA
F1->var11, b11, NA
F1->var12, b12, NA
F1->var13, b13, NA
F2->var14, b14, NA
F1->var15, b15, NA
F1->var16, b16, NA
F1->var17, b17, NA
F1->var18, b18, NA
F1->var19, b19, NA
F1->var20, b20, NA
F1->var21, b21, NA
F2<->F2, NA, 1
F1<->F1, NA, 1
#Allow correlation between factors
#F1<->F2, c1, NA


mod.data

data.fit<-sem(mod.data, data.c,nrow(data))


#Basic model analysis
summary(data.fit)

stdCoef(data.fit)

#Add desired fit indices
data.summary<-summary(data.fit, fit.indices=c("GFI", "AGFI", "RMSEA", "NFI", "NNFI", "CFI", "RNI", "IFI", "SRMR", "AIC", "AICc", "BIC", "CAIC"))

data.summary

#Possible empiric improvements to model fit
modIndices(data.fit) 