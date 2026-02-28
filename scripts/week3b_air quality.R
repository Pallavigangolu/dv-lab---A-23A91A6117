# week 3b
# Load the Dataset
data(airquality)

# Inspect the Dataset
?airquality
head(airquality)
str(airquality)
class(airquality)

# Calculate Mean Ozone per Month (remove missing values)
mean_ozone <- tapply(
  airquality$Ozone,
  airquality$Month,
  mean,
  na.rm = TRUE
)

mean_ozone

# Simple Bar Chart
barplot(
  mean_ozone,
  main = "Average Ozone Concentration by Month",
  xlab = "Month",
  ylab = "Mean Ozone Level",
  col = "steelblue"
)

# Prepare Data for Grouped and Stacked Charts
group_means <- rbind(
  Ozone = tapply(airquality$Ozone, airquality$Month, mean, na.rm = TRUE),
  Temp = tapply(airquality$Temp, airquality$Month, mean, na.rm = TRUE)
)

group_means

# Grouped (Clustered) Bar Chart
barplot(
  group_means,
  beside = TRUE,
  col = c("skyblue", "pink"),
  legend.text = TRUE,
  main = "Grouped Bar Chart: Ozone vs Temperature",
  xlab = "Month",
  ylab = "Mean Values"
)

# Stacked Bar Chart
barplot(
  group_means,
  beside = FALSE,
  col = c("skyblue", "pink"),
  legend.text = TRUE,
  main = "Stacked Bar Chart: Ozone vs Temperature",
  xlab = "Month",
  ylab = "Mean Values"
)