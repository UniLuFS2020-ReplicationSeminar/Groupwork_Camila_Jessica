# Load the CSV file
data <- read.csv("framingham.csv")

# Remove rows with "NA" values
cleaned_data <- na.omit(data)

# Write the cleaned data to a new CSV file
write.csv(cleaned_data, file = "framingham_cleaned.csv", row.names = FALSE)

print("Data preprocessing complete. Cleaned data saved to 'framingham_cleaned.csv'.")
