par(mfrow = c(1, 2))

fc <- camera_data$fc
pc <- camera_data$pc

hist(fc,
     main = "Histogram of Front Camera Resolution",
     xlab = "Front camera resolution (megapixels)",
     ylab = "Density",
     freq = FALSE)
curve(dnorm(x,
            mean = mean(fc, na.rm = TRUE),
            sd   = sd(fc, na.rm = TRUE)),
      add = TRUE,
      lwd = 2,
      col = "red")
hist(pc,
     main = "Histogram of Primary Camera Resolution",
     xlab = "Primary camera resolution (megapixels)",
     ylab = "Density",
     freq = FALSE)
curve(dnorm(x,
            mean = mean(pc, na.rm = TRUE),
            sd   = sd(pc, na.rm = TRUE)),
      add = TRUE,
      lwd = 2,
      col = "red")

par(mfrow = c(1, 1))
