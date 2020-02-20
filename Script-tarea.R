# Jennifer Janeth Lerma Treviño 
# 1871909
# 20-02-2020


# Ejercicio 1 -------------------------------------

library(plyr)
accidentes <- c(0,1,0,2,2,1,4,3,0,1,5,1,2,3,4,0,1,1,3,4)
acc <- count(accidentes)
acc

(acc$freq/sum(acc$freq)*100)
acc$rf <- acc$freq/sum(acc$freq)*100 
barplot(acc$freq, names.arg = acc$x, main =" Accidentes en el aserradero", col= "green")

mean(accidentes)
sum(accidentes)
boxplot(accidentes)

#¿ Cual es el numero de accidentes al mes?
mean(accidentes)

#¿ Que numero de accidentes reporta la mayor proporcion? 
# El 1 con el 30% 

# Ejercicio 2 -----------------------------------------------------
especies <- c("F", "H", "F", "C", "F", "A", "H", "F", 
              "H", "C", "A", "C", "F", "H", "H", "H", 
              "F", "H", "A", "C", "F", "H","H", "F")

esp <- count(especies)

esp 
esp$rf <- esp$freq/sum(esp$freq)*100
esp

barplot(esp$freq, names.arg = esp$x, main = "Cantidad de especies", col = "red")



#Ejercicio 3-----------------------------------------

library(repmis)
conjunto <- source_data("https://www.dropbox.com/s/hmsf07bbayxv6m3/cuadro1.csv?dl=1")

#Encontrar la frecuencia de las variables vecinos y especies 

.vc <- table(conjunto$Vecinos, conjunto$Especie)
addmargins(as.table(.vc))

barplot(table(conjunto$Vecinos, conjunto$Especie), main = " Cantidad de vecinos y especies", col = "pink")

#Ejercicio 4--------------------------------------------------------------------------

h <- conjunto$Altura
range(h)


intervalo <- seq(7.5, 22.5, by= 5)
intervalo

h.table <- cut(h, intervalo)
table(h.table)


par(mfrow=c(1,2))
hist(h, main = "Datos sin intervalos")
hist(conjunto$Altura, breaks = intervalo, main = "Datos sin intervalos", col = "blue")
par(mfrow= c(1,1))

# Ejercicio 5 
diametro <- conjunto$Diametro
range(diametro)
intervalo <- seq(7.5, 27.5, by=5)
intervalo

par(mfrow=c(1,2))
hist(conjunto$Diametro, col= "blue" , main = "sin modificar", xlab = "diametro")
hist(conjunto$Diametro, breaks = intervalo, col= "pink", main = "Datos intervalos")
par(mfrow=c(1,1))




