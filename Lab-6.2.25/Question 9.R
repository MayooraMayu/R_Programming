mean_temp <- sum(airquality$Temp, na.rm = TRUE) / length(na.omit(airquality$Temp))
print(mean_temp)
print(head(airquality, 5))
print(subset(airquality, select = -c(Temp, Wind)))
coldest_day <- airquality[which.min(airquality$Temp), ]
print(coldest_day)
high_wind_days <- sum(airquality$Wind > 17, na.rm = TRUE)
print(high_wind_days)