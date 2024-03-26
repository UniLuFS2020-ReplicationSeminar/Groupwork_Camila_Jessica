#logistic regression 


logistic_model <- glm(pHyp ~ BMI, data = cleaned_data, family = binomial)

logistic_model
