

# Load mtcars dataset
data(mtcars)

# view first six rows
head(mtcars)
# Base R Scatterplot
plot(mtcars$wt, mtcars$mpg,
     main = "Car Weight vs. MPG",
     xlab = "Weight",
     ylab = "Miles Per Gallon",
     col = "blue",
     pch = 19)

# Base R Histogram
hist(mtcars$mpg,
     main = "Distribution of MPG",
     xlab = "Miles Per Gallon",
     col = "lightblue")
# Lattice Graphics
library(lattice)

# Scatterplot by number of cylinders
xyplot(mpg ~ wt | factor(cyl),
       data = mtcars,
       main = "MPG vs. Weight by Cylinders",
       xlab = "Car Weight",
       ylab = "Miles Per Gallon",
       col = "blue",
       pch = 19)
# Lattice Boxplot
bwplot(mpg ~ factor(cyl),
       data = mtcars,
       main = "MPG by Number of Cylinders",
       xlab = "Cylinders",
       ylab = "Miles Per Gallon",
       col = "lightblue")
#ggplot2 Graphics
library(ggplot2)

# Scatterplot with trend lines
ggplot(mtcars, aes(x = wt, y = mpg,
                   color = factor(cyl))) +
  geom_point() +
  geom_smooth(method = "lm", se = FALSE) +
  labs(
    title = "MPG vs. Weight by Cylinders",
    x = "Car Weight",
    y = "Miles Per Gallon",
    color = "Cylinders"
  ) +
  theme_minimal()
# ggplot2 Histogram
ggplot(mtcars, aes(x = mpg)) +
  geom_histogram(binwidth = 2, fill = "lightblue",
                 color = "black") +
  facet_wrap(~ cyl) +
  labs(
    title = "MPG Distribution by Cylinders",
    x = "Miles Per Gallon",
    y = "Frequency"
  ) +
  theme_minimal()
