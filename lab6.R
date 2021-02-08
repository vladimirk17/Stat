library(ggplot2)

elements <- c(8000, 16000, 32000, 64000, 128000, 256000, 512000)

elapsedTimeBubble <- c(270, 1120, 4590, 18521, 73735, 294954, 1176892)

df <- data.frame(time=elapsedTimeBubble, elements = elements)

boxplot(df$time ~ df$elements, data=df,
        xlab="Кількість елементів",
        ylab="Витрачений час")
fit_hp <- aov(elapsedTimeBubble ~ elements, data=df)
summary(fit_hp)
