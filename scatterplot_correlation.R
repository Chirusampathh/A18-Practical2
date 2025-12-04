data <- read.csv("test.csv")

camera_data <- data[, c("fc", "pc")]

plot(
  camera_data$fc, camera_data$pc,
  main = "Primary vs Front Camera Resolution",
  xlab = "Front camera resolution (megapixels)",
  ylab = "Primary camera resolution (megapixels)",
  col = "blue",
  pch = 16
)

abline(
  lm(pc ~ fc, data = camera_data),
  col = "red",
  lwd = 2
)

cor_test <- cor.test(camera_data$pc, camera_data$fc, method = "pearson")
cor_test  
