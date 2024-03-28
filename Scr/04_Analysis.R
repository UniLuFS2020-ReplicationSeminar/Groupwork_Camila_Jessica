#logistic regression 
logistic_model <- glm(pHyp ~ BMI, data = cleaned_data, family = binomial)

logistic_model


# data for hypertensive and non-hypertensive groups
pHyp_bmi <- cleaned_data$BMI[cleaned_data$pHyp == 1]
nopHyp_bmi <- cleaned_data$BMI[cleaned_data$pHyp == 0]


# Performing t-test
t_test_result <- t.test(pHyp_bmi, nopHyp_bmi)
print(t_test_result)