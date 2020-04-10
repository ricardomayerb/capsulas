# Ejemplo de muestreo aleatorio simple similar al de la Univ St Andrews del cap 7

# Necesitamos una población para tener valores poblacionales

# generemos un vector con 648 si y 900-648 no, para imitiar las respuestas
#  del ejemplo a la pregunta quieren vivir en el campus
# usemos la funcion rep y concatenar
# ejemplo sencillo>

pregunta_habitacion <- c( rep("si", 648), rep("no", 900-648) )

puntajes <- c(rep(1000, 100), rep(900, 200), rep(850, 300), 
              rep(800, 200), rep(700, 100))

# ejemplo para contar casos
v3 <-  c(3,4,5,6,7,7,2,9)
v3 == 7
sum(v3==7)
sum(v3==7)/8
mean(v3==7)

# calculen la media poblacional de los puntajes 
# y la propocion de casos "si" en la poblacion
media_poblacional <- mean(puntajes)
sum(pregunta_habitacion == "si")/900
proporcion_poblacional <- mean(pregunta_habitacion == "si")
media_poblacional
proporcion_poblacional
sd_poblacional <- sd(puntajes)
sd_poblacional # en el libro es 80, aqui es 78.2 porque son otros puntajes

# obtengan una muestra aleatoria de 30 puntajes usando sample
# cada vez que ejecuten sample tendran una muestra distinta y por lo tanto medias distintas
muestra_de_puntajes <- sample(x = puntajes, size = 30)
muestra_de_puntajes  
promedio_muestral <- mean(muestra_de_puntajes)  
# calculen la desviacion estandar muestral (sd) de los ptjes y la guardan en una variable
sd_muestral <- sd(muestra_de_puntajes)  
sd_muestral

# obtengan una muestra aleatoria de 30 respuestas habitacion usando sample
#  y calculen la proporcion muestral
muestra_de_respuestas <- sample(x = pregunta_habitacion, size = 30)
proporcion_muestral <- mean(muestra_de_respuestas == "si")
proporcion_muestral

numero_de_muestras <- 100000
vector_de_medias <- vector(mode = "numeric", length = numero_de_muestras)
# vector_de_medias
vector_de_desv <- vector(mode = "numeric", length = numero_de_muestras)
vector_de_prop <- vector(mode = "numeric", length = numero_de_muestras)

for (k in 1:numero_de_muestras) {
  esta_muestra <- sample(puntajes, size = 30) 
  esta_muestra_de_resp <- sample(pregunta_habitacion, size = 30) 
  
  esta_media_muestral <- mean(esta_muestra)
  esta_sd_muestral <- sd(esta_muestra)
  esta_prop_muestral <- mean(esta_muestra_de_resp == "si")
  
  vector_de_medias[k] <- esta_media_muestral
  vector_de_desv[k] <- esta_sd_muestral
  vector_de_prop[k] <- esta_prop_muestral
}


hist(vector_de_medias, breaks = 100)
abline(v = media_poblacional, col = "red", lwd=2)
mean(vector_de_medias)
sd(vector_de_medias)

hist(vector_de_desv, breaks = 70)
abline(v = sd_poblacional, col = "red", lwd=2)
mean(vector_de_desv)
sd(vector_de_medias)

hist(vector_de_prop, breaks = 100)
abline(v = proporcion_poblacional, col = "red", lwd=2)
mean(vector_de_prop)
sd(vector_de_medias)
