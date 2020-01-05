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
              Data$Compulsividad                        Data$Estrés  
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

Pregunta 6:Generacion de Graficos
El histograma es de Nomofobiamuestra que la mayoria de los datos se encuentran al rededor de 20-30 y 40-50, lo cual no sigue una distribucion de campana. tiene una distribucion bastante equitativa a lo largo del valor, es decir la media no es un buen inidicador representativo de esta variable.
El Boxplot se realizo de la Variable Ansiedad, el cual se comporta bastante normal, una media de 50, percentil 75 de 75 y percentil 25 de 25, tambien los limites superior e inferior son el 100 y el 0 respectivamente.
El Barchart o grafico de barras se realizo con la variable Genero donde se evidencia que las cantidades de hombres y mujeres tomados en esta muestra son casi los mismos, hombres supera ligeramente a las mujeres.

Pregunta 7: Identificar Outliers.

Para esto hay que visualizar todos los Boxplot de todas las variables como se hizo en las preguntas anteriores. Realizando dichos graficos se pueden identificar que la unica variable con outliers es la variable "Habilidades Blandas", que se visualizan con un asterisco, segun los datos entregados, todas las variables deben ser valores entre el 1 y el 100.

Pregunta 8: Solucion a los Outliers
En este caso especifico, los outliers deben ser eliminados ya que al principio se especifico que los valores deben estar entre 1 y 100, la problematica cabe dentro de la idea que 200 y 350 son valores altos sin embargo no esta claro cual fue la metrica utilizada por parte de los encuestados con el objetivo de expresar intensidad, si esta metrica fuera en base a 1000, entonces dicho valor corresponderia a un numero como 30, o el caso contrario donde se buscaba evidenciar un valor mas alto al 100 intencionalmente. Por esta inexactitud es preferible eliminar dichas observaciones de la base de datos.
Curiosamente existen datos negativos dentro de las variables pero no son visualizadas a traves de los Boxplot, esto posiblemente porque no se encuentran tan alejados de la media como los datos mencionados en el parrafo anterior. Personalmente opino que deben ser eliminados de igual manera puesto que afectan los resultados y no cumplen con la condicion que se explicito anteriormente(Que los valores van desde el 1 hasta el 100).


