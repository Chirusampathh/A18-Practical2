
data <- read.csv("test.csv")

camera_data <- data[, c("fc", "pc")]

summary(camera_data)

par(mfrow = c(1, 2))
hist(camera_data$fc, ...)
hist(camera_data$pc, ...)
par(mfrow = c(1, 1))

plot(camera_data$fc, camera_data$pc, ...)
abline(lm(pc ~ fc, data = camera_data), ...)
