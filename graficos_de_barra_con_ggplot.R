library(tidyverse)
library(janitor)

respuestas <- c("B", "M", "MM", "B", "MB", "R", "M", "R","MM", "R",
                "B", "R", "B", "B", "M")
respuestas <- factor(respuestas, 
                     levels = c("MM", "M", "R", "B", "MB"),
                     ordered = TRUE)

tabla <- tabyl(respuestas)
tabla

ggplot(data = tabla, aes(x = respuestas, y = n)) + 
  geom_bar(stat = "identity")

ggplot(data = tabla, aes(x = respuestas, y = percent)) + 
  geom_bar(stat = "identity") + 
  coord_flip()

gbarras <- ggplot(data = tabla, aes(x = respuestas, y = n)) + 
  geom_bar(stat = "identity", fill = "steel blue")

gbarras + coord_flip()

gbarras + theme_minimal()

gbarras + geom_text(aes(label=n), vjust=-0.3, size=3.5)

gbarras + 
  coord_flip() +
  geom_text(aes(label=n), size=3.5, hjust = -0.4) +
  theme_minimal() 


# comenzamos con nustra data.frame, "tabla", y luego empezamos el grafico
tabla %>% 
  ggplot(aes(respuestas, n)) + 
  geom_bar(stat = "identity") + 
  coord_flip()
  

tabla %>% 
  mutate(respuestas = fct_reorder(respuestas, n)) %>% 
  ggplot(aes(respuestas, n)) + 
  geom_bar(stat = "identity") + 
  coord_flip()


tabla %>% 
  mutate(respuestas = fct_reorder(respuestas, desc(n))) %>% 
  ggplot(aes(respuestas, n)) + 
  geom_bar(stat = "identity") + 
  coord_flip()

# https://ggplot2.tidyverse.org/reference/geom_bar.html
# https://www.r-graph-gallery.com/barplot.html
# https://www.r-graph-gallery.com/267-reorder-a-variable-in-ggplot2.html
# http://www.sthda.com/english/wiki/ggplot2-barplots-quick-start-guide-r-software-and-data-visualization
