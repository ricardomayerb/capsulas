library(dplyr)
library(janitor)

panes_vector <- c(5, 8, 8, 3, 2, 4, 5, 3, 6, 7,
                  7, 6, 2, 6, 5, 5, 5, 7, 5, 7,
                  8, 9, 4, 8, 1, 3, 6, 7, 9, 4,
                  4, 5, 9, 9, 5, 8, 3, 8, 5, 9,
                  7, 8, 4, 8, 5, 7, 7, 4, 6, 2,
                  7, 4, 4, 7, 2, 8, 5, 7, 8, 6,
                  8, 8, 5, 3, 6, 2, 8, 8, 9, 7,
                  9, 5, 5, 8, 9, 5, 10, 8, 7, 3,
                  8, 9, 8, 2, 6)

# cada valor distinto es una clase: no es lo que nos piden en el ejercicio
table(panes_vector)


# cut con 6 quiebres nos asegura 5 intervalos
# No está nada mal, pero nos gustaría más control sobre los valores de quiebres
cut(panes_vector, breaks = 6) %>% table()
cut(panes_vector, breaks = 5) %>% table()

# Esto es probablemente lo que queremos   (a < x <= b)
cut1 <- cut(panes_vector, breaks = c(0,2,4,6,8,10))

# Pero y si queremos que los intervalos sean cerrados por la izq y abiertos por derecha?
# de la forma a <= x < b ?. Usar entonces right = FALSE
cut2 <- cut(panes_vector, breaks = c(0,2,4,6,8,11), right = FALSE)

# ahora podemos usar table ...
cut1 %>% table()
cut2 %>% table()

cut1 %>% table() %>% prop.table()
cut1 %>% table() %>% prop.table() * 100
cut1 %>% table() %>% cumsum()

#  ... o usar tabyl
cut1 %>% tabyl()
cut2 %>% tabyl()


cut1 %>% tabyl() %>% adorn_pct_formatting(... = -n)
cut1 %>% tabyl() %>% mutate(cum_n = cumsum(n), cum_p = cumsum(percent))


# último ejemplo para enfatizar que uno puede dar cortes arbitrarios 
# para las clases
p4 <- cut(panes_vector, 
          breaks = c(0, 5, 7,9, 10), 
          ordered_result = TRUE)

table(p4)
