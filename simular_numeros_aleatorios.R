# todas las funciones que simulan numeros aleatorios
# de a cuerdo a una distribución conocida (normal, binomial, poisson, etc)
# comienzan con la letra r de random. Luego viene una abreviacion del nombre de la
# distribución: norm, binom, pois etc   (la uniforme discreta es una excepcion 
# que veremos al final)

# El primer argumento es la cantidad de números aleatorios y el resto de los 
# argumentos principales son los parámetros que cada función requiere (vea la 
# documentación de cada distribución)

# Simulemos 4 números aleatorios, para las distribuciones que hemos visto

# De una distribución normal, con valor esperado 7 y desviación estándar 2
rnorm(n = 4, mean = 7, sd = 2)

# De una distribución exponencial, con valor esperado 5 
rexp(n = 4, rate = 1/5)

# De una distribución t-student, con 12 grados de libertad 
rt(n = 4, df = 12)

# De una distribución binomial, con 8 ensayos y probabilidad de éxito p=0.35
rbinom(n = 4, size = 8, prob = 0.35)

# De una distribución hiper-geométrica, con 7 ensayos, 50 elementos en la población total,
# 20 elementos de la población son éxitos, 30 son fracasos
rhyper(nn = 4, m = 20, n = 30, k = 7)

# De una distribución Poisson, con valor esperado 9
rpois(n = 4, lambda = 9)

# De una distribución  uniforme continua, con x entre 0 y 2
runif(n = 4, min = 0, max = 2)

# De una distribución  uniforme discreta, con x = 0, 1, 2, 3 ....20
sample(x = 0:20, size = 4)


