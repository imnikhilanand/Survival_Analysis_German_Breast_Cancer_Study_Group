
# Importing the packages
library('survival')
library('survminer')

# importing the dataset from the package
data(cancer, package="survival")

# viewing the dataset
head(gbsg)

# modeling the data
res.cox <- coxph(Surv(rfstime,status)~age+meno+size+grade+nodes+pgr+er+hormon, data=gbsg)

# fro





