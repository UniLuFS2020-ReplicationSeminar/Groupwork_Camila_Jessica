#change collumn name from prevalentHyp to pHyp
colnames(framingham_data)[colnames(framingham_data) == "prevalentHyp"] <- "pHyp"


# Remove rows with "NA" values
cleaned_data <- na.omit(framingham_data)


#create a csv file for the clean data
write.table(cleaned_data, file="cleaned_data.csv", row.names = FALSE, sep=";", na = "")


