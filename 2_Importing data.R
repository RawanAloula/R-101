


# Starter Steps 
# 1- import data 
# 2- check str(data)for datafram, head() and tail()   for html data
# 3- factor all categorial variables
data$x1 <- factor(data$x1)
diamonds$cut  <- factor(diamonds$cut)

# 4- remove any NA values  
apply(is.na(Data), 2, sum)          # how many missing values in each col of the dataframe 
Data <- Data[!(is.na(Data$x1)),]    # remove the rows of the dataset for which the variable x1 is NA


# 5- visualize the data 
# 4.1 categorical variables 
levels(diamonds$cut)                                                                             #check the levels arrangment
diamonds$cut <- factor(diamonds$cut, level = c("Fair","Good", "Very Good", "Premium", "Ideal"))  #rearrange the level so that it makes more sense
#barplot(heights, labels)
barplot(height = table(diamonds$cut), names.arg = names(table(diamonds$cut)))                     # table for frequency of each classification

#4.2 continuous variable
hist(diamonds$carat, main = "Histogram of Carats", xlab = "Carats")
hist(diamonds$carat[diamonds$carat < 3], breaks = seq(0,3,by=.1), main = "Histogram of Carats", xlab = "Carats")  # filtered


------------------------------------------------------------------------

# 1- import data locally 
  
# Set working directory
setwd("~/Desktop/Data")     # or go to Files (bottom-right window) -> More -> Set as working dirctory 

getwd()                     # tells your currunt working directory

data <- read.table("Data.txt", header=FALSE, as.is=TRUE, sep=argument)  # in.txt format,"as.is=TRUE" means we want set factors manually, if data is separated by something other than space
data <- read.csv("Data.csv", header = TRUE, as.is = TRUE) 
data <- scan("Data.txt", what = "")                                     # anything from the file separated by whitespace."what =" specify the type of data (numeric is default) and  ""  is for character values



# 2- import from R database 
data <- iris                # iris is already in R database



# 3- import from internet 
data <- readLines("Data.html",warn = FALSE)   # the link should be in the directory,  "warn" is to suppress the warning

head(data)   # visually inspect what line does the data begins, ends 
tail(data) 
data[8:15]      

date_express <- "^[0-9]{4}/[0-9]{2}/[0-9]{2}"     # extract the data from page based on date pattern 

head(grep(data, pattern = date_express, value = TRUE))

grep(data, pattern = date_express, invert = TRUE, value = TRUE)   # check what data is left 


------------------------------------------------------------------------

# Exporting data 
write.table()    # the defaul is col.names = TRUE , row.names = TRUE
write.csv()    
