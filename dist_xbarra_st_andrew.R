# encuentren la probabilidad de que el promedio muestral esté a 10 puntos de 
# el verdadero promedio poblacional mu, tal como en las slides

# valores poblacionales
mu <- 990
sigma <- 80

n <- 200

# resuelvan la pregunta SIN estandarizar nada!
E_de_xbarra <- mu
sigma_de_xbarra <- sigma/sqrt(n)
sigma_de_xbarra

area_grande <- pnorm(q = 1000, mean = E_de_xbarra, sd = sigma_de_xbarra)
area_grande

area_chica <- pnorm(q = 980, mean = E_de_xbarra, sd = sigma_de_xbarra)
area_chica

Prob_buscada <- area_grande - area_chica
Prob_buscada

# Vuelvan a contestar esta pregunta pero estandarizando 980 y 1000 usando 
# una distribucion normal estandar
lim980_estandarizado <- (980 - E_de_xbarra)/sigma_de_xbarra
lim980_estandarizado

lim1000_estandarizado <- (1000 - E_de_xbarra)/sigma_de_xbarra
lim1000_estandarizado

area_grande_estandarizada <- pnorm(q = lim1000_estandarizado, mean = 0, sd = 1)
area_grande_estandarizada

area_chica_estandarizada <- pnorm(q = lim980_estandarizado, mean = 0, sd = 1)
area_chica_estandarizada

area_grande_estandarizada - area_chica_estandarizada


# version express:
pnorm(0.68) - pnorm(-0.68)
