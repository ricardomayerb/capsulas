# un for loop  (o un bucle for, como dirían los españoles)
# es una forma de ejecutar unas líneas de código la candtidad de 
# veces que uno desee
# 
# Veamos un ejemplo sencillo: imprimir los números 1,2,3,4 y 5
#  típicamente en R escribiríamos
# 

for (i in 1:5) {
  print(i)
}

# el vector no tiene por qué partir desde uno
for (i in 3:5) {
  print(i)
}

# puede ser un vector arbitrario
for (i in c(1, 1.4, 3.14, 666)) {
  print(i)
}

# ni siquiera tienen que ser números, pueden ser caracteres
for (i in c("si", "ella", "no", "quiere", "bailar", "respeta")) {
  print(i)
}

# o pueden ser valores lógicos
for (i in c(FALSE, FALSE, TRUE, FALSE)) {
  print(i)
}

# da lo mismo si el nombre del índice es i, j, k o lo que quieran
for (Lupe in 1:5) {
  print(Lupe)
}

# el índice puede usarse como cualquier número, texto o valor lógico
for (j in 1:5) {
  print(j*2 + 3)
}

# pero uno de los usos más comunes, es usar el índice para extraer
# o llenar partes de un objeto, por ejemplo de un vector
cubos <- c(0, 0, 0, 0, 0)
cubos
for (i in 1:5) {
  cubos[i] <- i*i*i
}

cubos

lista_de_histogramas <- list(hist(rnorm(100), plot = FALSE), 
                         hist(rnorm(100, mean = -2), plot = FALSE), 
                         hist(rnorm(100, sd = 3), plot = FALSE)
                        )

for (i in 1:3) {
  casos <- lista_de_histogramas[[i]]$counts
  plot(lista_de_histogramas[[i]])
  print(casos) 
}

