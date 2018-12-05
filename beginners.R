#A matrix is a 2-dimensional array. It is created with the matrix function
#When creating a matrix, we can specify the dimensions of the rows and columns
first.matrix <- matrix(1:24, ncol = 4)
first.matrix

#The byrow option indicates whether the matrix should be filledd in by row (byrow = TRUE) or by column (byrow = FALSE)
#The default is by column
second.matrix <- matrix(1:24, ncol = 4, byrow = TRUE)
second.matrix

#The str function enables us view the structure of our data
str(first.matrix)


#The dim function tells us the number of rows and colums we have
dim(first.matrix)

#The length function specifies how many elements in total we have
length(first.matrix)

#Let's take a look at another function
baskets.of.granny <- c(12, 7, 8, 9, 10, 16)
baskets.of.dads <- c(8, 12, 9, 4, 20, 2)

#The rbind function is used to combine objects by row,
#For example the code below combines baskets.of.dads and baskets.of.granny by row
basket.team <- rbind(baskets.of.dads, baskets.of.granny)
basket.team

#The cbind function is used to combine objects by column,
#For example the code below combines baskets.of.dads and baskets.of.granny by column
basket.team1 <- cbind(baskets.of.dads, baskets.of.granny)
basket.team1

#We can also identify rows, columns or elements of a matrix by using subscripts and brackets
#For example in the code below, first.matrix[2,] refers to the second row of matrix first.matrix
first.matrix
first.matrix[2,]

#While in matrix basket.team, ["baskets.of.dads", 4] refers to the 4th column in the baskets.of.dads row
basket.team ["baskets.of.dads", 4]

#We can also change the names of the columns in the first.matrix matrix using the colnames function
colnames(first.matrix) <- c('jerry', 'tolulope', 'emmanuel', 'justice')
first.matrix
