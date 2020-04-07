# Datos ejemplo cuantitativo Prof. Leiva y capítulo 2 del libro
# Pueden copiar/pegar aqui desde el ppt del capitulo 2, los numeros fila por fila
# y quedan así:
# 91	78	93	57	75	52	99	80	97	62
# y despues los dejan como están aquí:

f1 <- c(91,	78,	93,	57,	75,	52,	99,	80,	97,	62)
f2 <- c(71,	69,	72,	89,	66,	75,	79,	75,	72,	76)
f3 <- c(104,	74,	62,	68,	97,	105,	77,	65,	109,	80)
f4 <- c(85,	97,	88,	68,	83,	68,	71,	69,	67,	74)
f5 <- c(62,	82,	98,	101,	79,	105,	79,	69,	62,	73)

costos <- c(f1, f2, f3, f4, f5)


h_rc <- hist(costos)

# para imitar ejemplo del libro, ppt y videos del prof. FL
h <- hist(costos, right = FALSE)
h <- hist(costos, right = FALSE, freq = FALSE)

h_rc$counts
h$counts

h_rc$breaks
h$breaks

sum(h$counts)

h$counts/sum(h$counts)
100*h$counts/sum(h$counts)

casos_por_clase <- h$counts
total_de_casos <- sum(h$counts)
casos_relativos <- casos_por_clase/total_de_casos
casos_porcentuales <- 100 * casos_relativos

h10 <- hist(costos, breaks = 10)
h10$breaks
h_arbitrario <- hist(costos, breaks = c(50, 56, 69, 81, 100, 110), col = "steel blue")


#####################
# ejecutar primero el script presentar_datos_cuanti para que sepa que es costos

h <- hist(costos)
h$counts
sum(h$counts)

h$counts/sum(h$counts)
100*h$counts/sum(h$counts)

casos_por_clase <- h$counts
total_de_casos <- sum(h$counts)
casos_relativos <- casos_por_clase/total_de_casos
casos_porcentuales <- 100 * casos_relativos

cumsum(casos_relativos)
cumsum(casos_porcentuales)

# grafico muy sencillo, con un vector para valores de x y oro de y
plot(x = c(1, 2, 3), y = c(5, 3, 9))
plot(x = c(1, 2, 3), y = c(5, 3, 9), type = "l") # es una ELE entre comillas!

plot(x = c(1, 2, 3), y = c(5, 3, 9))
lines(x = c(1, 2, 3), y = c(5, 3, 9))


# como hacer una ojiva y un grafico de frecuencia a partir de un histograma
plot(cumsum(h$counts))
lines(cumsum(h$counts))

plot(cumsum(casos_por_clase))
lines(cumsum(casos_por_clase))

plot(cumsum(casos_relativos))
lines(cumsum(casos_relativos))


plot(cumsum(casos_porcentuales))
lines(cumsum(casos_porcentuales))


plot(ecdf(costos))



# 59			   2
# 53			   3
# 57			   5
# 77			   1
# 61			   2
# 52			   0
# 
# 
