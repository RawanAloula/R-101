

# build a function 
Name <- function(x){
  S <- x*x
  return(S)
}
Name(3)  



# for loop 
for (i in x) {
  print(i^2)
}

# while loops 
while (i <= 2) {
  i <- i + 4
}


# if 
total <- 0
for (i in 1:10) {
  if( i > 3 ) {
    total <- total + i
    print(total)
  }
}


# if, else 
for (i in x) {
  if (i %% 2 == 0) {print(log(i))}
  else {print("Odd")}
}

# NOTE: the condition must be a single logical value (TRUE or FALSE) for while and if,else. 
#       set x <- NULL  as initial vector makes the loop faster


# Vectorized Operations
ifelse(test, yes, no)
ifelse( x > 3,  print("yes"), print("no"))

# NOTE : check comparison example between vectorized and iteration 




# Vectorized Operations 
# matrix/dataframe
apply(data, 1, sum)        # apply function sum  on  1=rows  or 2=col 

colSums(mat)                                   # sum of valuess of each col  , but much faster than apply()
colMeans(x, na.rm = TRUE)                      # means  after removing the NA values 


#list
lapply(list_x, mean)           # apply function and returns list     
unlist(lapply(list_x, mean))   # same but returns vector
sapply(list_x, mean)           # apply function and returns vector if possible    (ex: sapply(wordscoount, length) return frequencies of words)

# factor  (classifies categorical variables)
tapply(vector, factor(vector2), functionn)    # splits vector into groups according to the levels of the factor and apply function to each group.
tapply(ages, gender, mean)                    # return mean age for each gender 



# Common Functions
table()                           # contingency tables
contingency_table <- (tab1<-table(housing$Borough, housing$HighValu)/length(housing$HighValu))   # contingency tables example propotions
table(group1, group2)
split(x, list(factor1, factor2))  # splitting the input (vector) according to the groups of the factor. The output is a list.
round(x, digits = 0)
round(x/length("col1"), 3)        # Gives proportions with 3 digits


x <- NULL        # empty vector commly used for loop itirations


#Relational Operators
x < y
x > y
x <= y
x >= y   # compares element by element (x[1] with y[1], x[2] with y[2] ....)
x == y
x != y   # not equal 


x < 1     # asking if  vector x is less than 1 (return  vector of TRUE FALES)
x[x > 0]  # only return values greater than zero 


# logical operators 
(x > 3) & (x != 20)        #AND     vactor of TRUE FALES
(x > 3) | (x != 20)        #OR
        !                  #NOT
  
# Extract elements 
# vectors 
x[(x > 5) & (x != 13)]        #     vactor of values the satify this command

x <- c("Cat","Dog","Bat") 
x == "Dog"                    #     vactor of TRUE FALES
x[(x != "Dog")]               #     vector of charechters 
x[c(TRUE,FALSE,TRUE)]         #     gives the same result


x[x*x >= 3 & x*x <= 10]       #     x squares values between 3 and 10
x[x > v]                      #     return only elements of x greater than elements from v

# matrix 
A[A[,3] < 8 , ]               #    filter the rows of (col 3) by (values < 8) return all col after filtering. 
A[A > 5] <- 0                 #    replace all elemnts in matrix  > 5 with 0 
A[A[ ,"col2"], ]              #    if "col2" is binary (0,1) then we can filter the matrix by this col
A[(A[, "col1"] != 1), "col3"] #    filter col3 based on restrictions on col1
A[(A[, "col1"] != 1), "col3", drop = FALSE] # same thing but returns the col3 name as well (as a matrix)



# Character data operations
grep(pattern, string)
strsplit(string, split = ",")         #can use a regular expression to divide a string into avector


regexpr("a[a-z]", "Alabama")     # info about 1st match
gregexpr("a[a-z]", "Alabama")    # info about all matches 

regmatches("Alabama", gregexpr("a[a-z]", "Alabama"))   # what are the matches (the exact form)



#Examples:
grep("cat|dog|Dog", string)         # OR matech 
strsplit(string, split = "\\s+|([[:punct:]]+[[:space:]]+) ")  #either any number of white spacesorat least onepunctuation mark followed by at least one space 

