#install.packages("tidyverse")
library(ggplot2)


# Box plot for pHyp and BMI

boxplot(BMI ~ pHyp, data = cleaned_data, 
        xlab = "Prevalent Hypertension", ylab = "BMI",
        main = "Box Plot of BMI by Prevalent Hypertension")

# Filtering the dataset to include only individuals with hypertension
pHyp_data <- cleaned_data[cleaned_data$pHyp == 1, ]

# Calculate the median BMI for hypertensive individuals
median_bmi_pHyp <- median(pHyp_data$BMI)

# Print the result
print(median_bmi_pHyp)


# Filtering the dataset to include only individuals without hypertension
nopHyp_data <- cleaned_data[cleaned_data$pHyp == 0, ]

# Calculating the median BMI for individuals without hypertension
median_bmi_nopHyp <- median(nopHyp_data$BMI)

# Print the result
print(median_bmi_nopHyp)


