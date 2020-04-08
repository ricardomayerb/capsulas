# En R, tal como todas las funciones que generan numeros aleatorios empiezan con 
# con r de random numbers, todas las funciones que calculan densidades empiezan 
# con d de density y todas las que calculan probabilidades acumuladas empiezan
# con p de probability

#  Vamos a demostrar el cálculo de  probabilidad acumulada y densidad usando
#  algunas distribuciones

#  Note que densidad para una variable aleatoria discreta signifca probabilidad de un
# valor puntual de x (ejem probalidad de x = 4)

# densidad y prob acumulada desde la izquierda en una normal estándar
dnorm(x = 0)
pnorm(q = 0)

# densidad y prob acumulada desde la izquierda en una normal mu = -1, sigma=2
dnorm(x = 0, mean = -1, sd = 2)
pnorm(q = 0, mean = -1, sd = 2)

# densidad y prob acumulada desde la izquierda en una exponencial media = 3
dexp(x = 2, rate = 1/3)
pexp(q = 2, rate = 1/3)


# densidad y prob acumulada desde la izquierda en una poisson media = 3
dpois(x = 2, lambda = 3)
ppois(q = 2, lambda = 3)

# densidad y prob acumulada desde la izquierda en una poisson media = 3
dbinom(x = 2, size = 6, prob = 0.44)
pbinom(q = 2, size = 6, prob = 0.44)

