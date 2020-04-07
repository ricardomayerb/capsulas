library(janitor)
library(tidyverse)

viv_p_alto <- data.frame(rango_precio=rep("alto", 55), 
                    estilo = c(rep("colonial", 18),
                               rep("rancho", 6),
                               rep("mixto", 19),
                               rep("urbano", 12)) 
                        )

viv_p_bajo <- data.frame(rango_precio=rep("bajo", 45), 
                    estilo = c(rep("colonial", 12),
                               rep("rancho",14),
                               rep("mixto", 16),
                               rep("urbano", 3)) 
                        )


datos_viv <- rbind(viv_p_bajo, viv_p_alto)

tc_table <- table(datos_viv)
tc_table

tc_tabyl <- tabyl(datos_viv, rango_precio, estilo)
tc_tabyl

class(tc_table)
class(tc_tabyl)

tc_table %>% prop.table()
tc_table %>% addmargins()

tc_tabyl %>% adorn_totals(c("row", "col"))

tc_tabyl %>% 
  adorn_totals(c("row", "col")) %>% 
  adorn_percentages() %>% 
  adorn_pct_formatting(digits = 1)


barplot(tc_table)

datos_viv %>% 
  ggplot(aes(x=estilo, fill=rango_precio)) + 
  geom_bar()
  
datos_viv %>% 
  ggplot(aes(x=estilo, fill=rango_precio)) + 
  geom_bar(position = "dodge")

