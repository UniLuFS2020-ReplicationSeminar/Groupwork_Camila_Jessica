
library(ggplot2)

# Box plot for pHyp and BMI

boxplot(BMI ~ pHyp, data = cleaned_data, 
        xlab = "Prevalent Hypertension", ylab = "BMI",
        main = "Box Plot of BMI by Prevalent Hypertension")