install.packages("tidyverse")
library(tidyverse)


# Change column name from "prevalentHyp" to "pHyp"
framingham_data <- framingham_data %>%
  rename(pHyp = prevalentHyp)


# Remove rows with NA values
cleaned_data <- framingham_data %>%
  drop_na()


# Deleting all of the binary values columns, except pHyp
cleaned_data <- cleaned_data %>%
  select(-currentSmoker, -BPMeds, -prevalentStroke, -diabetes, -TenYearCHD)


# Move the column named "pHyp" to last in the table
cleaned_data <- cleaned_data %>%
  select(-pHyp, everything(), pHyp)


# Rename column named "male" to "gender"
cleaned_data <- cleaned_data %>%
  rename(gender = male)


# Give names to the variables for the "gender" column F = female and M = male
cleaned_data <- cleaned_data %>%
  mutate(gender = ifelse(gender == 0, "F", "M"))


# View cleaned data
view(cleaned_data)


# Write cleaned data to a CSV file
write.table(cleaned_data, file="cleaned_data.csv", row.names = FALSE, sep=";", na = "")