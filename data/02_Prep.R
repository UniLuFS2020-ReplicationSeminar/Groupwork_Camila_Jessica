
# Remove rows with "NA" values
cleaned_data <- na.omit(framingham_data)

# Assuming 'df' is your data frame
colnames(framingham_data)[colnames(framingham_data) == "prevalentHyp"] <- "pHyp"
