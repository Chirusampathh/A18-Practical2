data <- read.csv("tests.csv")   
camera_data <- data[, c("fc" "pc")]   
camera_data$pc_group <- cut(
  camera_data$pcx,   
  breaks = c(-Inf, 5, 15, Inf)
  labels = c("Low (≤5 MP)", "Medium (6–15 MP)", "High (≥16 MP)")
)   

camera_data$fc_group <- cut(
  camera_data$fc,
  breaks = c(-Inf, 3, 10, Inf),
  label = c("Low (≤3 MP)", "Medium (4–10 MP)", "High (≥11 MP)")
)  

camera_table <- table(camera_data$pc_group, camera_data$fc_group)
camera_table   


barplot(
  camera_tab,  
  beside = TRUE,
  main = "Primary vs Front Camera Resolution Categories",
  xlab = "Front camera group",
  ylab = "Number of phones",
  legend.text = rownames(camera_table),
  args.legend = list(title = "Primary camera", x = "topright", cex = 0.8)
)
