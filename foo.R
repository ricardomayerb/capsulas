# Ejemplo del Prof. Francisco Leiva en clase 1 del módulo 2:
# 15 respuestas en un encuesta sobre la calidad de un servicio
respuestas_largas <- c("bueno", "malo", "muy malo", "bueno", "muy bueno", 
                       "regular",  "malo", "regular","muy malo", "regular",
                       "bueno", "regular", "bueno", "bueno", "malo")

table(respuestas_largas)

# Es más conveniente, al menos en algunos pasos, trabajar con nombres más cortos
# como los usados en el video
respuestas <- c("B", "M", "MM", "B", "MB", "R", "M", "R","MM", "R",
                "B", "R", "B", "B", "M")

# frecuencias: 
# table para frecuencia absoluta
# table y después prop.table para frecuencia relativa
# multiplicar por 100 el resultado de prop.table para frecuencia porcentual

table(respuestas)
tab_res <- table(respuestas)
barplot(tab_res)

prop_tab_res <- prop.table(tab_res)
prop_tab_res
barplot(prop_tab_res)

perc_tab_res <- prop_tab_res * 100
perc_tab_res
barplot(perc_tab_res)

# Moda
names(tab_res[tab_res==max(tab_res)])

# Mediana??? que está pasando aquí????
median(respuestas)

# la mediana asume que los datos tienen un orden
# en la parte levels = ....  uno escribe los niveles de menor a mayor
# ahora la variable es un factor ordenado!
respuestas_ord <- factor(x = respuestas, 
                         levels = c("MM", "M", "R", "B", "MB"), 
                         ordered = TRUE)
respuestas_ord
tab_res_ord <- table(respuestas_ord)
barplot(tab_res_ord)

# Mediana??? Ahora sí pero es mejor usar la función quantile
# la mediana es el quantile 0.5, el primer valor donde al incluirse
# tenemos la mitad o más de los casos
quantile(respuestas_ord, probs = 0.5, type = 1)
quantile(respuestas_ord, probs = 0.5, type = 3)


# econtrar la mediana "a mano": extraer el octavo elemento
sort(respuestas)
sort(respuestas)[8]
median(respuestas)

# ... pero de un lista ORDENADA:
sort(respuestas_ord)
sort(respuestas_ord)[8]
median(respuestas_ord)