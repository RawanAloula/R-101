
# 1- Basics 

# ctrl + shift + c           multi-line commets

# help 
?function_name

#create vector   c( )
x <- c(5, 29, 13, 87)
x <- c(1, c(1,2,3))       # combine the values in one vectore 
x <- 1:50                 # all numbers from 1 to 50
x <- rnorm(100,mean=10,sd=3)    
x <- rep(1, 18)           # ctreate 18 elements of 1 
x <- rep(c("bla1","bla2"),c(3,4))  # repeat bla1 3 times and bla2 4 times
x <- NULL                 # empty vector 
x <- factor(group)        # "group" is qualitative data, factor classifies categorical variable (group) into diffrent levels


#assigne elements 
x <- c()
x[1] <- TRUE
x <- as.integer(3)  # sepcify the vraible when assigning 


#create matrix  matrix( )
x <- matrix(1:9, nrow = , ncol= )                  #fills by col
x <- matrix(1:9, nrow = , ncol=  , byrow = TRUE)   #fills by row
x[1,1] <- 3

small_data <- data[sample(1:rows, 1000), ]         # creat a smaller sample of 1000 observations from the original data 


data <- cbind(x1, x2)   # combine vectors as 2 col matrix 
data <- rbind(x1, x2)   # combine vectors as 2 row  matrix 

# naming col and rows
colnames(x) <- c("bla", "bla2")
rownames(X) <- c("bla", "bla2")


# creat list    list( )
x <- list(name1 = object1, name2 = object2)    # elements doesnt have to be in the same mode  #names called "tags"  # example Set1 slide 117


# create a data frame data.frame()
x <- data.frame(bla1, bla2, bla3, stringsAsFactors = FALSE)   # stringsAsFactors = TRUE, is the default, turns character vectors into a factor variable, instead we want set factors manually.



# Subsetting & filtering (more on Operations file)
# vectors
x[3:5]
x[c(1,3)]       # returns only elemnt 1 and 3 from a vector 
x[-c(1,3)]      # returns all other elements
x[c(1,3)] <- 0  # set there element to zero
x <- x[-1]      # removes the first value


#matrix and dataframes
x[ ,3:5]      # all rows of col 3-5
x[ ,"bla"]    # subset by col name 
x[ , -1]      # last col
cbind(A,B)    # combine matrices col    (check dimensions first A,B)
rbind(A,B)    # rombine matrices rows   (check dimensions first A,B)

data$bla2                        # col bla2 in dataframe / matrix 
data[data$bla2 == "2", ]         # return all colums based on filtring bla2 
data[data$bla2 == "2", "bla1"]   # return col (bla1) only, based on filtring bla2 
data$new_col_name <- "vlue"      # add a new column and assigne it a valu (only works on datafram not matrix)

data$new_x <- ifelse(Data$x1 > Q3, "High", "NotHigh")        # creat a new variable based on certain condition 

new_row <- data.frame(bla1="B", bla2=3, bla3="A")            # add a new row to data fram 
data <- rbind(data,new_row )


#list
x$object3         
x[[object3]] [1:3,]      # return row 1-3 of all col of object3 in list x
x[["neme of object3"]]
x["neme of object3"]     # note single bracket return a "list" of object3 , double bracket return thier original class 

split(x, list(factor1, factor2))  # splitting the input (vector) according to the groups of the factor. The output is a list.

# NOTE: list can have elements of diffrnt modes, vectors can't 

# Explore 
head(x,3)
str(x)      # internal structure 

nrow(data)
ncol(data)

length(x)   # Sample size / number of col
summary(x)  # Summary statistics
dim(x)      # matrix dimenstion  / datafram dimension 

#type of variables
mode(x)
typeof(x)
class(x)    

apply(is.na(Data), 2, sum)          # how many missing values in each col of the dataframe 
Data <- Data[!(is.na(Data$x1)),]    # remove the rows of the dataset for which the variable x1 is NA


# NULL and NA 
na.rm = TRUE           # to remove NA values
mean(t, na.rm = TRUE)  # if NA  is not removed it will return error (the mean wont be calculated)

# NOTE: NA is missing data, NULL doesn’t exist

