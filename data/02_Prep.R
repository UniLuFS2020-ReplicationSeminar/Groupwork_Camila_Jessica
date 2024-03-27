colnames(framingham_data)[colnames(framingham_data) == "prevalentHyp"] <- "pHyp"

# Remove rows with "NA" values
cleaned_data <- na.omit(framingham_data)

print(colnames(framingham_data))
