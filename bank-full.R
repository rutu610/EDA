# Exploratory Data Analysis
# Bank Marketing dataset from UCI

# check the working directory
getwd()
# set the working directory
setwd("D:\\R\\EDA\\Bank\\bank")

# Import the dataset
data<-read.csv("bank-full.csv",header=T)

# Allow us to view the dataset
View(data)

# Look at the column names
names(data)

# ddimensions (number of rows and columns)
dim(data)

# Structure of the dataset
str(data)

# Type of the data
class(data)

# Display first 6 rows (default)
head(data)
# Display first 5 rows
head(data, n=5)

# Display last 6 rows (default)
tail(data)
# Display last 5 rows
tail(data, n=5)

# Install the necessary packages
install.packages(c("Hmisc","psych","pastecs"))
library(Hmisc)
library(psych)
library(pastecs)

# Shows results for both continuous and categorical variable
summary(data)

# Subset the data by taking 4 variables
a<-c("age","marital","education","housing")
eda_data<-data[a]
names(eda_data)

# Univariate analysis on variable age
summary(eda_data$age)

# describe() from Hmisc package
describe(eda_data$age)

# stat.desc() from pastecs package
stat.desc(eda_data$age)


# Graphs
# Histogram
hist(eda_data$age,
	main="Histogram of Age",
	xlab="Age in years")

# Boxplot
boxplot(eda_data$age,
        main = toupper("Boxplot of Age"),
        ylab = "Age in years",
        col = "blue")

# Kernel density plot
d <- density(eda_data$age)
plot(d, main = "Kernel density of Age")
polygon(d, col = "red", border = "blue")