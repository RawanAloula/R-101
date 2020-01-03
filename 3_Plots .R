

# Base R

# Scatter 
#linear  
plot(x,y, xlab = "Body Mass", ylab = "Energy Expenditure")


# plot scatter of x1 and x2 color coded by x3 (categorial data) of two levels 
plot(housing$logUnits, housing$logValue, col = factor(housing$after1950), xlab = "log(Units)", ylab = "y name")
legend("bottomright", legend = levels(factor(housing$after1950)), fill = unique(factor(housing$after1950)))


# plot scatter of x1 and x2 color coded by x3 (categorial data) multiple levels
plot(Data$x1[Data$x3 == "Manhattan"], Data$x2[Data$x3 == "Manhattan"])
points(Data$x1[Data$x3 == "Brooklyn"], Data$x2[Data$x3 == "Brooklyn"])
legend("bottomright", legend = c("Manhattan", "Brooklyn"), fill = c("black", "red"))



#LinearReg line
#all data
lm1 <- lm(y ~ x)
abline(lm1)

#line for each catigory
categories  <- levels(data$x3)
col_counter <- 1

for (i in categories) {
  this_cat    <- data$x3 == i
  this_data   <- data$x3[this_cat, ]
  this_lm     <- lm(log(data$x1) ~ log(data$x2))
  
  abline(this_lm, col = col_counter)           # line for each 
  col_counter <- col_counter + 1
}


#log log 
plot(log(data$x1), log(data$x2), col = data$x3)                                                  # points color coded by data$x3
legend("bottomright", legend = levels(data$x3), fill = 1:length(levels(data$x3)), cex = .5)


#Additions 
abline(int, slope , col = "orange", lty = 2 )              # creat a line    (set slop to 0 if you want horizantal line at point "int")
points(-0.4, 6.8,  pch = "*", col = "purple")              # highlight a point 
text(-0.4, 6.8 - .2, "bla bla", cex = .5)              # text next to the highlited point


# Histogram 
#continuous variable   
hist(diamonds$carat, main = "Histogram of Carats", xlab = "Carats", breaks = 100)

# Barplot 
#categorical variables
barplot(heights, labels)

levels(diamonds$cut)                                                                             # check the levels arrangment
diamonds$cut <- factor(diamonds$cut, level = c("Fair","Good", "Very Good", "Premium", "Ideal"))  # rearrange the level so that it makes more sense

barplot(height = table(diamonds$cut), names.arg = names(table(diamonds$cut)))                     # table for frequency of each classification


# Boxplot 
boxplot(y ~ x, xlab = "x name", ylab = "y name")





# 2 plots in one row 

par(mfrow=c(1,2),mai=c(.5,.4,.5,.4))                        # mai for margins 

barplot(height = table(diamonds$cut), 
        names.arg = names(table(diamonds$cut)),
        main="title")

pie(table(diamonds$cut), labels = names(table(diamonds$cut)),
    main="title",cex=.75)






-------------------------------------------------------------


# 2- ggplot 


library(ggplot2)


# scatter 
ggplot(Data, aes(x,y)) + geom_point(alpha = 1/4, colour = "#09c4be", size = 1) +
  xlab("x name") + ylab("y name") +
  labs(title = "title", subtitle = "subtitle") +
  theme_minimal()  

# scatter all color coded
ggplot(data = Data) + 
  geom_point(mapping = aes(x= var1, y= var2 , color= var3))


# plot scatter of x1 and x2 color coded by x3 (categorial data) of two levels 
ggplot(housing, aes(x1, x2, col=as.factor(Data$x3))) + geom_point(alpha = 1/4, size = 1) +
  xlab("x name") + ylab("y name") +
  labs(title = "title", subtitle = "subtitle") + 
  scale_color_manual(values= c("#e89b27", "#c42000"), name="Year Built", labels=c("Before 1950", "After 1950")) +
  theme_minimal()  


# plot scatter of x1 and x2 color coded by x3 (categorial data) multiple levels
plot_data <- subset(housing, Borough == "Manhattan" | Borough == "Brooklyn", 
                    select=c(logValue, logUnits, Borough))

ggplot(plot_data, aes(logUnits, logValue, col=as.factor(plot_data$Borough))) + geom_point(alpha = 1/4, size = 1) +
  xlab("x name") + ylab("y name") +
  labs(title = "title", subtitle = "subtitle") +
  scale_color_manual(values= c("#bc32bc", "#1c8fb2"), name="Borough", labels=c("Brooklyn", "Manhattan")) +
  theme_minimal()  



# Boxplot 
ggplot(Data, aes(x,y)) + geom_boxplot(fill = "red", colour = "#a3a4a8", alpha = 0.8) +
  xlab("x name") + ylab("y name") +
  labs(title = "title", subtitle = "subtitle") +
  theme_minimal() 



# Barplot

ggplot(diamonds) + geom_bar(aes(x=cut))

