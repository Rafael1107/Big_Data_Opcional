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

########### Pregunta 5 ######################################## 
ANOVA1<-aov(Data$Nomofobia~Data$Ansiedad+Data$Compulsividad+Data$Estrés+Data$`Habilidades blandas`+Data$`Resolución de conflictos`+Data$`Tiempo de uso del celular`+Data$Género+Data$Edad)
summary(ANOVA1)

########### Pregunta 6 ######################################## 
hist(Data$Nomofobia)
boxplot(Data$Ansiedad)
barchart(Data$Género)

########### Pregunta 7 ######################################## 
par(mfcol=c(2,4))
boxplot(Data$Nomofobia,main= "Nomofobia",col= "red")
boxplot(Data$Ansiedad,main= "Ansiedad",col= "blue")
boxplot(Data$Estrés,main= "Estres",col= "yellow")
boxplot(Data$Compulsividad,main= "Compulsividad",col= "green")
boxplot(Data$`Habilidades blandas`,main= "Habilidades Blandas",col= "purple",pch= 8)
boxplot(Data$`Resolución de conflictos`,main= "Resolucion de Conflictos",col= "orange")
boxplot(Data$Edad,main= "Edad",col= "gray")
levels(Data$Género)
boxplot(Data$Nomofobia~Data$Género,main= "Genero",col="pink")

########### Pregunta 8 ######################################## 
DataFinal<-Data[c(-5,-11,-106),]
DataFinal_Sin_Negativosa<-DataFinal[c(-46,-41,-126,-31),]