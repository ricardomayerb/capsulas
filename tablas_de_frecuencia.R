library(janitor)

# Ejemplo del Prof. Francisco Leiva en clase 1 del módulo 2:
# 15 respuestas en un encuesta sobre la calidad de un servicio
respuestas_largas <-  c("bueno", "malo", "muy malo", "bueno", "muy bueno",
                        "regular", "malo", "regular", "muy malo", "regular",
                        "bueno", "regular", "bueno", "bueno", "malo")

table(respuestas_largas)

# Es más conveniente, al menos en algunos pasos, trabajar con nombres más cortos
# como los usados en el video
respuestas <- c("B","M","MM","B","MB","R","M","R","MM","R","B","R","B","B","M")

# frecuencias:
# table para frecuencia absoluta
# table y después prop.table para frecuencia relativa
# multiplicar por 100 el resultado de prop.table para frecuencia porcentual


tab_res <- table(respuestas)
tab_res

prop_tab_res <- prop.table(tab_res)
prop_tab_res


perc_tab_res <- prop_tab_res * 100
perc_tab_res

# Ahora, usemos la función tabyl para una forma alternativa 
# de obtener tablas de frecuencia
taby_res <- tabyl(respuestas)
taby_res
taby_res %>% adorn_rounding(digits = 2)
taby_res %>% adorn_pct_formatting()

class(tab_res)

class(taby_res)


