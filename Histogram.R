par(mfrow = c(1, 2))  

hist(camera_data$pc,
     main = "Histogram of Front Camera Resolution",
     xlab = "Front camera resolution (megapixels)",
     ylab = "Frequency")

hist(camera_data$fc,
     main = "Histogram of Primary Camera Resolution",
     xlab = "Primary camera resolution (megapixels)",
     ylab = "Frequency")
par(mfrow = c(1, 1))
