library(Quandl)

library(quantmod)
library(lifecontingencies)
library(PerformanceAnalytics)

library(corrplot)


best_buy <- getSymbols("BBY",src = "yahoo", auto.assign = FALSE)
colnames(best_buy)
head(best_buy)
colnames(best_buy)<- c("open","high","low","close","volume","adjusted")
ls(best_buy)
discount2Interest(0.17)
nominal2Real(0.17,2,type = "interest")
(1+0.1025)^4
500 * 1.477455
nominal2Real(0.17,2,type = "discount")
###  primero convertir la tasa nominal a real
inversion <- nominal2Real(0.06,2,type = "discount")
# lo siguiente es calcular el descuento en base al interes
interes <- discount2Interest(inversion)
#calcular con los datos anteriores el valor presente
pv <- presentValue(1000,6,interes)
5000000*0.01
