#install.packages("tidyverse")
library(tidyverse)


cleaned_data <- framingham_data %>%
  rename(pHyp = prevalentHyp) %>% #changing column name from prevalentHyp to pHyp
  drop_na() %>%  #removing missing values
  select(-currentSmoker, -BPMeds, -prevalentStroke, -diabetes, -TenYearCHD) %>% #removing unnecessary columns 
  select(-pHyp, everything(), pHyp) %>% #making outcome column the last column
  rename(gender = male) %>%  #changing the labels of gender
  mutate(gender = ifelse(gender == 0, "F", "M"))

# View cleaned data
view(cleaned_data)



# Write cleaned data to a CSV file
write.table(cleaned_data, file="cleaned_data.csv", row.names = FALSE, sep=";", na = "")