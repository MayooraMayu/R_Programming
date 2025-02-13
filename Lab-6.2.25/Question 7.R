data("airquality")
print(is.data.frame(airquality))
ordered_airquality <- airquality[order(airquality[,1], airquality[,2]), ]
filtered_airquality <- subset(ordered_airquality, select = -c(Solar.R, Wind))
print(filtered_airquality)