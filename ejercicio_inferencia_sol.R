# Suponga que  las muestras son de tamaño 120 (n = 120)
# Se trata de respuestas a una pregunta
#  En la población 1200 respuestas son SI y 400 respuestas son NO (no hay otro tipo de respuestas)
#
# Cual es el valor esperado de la proporción muestral?

# Respuesta: el total de respuestas en la población es 1200+400 = 1600
# por lo tanto
N <- 1200+400
cantidad_si_poblacional <- 1200
p_poblacional <- cantidad_si_poblacional/N
p_poblacional

# la prop poblacional es p=0.75 y eso es igual al valor esperado de la prop
# muestral

# Cual es la desviación estándar de la proporción poblacional (versión población finita)?
n <- 120
factor_correccion <- sqrt((N-n)/(N-1))
sd_p_barra_finita <- factor_correccion * sqrt(p_poblacional*(1-p_poblacional)/n)
sd_p_barra_finita

# Cual es la desviación estándar de la proporción poblacional (versión población infinita)?
sd_p_barra_infinita <- sqrt(p_poblacional*(1-p_poblacional)/n)
sd_p_barra_infinita

# Calcule la probabilidad de que una proporción muestral de una muestra de 120 
# observaciones esté entre 0.6 y 0.9, en este caso use la desv estd de población finita
# Utilice una distribución normal.
p_menor_09_fin <- pnorm(0.9, mean = p_poblacional, sd = sd_p_barra_finita)
p_menor_06_fin <- pnorm(0.6, mean = p_poblacional, sd = sd_p_barra_finita)
p_entre_06_09_fin <- p_menor_09_fin - p_menor_06_fin
p_entre_06_09_fin

# Calcule la probabilidad de que una proporción muestral de una muestra de 120 
# observaciones esté entre 0.6 y 0.9, en este caso use la desv estd de población infinita.
# Utilice una distribución normal.
p_menor_09_inf <- pnorm(0.9, mean = p_poblacional, sd = sd_p_barra_infinita)
p_menor_06_inf <- pnorm(0.6, mean = p_poblacional, sd = sd_p_barra_infinita)
p_entre_06_09_inf <- p_menor_09_inf - p_menor_06_inf
p_entre_06_09_inf

# Que diferencia hay entre estas dos probabilidades
p_entre_06_09_fin - p_entre_06_09_inf


# Vuelva a comparar esas dos probabilidades (versión finita vs infinita de la des est) 
# pero con muestras de tamaño 40 (n=40)
n_40 <- 40
factor_correccion_40 <- sqrt((N-n_40)/(N-1))
sd_p_barra_finita_40 <- factor_correccion_40 * sqrt(p_poblacional*(1-p_poblacional)/n_40)
sd_p_barra_infinita_40 <- sqrt(p_poblacional*(1-p_poblacional)/n_40)

p_menor_09_fin_40 <- pnorm(0.9, mean = p_poblacional, sd = sd_p_barra_finita_40)
p_menor_06_fin_40 <- pnorm(0.6, mean = p_poblacional, sd = sd_p_barra_finita_40)
p_entre_06_09_fin_40 <- p_menor_09_fin_40 - p_menor_06_fin_40
p_entre_06_09_fin_40


p_menor_09_inf_40 <- pnorm(0.9, mean = p_poblacional, sd = sd_p_barra_infinita_40)
p_menor_06_inf_40 <- pnorm(0.6, mean = p_poblacional, sd = sd_p_barra_infinita_40)
p_entre_06_09_inf_40 <- p_menor_09_inf_40 - p_menor_06_inf_40
p_entre_06_09_inf_40

p_entre_06_09_fin_40 - p_entre_06_09_inf_40


(p_entre_06_09_fin_40-p_entre_06_09_inf_40)/(p_entre_06_09_fin-p_entre_06_09_inf)

# La diferencia en la probabilidad encontrada, al usar las distintas desviaciones 
# estándar: es 28 veces mayor en el caso de n=40 comparada al caso n=120


# Conteste lo siguiente: para los casos de n=40 y n=120, se justifica el uso de la aproximación normal?

# para esto hay que asegurar es que n*p >= 5 y n*(1-p) >= 5
se_cumple_120 <- n * p_poblacional >=5 &  n*(1-p_poblacional) >= 5
se_cumple_40 <- n_40 * p_poblacional >=5 &  n_40*(1-p_poblacional) >= 5

se_cumple_120
se_cumple_40

# Si, ambas complen las condiciones