# Ejemplo de muestreo aleatorio simple similar al de la Univ St Andrews del cap 7

# Necesitamos una población para tener valores poblacionales

# generemos un vector con 648 si y 900-648 no, para imitiar las respuestas
#  del ejemplo a la pregunta quieren vivir en el campus
# usemos la funcion rep y concatenar
# ejemplo sencillo>
v1 <- rep("comparto", 3)
v2 <- rep("memes", 2)
c(v1, v2)
pregunta_habitacion <- c( rep("si", 648), rep("no", 900-648) )
pregunta_habitacion

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
de_poblacional <- sd(puntajes)
de_poblacional # en el libro es 80, aqui es 78.2 porque son otros puntajes




# funcion sample
vector_mula <- c(91,2,397,4,5.5)
sample(x =vector_mula , size = 1)

# obtengan una muestra aleatoria de 30 puntajes usando sample
# cada vez que ejecuten sample tendran una muestra distinta y por lo tanto medias distintas
muestra_de_puntajes <- sample(x = puntajes, size = 30)
muestra_de_puntajes  
promedio_muestral <- mean(muestra_de_puntajes)  
# calculen la desviacion estandar muestral (sd) de los ptjes y la guardan en una variable
de_muestral <- sd(muestra_de_puntajes)  
de_muestral
  
# obtengan una muestra aleatoria de 30 respuestas habitacion usando sample
#  y calculen la proporcion muestral
muestra_de_respuestas <- sample(x = pregunta_habitacion, size = 30)
proporcion_muestral <- mean(muestra_de_respuestas == "si")
proporcion_muestral



# Obtener una distribución empirica del promedio muestral, mediante el uso de loops
for (k in 1:5) {
  print(k)
}

numero_de_muestras <- 10000
vector_de_medias <- vector(mode = "numeric", length = numero_de_muestras)
# vector_de_medias
vector_de_desv <- vector(mode = "numeric", length = numero_de_muestras)
vector_de_prop <- vector(mode = "numeric", length = numero_de_muestras)

for (k in 1:numero_de_muestras) {
  esta_muestra <- sample(puntajes, size = 30) 
  esta_muestra_de_resp <- sample(pregunta_habitacion, size = 30) 
  
  esta_media_muestral <- mean(esta_muestra)
  esta_de_muestral <- sd(esta_muestra)
  esta_prop_muestral <- mean(esta_muestra_de_resp == "si")
    
  # print(esta_media_muestral)
  
  vector_de_medias[k] <- esta_media_muestral
  vector_de_desv[k] <- esta_de_muestral
  vector_de_prop[k] <- esta_prop_muestral
}

# vector_de_medias
# vector_de_desv


hist(vector_de_medias, breaks = 100)
plot(density(vector_de_medias))
mean(vector_de_medias)

hist(vector_de_desv, breaks = 70)
plot(density(vector_de_desv, bw = 2.5))
mean(vector_de_desv)

hist(vector_de_prop, breaks = 100)
plot(density(vector_de_prop, bw = 0.5))
mean(vector_de_prop)


# Cual es el valor esperado de x-barra en este ejemplo? "mu" pero que es mu?  
valor_esperado_x_barra <- media_poblacional  
desv_est_x_barra_de_pob_infinita <- de_poblacional/sqrt(30)
desv_est_x_barra_de_pob_finita <- (de_poblacional/sqrt(30)) * (sqrt((900-30)/(900-1)))
# comparar ambas
desv_est_x_barra_de_pob_infinita
desv_est_x_barra_de_pob_finita

# La conclusion es que como n>=30, podemos decir que la distribución x_barra es normal
# y no solo eso, si no que es una normal con media 850 y desv stand 14.28042 (o 14.0482)

# con eso se puede responder preguntas probalisticas respecto de x-barra
# por ejemplo la prob de que x_barra sea menor a 830, con mean = 850 y 
# sd=desv_est_x_barra_de_pob_infinita
pnorm(830, mean = media_poblacional, sd = desv_est_x_barra_de_pob_infinita)
pnorm(870, mean = media_poblacional, sd = desv_est_x_barra_de_pob_infinita)

pnorm(870, mean = media_poblacional, sd = desv_est_x_barra_de_pob_infinita) - pnorm(830, mean = media_poblacional, sd = desv_est_x_barra_de_pob_infinita)

pnorm((830-media_poblacional)/desv_est_x_barra_de_pob_infinita,
      mean = 0, sd =  1)

(830-media_poblacional)/desv_est_x_barra_de_pob_infinita
# sigma es de_poblacional
# n es 30
# N es 900
# sqrt() es raiz cuadrada


  
  
  



