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


lev_1 <- c("(0, 2]", "(2, 4]", "(4, 6]", "(6, 8]", "(8, 10]")

panes_tbl <- tibble(panes = panes_vector) %>%
  mutate(clase =
           case_when(panes <= 2 ~ lev_1[1],
                     panes > 2 & panes <= 4 ~ lev_1[2],
                     panes > 4 & panes <= 6 ~ lev_1[3],
                     panes > 6 & panes <= 8 ~ lev_1[4],
                     panes > 8  ~ lev_1[5]
           )
  )


lev_2 <- c("[0, 2)", "[2, 4)", "[4, 6)", "[6, 8)", "[8, +inf)")


panes_tbl <- panes_tbl %>%
  mutate(clase_2 =
           case_when(panes < 2 ~ lev_2[1],
                     panes >= 2 & panes < 4 ~ lev_2[2],
                     panes >= 4 & panes < 6 ~ lev_2[3],
                     panes >= 6 & panes < 8 ~ lev_2[4],
                     panes >= 8  ~ lev_2[5]
           )
  )


panes_tbl

tabyl(panes_tbl, clase)
tabyl(panes_tbl, clase_2)
