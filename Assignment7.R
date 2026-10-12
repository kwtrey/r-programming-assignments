# Assignment 7
# Step 1: Choose or Download Data

data("mtcars")

# Display the first six rows
head(mtcars)

# Examine the dataset structure
str(mtcars)
# Step 2: Test Generic Functions

# Print the dataset
print(mtcars)

# Display summary statistics
summary(mtcars)

# Create a plot
plot(mtcars$wt, mtcars$mpg,
     main = "Car Weight vs MPG",
     xlab = "Weight",
     ylab = "Miles Per Gallon")
# Step 3: Explore S3 vs S4

# Create an S3 object
s3_obj <- list(name = "Trey", age = 29, GPA = 3.5)

class(s3_obj) <- "student_s3"

# Define an S3 print method
print.student_s3 <- function(x, ...) {
  cat("Student:", x$name,
      "\nAge:", x$age,
      "\nGPA:", x$GPA, "\n")
}

# Test the S3 method
print(s3_obj)
# Create an S4 class
setClass("student_s4",
         slots = c(name = "character",
                   age = "numeric",
                   GPA = "numeric"))

# Create an S4 object
s4_obj <- new("student_s4",
              name = "Trey",
              age = 29,
              GPA = 3.5)

# Define an S4 print method
setMethod("print", "student_s4",
          function(x, ...) {
            cat("Student:", x@name,
                "\nAge:", x@age,
                "\nGPA:", x@GPA, "\n")
          })

# Test the S4 method
print(s4_obj)
# Compare S3 and S4 objects


isS4(s3_obj)
isS4(s4_obj)
# S3 in informal, while S4 uses formal class definitions
