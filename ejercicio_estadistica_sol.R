library(dplyr)
library(janitor)

contactos <- c(3, 4, 8, 3, 2, 4, 5, 3, 6, 7,
                  3, 6, 2, 6, 5, 5, 5, 7, 5, 7,
                  8, 5, 4, 8, 1, 3, 6, 7, 9, 4,
                  4, 5, 6, 9, 5, 8, 3, 8, 5, 9,
                  7, 8, 4, 8, 5, 7, 7, 4, 6, 2,
                  7, 4, 4, 7, 2, 8, 5, 7, 8, 6,
                  8, 8, 5, 3, 6, 2, 8, 8, 9, 7,
                  9, 5, 5, 8, 9, 5, 10, 8, 7, 3,
                  8, 9, 8, 2, 6, 5, 6, 6, 3, 3, 3,
                  10, 3, 2, 6, 5, 7, 6, 7, 7)

# Vamos crear una tabla de frecuencia con 7 clases para  estos datos

# 1.- use la función cut para crear 7 clases 
corte1 <- cut(contactos, breaks = 7, right = FALSE)
corte1 

# 2.- obtenga las frecuencias absolutas y relativas para estas clases
# Sí, hay más de una forma de hacerlo
table(contactos)
fa <- table(corte1)
fr <- prop.table(fa)
fp <- 100*fr

corte1 %>% table()
corte1 %>% table() %>% prop.table()

contactos %>% 
  cut(breaks = 7, right = FALSE) %>% 
  table() %>% 
  prop.table()

fa
fr
fp

tabyl(corte1)


# 3. obtenga un histograma de contactos, use 10 breaks y el color "light blue"
hist(contactos, breaks = 10, col = "light blue")
hist(contactos, breaks = 7, right = FALSE, col = "light blue")


# 4. Compute la mediana de contactos
median(contactos)

# 5. Obtenga un diagrama de caja de contactos
boxplot(contactos)








summary(contactos)
frectodos <- table(contactos)
maxfrec <- max(frectodos)
maxfrec
es_igual_al_maximo <- maxfrec == frectodos
# 17 == c(1, 7, 12, 9, etc ...)
5 == c(7, 5, 11)
frectodos[maxfrec == frectodos]
frectodos[es_igual_al_maximo]

quantile(x = contactos, probs = 0.62)
