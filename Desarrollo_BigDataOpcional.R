########### Desarrollo Estadistico Opcional##################
########### Pregunta 1 ########################################

Data<-read_excel("Big_Data_Opcional/246544_Data_Nomofobia.xlsx")
summary(Data)
par(mfcol=c(2,4))
hist(Data$Nomofobia)
hist(Data$Ansiedad)
hist(Data$Estrés)
hist(Data$Compulsividad)
hist(Data$`Habilidades blandas`)
hist(Data$`Resolución de conflictos`)
hist(Data$Edad)
scatterplotMatrix(Data[-8])
cor(Data[-8])

par(mfcol=c(2,4))
boxplot(Data$Nomofobia)
boxplot(Data$Ansiedad)
boxplot(Data$Estrés)
boxplot(Data$Compulsividad)
boxplot(Data$`Habilidades blandas`)
boxplot(Data$`Resolución de conflictos`)
boxplot(Data$Edad)
levels(Data$Género)
boxplot(Data$Nomofobia~Data$Género)
########### Pregunta 2 ########################################
library(moments)
skewness(Data[-8])
kurtosis(Data[-8])
par(mfcol=c(2,4))
qqnorm(Data$Nomofobia)
qqnorm(Data$Ansiedad)
qqnorm(Data$Estrés)
qqnorm(Data$Compulsividad)
qqnorm(Data$`Habilidades blandas`)
qqnorm(Data$`Resolución de conflictos`)
qqnorm(Data$Edad)

########### Pregunta 3 ######################################## 

RegresionCompleta<-lm(Data$Nomofobia~Data$Ansiedad+Data$Compulsividad+Data$Estrés+Data$`Habilidades blandas`+Data$`Resolución de conflictos`+Data$`Tiempo de uso del celular`+Data$Género+Data$Edad)
RegresionCompleta

########### Pregunta 4 ######################################## 
ANOVA1<-aov(Data$Nomofobia~Data$Ansiedad+Data$Compulsividad+Data$Estrés+Data$`Habilidades blandas`+Data$`Resolución de conflictos`+Data$`Tiempo de uso del celular`+Data$Género+Data$Edad)
summary(ANOVA1)
