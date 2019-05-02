##########PART 1 START ############################################################################# # R code and explanation for data analysis 5 t procedures. 

# Read in the microbeersW19.csv dataset
microbeers = read.csv(file.choose(), header = TRUE)

# gives variable names.
names(microbeers) # gives variable names. 

# Make an appropriate visual display for abv. 
# Recall hist() or boxplot()
# Add a title. 
# Add color and other aesthetics if you like. 
# See week 3 lessons or the script from Data Analysis #3. 

# Calculate the mean and standard deviation. mean() and sd()
# Again week 3 lessons or the script from Data Analysis #3. 

# Perform a t test using the t.test() command. 
# The format is t.test(data, mu = mu_0, alternative = "alt") 
# where data is a quantitative variable mu_0 is the hypothesized mean,
# and alt is either "less", "greater" or "two.sided" (default).
# See lesson 27 for an R code example for t.test() or week 5 module R tutorials. 

##########PART 1 END ############################################################################# 

##########PART 2 START ########################################################################### 
# This section is only for your information. 
# You don't have to run this section. 

# Upload combined student data set ("CombinedST314SISW19.csv")
st314data = read.csv(file.choose(), header = TRUE)

# creates a side by side boxplot with customized axes.
boxplot(st314data$SchoolWorkHours ~st314data$Course, 
        col = c("lightgreen", "lightblue"),
        axes = FALSE, horizontal = TRUE, 
        main = "Comparison of time spent doing classwork between in-class and online ST314 Students", xlab = "Minutes Spent Doing School Work")
# Adds customized axes
axis(2, at = c(1,2), c("In Class", "Online"))
axis(1, at = c(seq(0,160,10)))

# Calculate means, sd and sample size by group
aggregate(st314data$SchoolWorkHours~st314data$Course, data = st314data, mean)
aggregate(st314data$SchoolWorkHours~st314data$Course, data = st314data, sd)
aggregate(st314data$SchoolWorkHours~st314data$Course, data = st314data, length)

# two sample t test
t.test(st314data$SchoolWorkHours~st314data$Course)

##########PART 2 END ############################################################################# 


