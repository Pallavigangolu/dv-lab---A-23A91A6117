# Load and Understand the "mtcars" Dataset

# Load dataset
data(mtcars)

# Insoect strcture
str(mtcars)

#View first few rows
head(mtcars)
 
# Basic Heat Map (Base R)
heatmap(as.matrix(mtcars))

# Improved Heat Map with Labels
heatmap(as.matrix(mtcars), main = "Heatmap of mtcars Dataset")

# Heat Map with Custom Colors
colors <- colorRampPalette(c("blue","yellow","red"))(50)
heatmap( as.matrix(mtcars), col = colors, main = "Custom Color Heatmap")

# Correlation Heat Map(Base R)
corr_matrix, col = colorRampPalette(c("blue","white","red"))(50),
main = "Correlation Heatmap of mtcars")

# ggplot2 Heat Map(Basic)
library(reshape2)
mtcars$Car <- rownames(mtcars)
mtcar_long <- melt(mtcars, id.vars="Car")
View(mtcars_long)
library(ggplot2)
ggplot(mtcars_long, aes(x=variable, y=Car, fill=value)) +
  geom_tile()



