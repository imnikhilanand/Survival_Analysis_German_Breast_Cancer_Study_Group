
# Importing the packages
library('survival')
library('survminer')

# importing the dataset from the package
data(cancer, package="survival")

# viewing the dataset
head(gbsg)

# modeling the data
res.cox <- coxph(Surv(rfstime,status)~age+meno+size+grade+nodes+pgr+er+hormon, data=gbsg)

# from the model we observed that age, meno, size, er are not relevant

# modleing with relevant features
res.cox <- coxph(Surv(rfstime,status)~grade+nodes+pgr+hormon, data=gbsg)

# summary of the different factors
summary(res.cox)

# Plot the baseline survival function
ggsurvplot(survfit(res.cox, data=gbsg), color = "#2E9FDF", ggtheme = theme_minimal())


