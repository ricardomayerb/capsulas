# pipas ( %>% ) simplemente colocan lo que está a la izquierda como 
# primer argumento de la función a la derecha:
# Por ejemplo en vez de escribir f(x, y), podemos escribir x %>% f(y)
#  Eso no parece muy útil pero veremos que son útiles 
# cuando queremos escribir composiciones de funciones como h(g(f(x,y),z) ,w)
# Como x %>% f(y) %>% g(z) %>% h(w)

library(dplyr)
library(janitor)
library(datos)

set.seed(123)
diaman10 <- sample_frac(diamantes, size = 0.1)

tab_cc <- adorn_ns(adorn_pct_formatting(adorn_percentages(tabyl(diamantes, color, corte), "row"), digits = 1))
tab_cc

tab_cc <- adorn_ns(
  adorn_pct_formatting(
    adorn_percentages(
      tabyl(diamantes, color, corte),
      "row"),
    digits = 1)
)
tab_cc

tab1 <- tabyl(diamantes, color, corte)
tab2 <- adorn_percentages(tab1, "row")
tab3 <- adorn_pct_formatting(tab2, digits = 1)
tab_cc <- adorn_ns(tab3)
tab_cc

tab_cc <- diamantes %>% 
  tabyl(color, corte) %>% 
  adorn_percentages("row") %>% 
  adorn_pct_formatting(digits = 1) %>% 
  adorn_ns()

tab_cc  
