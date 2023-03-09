setwd("~/economia/evaluacion de impacto/econometria con r")

#definiendo objeto
# LA BASE DE DATOS AL ESTAR EN EL DIRECTORIO DE TRABAJO R STUDIO LA RECONOCE

base_salarios = read.csv("base_salarios.csv", header=TRUE)

View(base_salarios) #PARA OBSERVAR LA BASE DE DATOS

#DESCRIPCION ESTADISTICA
summary(base_salarios$y)
summary(base_salarios$kwit)
summary(base_salarios) 

#desviacion estandar

sd(base_salarios$y) # Que tanto s ealejan las muestras de la media

# hisotgrama 

hist(base_salarios$y) # sive para ver la frecuecncia de los valores

#grafico de correlacion
plot(base_salarios$y, base_salarios$tenure)


#estiimacion del modelo lineal simple 
#en R la estimacion queda guardad como un onjeto

MCO = lm(y ~ 1 + sex, data = base_salarios) # se establece la variable dependiente, independiente punto de intercepcion y la base de datos
#resultados de la estimacion

summary(MCO)


# EL INTERCEPTO ES EL VALOR DE LA VARIABLE INDEPENDIENTE CUANDO CUANDO LA VARIABLE DEPENIENTE ES 0
#en este caso s epuede interpretar como e salario promedio de los hombre

