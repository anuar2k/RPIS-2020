rpis <- read.csv("rpis.csv", header = TRUE, sep = ";")
# komentarz
auta <- read.csv("auta.csv", header = TRUE, sep = ";")
plot(auta$Cena)
dev.new()
hist(auta$Cena, breaks=100)

attach(auta)

hist_w <- function(data, width) {
    breaks <- (max(data) - min(data)) %/% width
    hist(data, breaks=breaks)
}