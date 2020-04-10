n <- 30
p <- 0.72

# verifiquen que se cumplen las dos condiciones para tratar esta binomial como
#  una Normal (ver el ppt)
n*p
n*(1-p)
n*p >= 5
n*(1-p) >= 5
se_cumple_condicion <- (n*p >= 5)  &  (n*(1-p) >= 5)
se_cumple_condicion

E_de_pbarra <- p
sigma_de_pbarra <- sqrt(p*(1-p)/n)
sigma_de_pbarra

# Prob de que p_barra esté entre 0.67 y 0.77
pnorm(q = 0.77, mean = E_de_pbarra, sd = sigma_de_pbarra)
pnorm(q = 0.67, mean = E_de_pbarra, sd = sigma_de_pbarra)

pnorm(q = 0.77, mean = E_de_pbarra, sd = sigma_de_pbarra) - pnorm(q = 0.67, mean = E_de_pbarra, sd = sigma_de_pbarra)

izq_estandarizada <- (0.67 - E_de_pbarra)/sigma_de_pbarra
izq_estandarizada

der_estandarizada <- (0.77 - E_de_pbarra)/sigma_de_pbarra
der_estandarizada

pnorm(der_estandarizada) - pnorm(izq_estandarizada)
