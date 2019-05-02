##### Data Analysis #9 
##### Upload the ST314ExamData data set. 
##### Review MLR in R 

examdata = read.csv(file.choose(), header = TRUE)

attach(examdata)

# View the data with a scatterplot matrix using pairs(y~x1+x2+...+xk)
pairs(Final~Midterm+Term+Format, col = "darkblue")

# The categorical variables will be better understood looking at a boxplot. 
# Create side by side boxplot for Final versus Term   boxplot(y~x)
# Create side by side boxplot for Final versus Format boxplot(y~x)

boxplot(Final~Term, col = blues9)
boxplot(Final~Format*Term, col = blues9)

# Fit a model that has Format, Term and MIdterm to help predict Final

mod = lm(Final~Midterm+Format+Term)
summary(mod)

# Fit the residuals using plot(mod, 1)
plot(mod, 1) 

# Predict the Final Exam Score for a Online, winter Term student with a midterm score of 190. 
# Calculate the confidence intervals for each explantory variable coefficient by hand or with with confint(modelname)

