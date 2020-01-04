# Big_Data_Opcional
Pregunta 1: Analisis de los Datos
Se utilizo el comando summary(Data) para la visualizacion de la media, mediana y percentiles correspondientes a cada variable incluyendo las variable dependiente.
Ademas se utilizo cor(Data[-8]) para visualizar las covarianzas de las variables numericas.

Pregunta 2: Analisis de Normalidad, Kurtosis y Asimetria
Se utilizaron los comandos Kurtosis(Data[-8]) y Skewness(Data[-8]) ademas de los histogramas antes ya usados. Ademas se utiliza el comando qqnorm para visualizar los graficos de normalidad de las variables, donde entre mas parecido a una linea diagonal, mas normales se comportan, casi todas cumplen este requisito, excepto las variables "Habilidades Blandas" y "Resolucion de Conflicto"

Pregunta 3: Creando la Regresion Simple
Se utilizo el paquete StadisticalModeling y se realizo la regresion con el comando lm de todas las variables de la base de datos llamada Data.

Pregunta4: 
Coefficients:
                     (Intercept)                     Data$Ansiedad  
                        -0.68391                           0.01860  
              Data$Compulsividad                       Data$Estrés  
                         0.24266                           0.17216  
      Data$`Habilidades blandas`   Data$`Resolución de conflictos`  
                         0.03117                          -0.03944  
Data$`Tiempo de uso del celular`                  Data$GéneroMujer  
                         0.57086                           1.81707  
                       Data$Edad  
                        -0.12678  
  Tomando en cuenta los coheficientes, el unico que no tienen una logica es "habilidades Blandas" ya que al poseer una persona mas habilidades blandas o comunicacionales deberia ser capaz de afrontar de mejor manera la perdida de su celular, es decir el coheficiente deberia ser negativo, cosa que ocurre con la "Resolucion de Conflictos" su coheficiente negativo indica que le permite sobrellevar esta situacion de mejor manera.
  Variables como Compulsividad, Ansiedad, Estres, y tiempo en el celular son evidentemente positivas, es decir un aumento en ellas provoca un aumento en la Nomofobia. Tambien es importante visualizar la intensidad de dichos coheficientes, siendo el mas grande el "Tiempo en el celular" seguido por la Compulsividad, la logica indicaria que la ansiedad deberia jugar un factor importante en la Nomofobia.
  
Pregunta 5: Analisis Anova

                                 Df Sum Sq Mean Sq F value   Pr(>F)    
Data$Ansiedad                      1   1813    1813   3.894 0.050756 .  
Data$Compulsividad                 1   9368    9368  20.127 1.67e-05 ***
Data$Estrés                        1   6699    6699  14.392 0.000234 ***
Data$`Habilidades blandas`         1    421     421   0.905 0.343372    
Data$`Resolución de conflictos`    1      1       1   0.003 0.956904    
Data$`Tiempo de uso del celular`   1  23935   23935  51.423 6.63e-11 ***
Data$Género                        1    106     106   0.227 0.634662    
Data$Edad                          1     17      17   0.036 0.849150    
Residuals                        120  55855     465                     
---
Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
En este analisis solo son significantes la compulsividad, el estres y el tiempo de uso del celular, por otro lado la ansiedad esta ligeramente fuera del rango sin embargo posee una significancia aceptable.