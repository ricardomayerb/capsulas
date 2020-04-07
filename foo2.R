library(janitor)
library(dplyr)

viv_a <- data.frame(rango_precio=rep("alto", 55), 
                    estilo = c(rep("colonial", 18),
                               rep("rancho", 6),
                               rep("mixto", 19),
                               rep("urbano", 12)) 
)

viv_b <- data.frame(rango_precio=rep("bajo", 45), 
                    estilo = c(rep("colonial", 12),
                               rep("rancho",14),
                               rep("mixto", 16),
                               rep("urbano", 3)) 
)


datos_viviendas <- data.frame(rango_precio = c("bajo", "alto"),
                        colonial = c(18, 12),
                        rancho = c(6, 14),
                        mixto = c(19, 16),
                        urbano = c(12, 3))



viviendas <- data.frame(rango_precio = c("bajo", "alto"),
                        colonial = c(18, 12),
                        rancho = c(6, 14),
                        mixto = c(19, 16),
                        urbano = c(12, 3))

viviendas

colSums(viviendas)
colSums(viviendas[, 2:5])
rowSums(viviendas[, 2:5])

adorn_totals(viviendas, where = "row") # viene del paquete janitor
adorn_totals(viviendas, where = "col")
adorn_totals(viviendas, where = c("row", "col"))

# primera pipa %>% , se puede usar Ctrl+Mayusculas+M  para insertarla rápidamente
viviendas %>% adorn_totals(where = "row") # comparar con 16
viviendas %>% adorn_totals(where = "col") # comparar con 17
viviendas %>% adorn_totals(where = c("row", "col")) # comparar con 18

viviendas %>% adorn_percentages()
viviendas %>% adorn_percentages(denominator = "col")
viviendas %>% adorn_percentages(denominator = "all")

# modo sin pipas
tabla_con_pr_filas <-  adorn_percentages(viviendas)
tabla_con_pr_filas
tabla_con_pr_filas_y_totales <- adorn_totals(tabla_con_pr_filas, "col")
tabla_con_pr_filas_y_totales

# modo con pipas
viviendas %>% 
  adorn_percentages(denominator = "row") %>% 
  adorn_totals("col") %>% 
  adorn_pct_formatting(digits = 1)

# de nuevo, pero pasito a pasito
viviendas %>% 
  adorn_percentages()    

viviendas %>% 
  adorn_percentages() %>% 
  adorn_totals("col") 

viviendas %>% 
  adorn_percentages() %>% 
  adorn_totals("col") %>% 
  adorn_pct_formatting(digits = 1)


viviendas %>% 
  adorn_percentages(denominator = "col") %>% 
  adorn_totals("row") %>% 
  adorn_pct_formatting(digits = 1)

viviendas %>% 
  adorn_percentages(denominator = "col") %>% 
  adorn_totals("row") %>% 
  adorn_pct_formatting(digits = 1) %>% 
  adorn_title("combined", "Precios", "Estilos")



viv_a <- data.frame(rango_precio=rep("alto", 55), 
                    estilo = c(rep("colonial", 18),
                               rep("rancho", 6),
                               rep("mixto", 19),
                               rep("urbano", 12)) 
)

viv_b <- data.frame(rango_precio=rep("bajo", 45), 
                    estilo = c(rep("colonial", 12),
                               rep("rancho",14),
                               rep("mixto", 16),
                               rep("urbano", 3)) 
)

datos_viv <- rbind(viv_a, viv_b)

nueva_viviendas_table <- table(viv)
nueva_viviendas <- tabyl(viv, rango_precio, estilo)
nueva_viviendas

library(datos)
library(datasets)

# ejemplo
mis_datos <- diamantes # diamantes esta en datos
# y comienzan a trabajar con mis datos
mis_otros_datos <- mtcars # mtcars esta en data sets

# diamantes, con quilate y precio
tabyl(mis_datos,  precio, quilate)
tabyl(mis_datos,  quilate)

tabyl(mis_datos,  color, corte)

plot(x = mis_datos$precio, y = mis_datos$quilate)




mis_datos %>% tabyl(color, corte) %>% 
  adorn_totals()

tabyl(mis_datos,   corte, precio)




