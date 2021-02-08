data <- c(84,103,70,54,57,101,80,86,64,88,77,70,118)
data <- sort(data)
data.intervals <- table(cut(data, 11))
data.freq <- data.intervals/sum(data.intervals)
data.fset <- cbind(data.intervals, data.freq)
df.set <- data.frame(data.fset)
names(df.set)[1] = "N"
names(df.set)[2] = "Частость"

n <- length(data)
p <- 0.95


#Метод моментів
m <- mean(data) #хчерта
m

var(data)  # Вибіркова дисперсія
sd(data)

d <- var(data)*(n-1)/n  # Виправлена вибіркова дисперсія
d
s <- sqrt(d)
s

#Метод моментів за допомогою бібліотечних функцій
library("fitdistrplus")
fitdist(data,"norm","mme")
plot(fitdist(data,"norm","mme"))

#Метод найбільшої подібності
fitdist(data,"norm","mle")
plot(fitdist(data,"norm","mle"))
?fitdist
