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

h <- hist(costos, right = FALSE)

casos_por_clase <- h$counts
total_de_casos <- sum(h$counts)
casos_relativos <- casos_por_clase/total_de_casos
casos_porcentuales <- 100 * casos_relativos

cumsum(casos_por_clase)
cumsum(casos_relativos)
cumsum(casos_porcentuales)

# como hacer una ojiva y un gráfico de frecuencia a partir de un histograma
plot(cumsum(casos_por_clase))
lines(cumsum(casos_por_clase))

plot(cumsum(casos_relativos))
lines(cumsum(casos_relativos))


plot(cumsum(casos_porcentuales))
lines(cumsum(casos_porcentuales))


plot(ecdf(costos))


