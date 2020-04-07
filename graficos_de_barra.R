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

tab_res <- table(respuestas)
barplot(tab_res)

prop_tab_res <- prop.table(tab_res)
prop_tab_res
barplot(prop_tab_res)

perc_tab_res <- prop_tab_res * 100
perc_tab_res
barplot(perc_tab_res)

respuestas <- factor(respuestas, 
                        levels = c("MM", "M", "R", "B", "MB"),
                        ordered = TRUE)
tab_res <- table(respuestas)
barplot(tab_res)
