na_count <- colSums(is.na(airquality))
print(na_count)
for (col in names(airquality)) {
  if (sum(is.na(airquality[[col]])) / nrow(airquality) < 0.1) {
    airquality <- na.omit(airquality)
  } else {
    airquality[[col]][is.na(airquality[[col]])] <- mean(airquality[[col]], na.rm = TRUE)
  }
}
model <- lm(Ozone ~ Solar.R, data = airquality)
print(summary(model))
plot(airquality$Solar.R, airquality$Ozone, main="Ozone vs Solar Radiation", xlab="Solar Radiation", ylab="Ozone", pch=19)
abline(model, col="red")
