########### Desarrollo Estadistico Opcional##################
########### Pregunta 1 ########################################

Data<-read_excel("Big_Data_Opcional/246544_Data_Nomofobia.xlsx")
summary(Data)
par(mfcol=c(2,4))
hist(Data$Nomofobia)
hist(Data$Ansiedad)
hist(Data$Estr�s)
hist(Data$Compulsividad)
hist(Data$`Habilidades blandas`)
hist(Data$`Resoluci�n de conflictos`)
hist(Data$Edad)
scatterplotMatrix(Data[-8])
cor(Data[-8])

par(mfcol=c(2,4))
boxplot(Data$Nomofobia)
boxplot(Data$Ansiedad)
boxplot(Data$Estr�s)
boxplot(Data$Compulsividad)
boxplot(Data$`Habilidades blandas`)
boxplot(Data$`Resoluci�n de conflictos`)
boxplot(Data$Edad)
levels(Data$G�nero)
boxplot(Data$Nomofobia~Data$G�nero)
########### Pregunta 2 ########################################
library(moments)
skewness(Data[-8])
kurtosis(Data[-8])
par(mfcol=c(2,4))
qqnorm(Data$Nomofobia)
qqnorm(Data$Ansiedad)
qqnorm(Data$Estr�s)
qqnorm(Data$Compulsividad)
qqnorm(Data$`Habilidades blandas`)
qqnorm(Data$`Resoluci�n de conflictos`)
qqnorm(Data$Edad)

########### Pregunta 3 ######################################## 

RegresionCompleta<-lm(Data$Nomofobia~Data$Ansiedad+Data$Compulsividad+Data$Estr�s+Data$`Habilidades blandas`+Data$`Resoluci�n de conflictos`+Data$`Tiempo de uso del celular`+Data$G�nero+Data$Edad)
RegresionCompleta

########### Pregunta 4 ######################################## 
ANOVA1<-aov(Data$Nomofobia~Data$Ansiedad+Data$Compulsividad+Data$Estr�s+Data$`Habilidades blandas`+Data$`Resoluci�n de conflictos`+Data$`Tiempo de uso del celular`+Data$G�nero+Data$Edad)
summary(ANOVA1)