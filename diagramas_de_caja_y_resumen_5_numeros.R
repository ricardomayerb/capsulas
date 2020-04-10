# Datos de precios de departamentos, como en cap[itulo 3]
f1 <- c(425, 430, 430, 435, 435, 435, 435, 435, 440, 440)
f2 <- c(440, 440, 440, 445, 445, 445, 445, 445, 450, 450)
f3 <- c(450, 450, 450, 450, 450, 460, 460, 460, 465, 465)
f4 <- c(465, 470, 470, 472, 475, 475, 475, 480, 480, 480)
f5 <- c(480, 485, 490, 490, 490, 500, 500, 500, 500, 510)
f6 <- c(510, 515, 525, 525, 525, 535, 549, 550, 570, 570)
f7 <- c(575, 575, 580, 590, 600, 600, 600, 600, 615, 615)

deptos <- c(f1, f2, f3, f4, f5, f6, f7)

# Resumen cuantitativo de cinco nùmeros
d5 <- fivenum(deptos)
d5

q3 <- d5[4]
q1 <- d5[2]

r_i_cuartil <- q3 - q1
r_i_cuartil

bigote <- 1.5*r_i_cuartil

bigote_bajo <- q1 - bigote
bigote_bajo

bigote_alto <- q3 + bigote
bigote_alto

boxplot(deptos)
boxplot(deptos, horizontal = TRUE)
b1 <- boxplot(deptos, plot = FALSE)

deptos71 <- c(380, deptos)
boxplot(deptos, horizontal = TRUE)
boxplot(deptos71, horizontal = TRUE)

deptos72 <- c(325, 625, deptos)
boxplot(deptos, horizontal = TRUE)
boxplot(deptos72, horizontal = TRUE)

deptos75 <- c(300, 310, 655, deptos72)
boxplot(deptos72, horizontal = TRUE)
boxplot(deptos75, horizontal = TRUE)

deptos73 <- c(300, 310, 655, deptos)
boxplot(deptos, horizontal = TRUE)
boxplot(deptos73, horizontal = TRUE)
