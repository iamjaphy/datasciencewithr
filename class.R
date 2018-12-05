#A matrix is a 2-dimensional array. It is created with the matrix function.
first.matrix <- matrix(1:12, ncol = 4)
first.matrix

second.matrix <- matrix(1:12, ncol = 4, byrow = TRUE)
second.matrix

str(first.matrix)
dim(first.matrix)
length(first.matrix)

baskets.of.granny <- c(12, 7, 8, 9, 10, 16)
baskets.of.dads <- c(8, 12, 9, 4, 20, 2)

basket.team <- rbind(baskets.of.dads, baskets.of.granny)
basket.team

basket.team1 <- cbind(baskets.of.dads, baskets.of.granny)
basket.team1

first.matrix
first.matrix[2,]
basket.team ["baskets.of.dads", 4]

colnames(first.matrix) <- c('jerry', 'tolulope', 'emmanuel', 'justice')
first.matrix
View(iris)
View(mtcars)
View(cases)
?pollution
?storms

devtools::install_github("rstudio/EDAWR")
'force = TRUE'
library(EDAWR)
cases$country
names(cases)[-1]
unlist(cases[1:3,2:4])
storms$pressure / storms$wind
gather(cases, "year", "n", 2:4)
spread(pollution, size, amount)
gather(pollution, size, city)
storms2 <- separate(storms, date, c("year", "month","day" ), sep = "-")
storms2
unite(storms2, "date", year, month, day, sep = "-")
storms

select(storms, storm, pressure)
select(storms, wind:date)

filter(storms, wind >=50)
filter(storms, wind >=50, storm %in% c("Alberto", "Alex", "Allison") )

mutate(storms, ratio = pressure / wind)
mutate(storms, ratio = pressure / wind, inverse = ratio^-1)
pollution %>% summarise(median = median(amount), variance = var(amount))

pollution %>% summarise(mean = mean(amount), sum = sum(amount), n = n())
arrange(storms, wind)

arrange(storms, desc(wind))

arrange(storms, wind, date)

storms %>% select(storm, pressure)
pollution %>% group_by(city) %>% summarise(mean = mean(amount), sum = sum(amount), n = n())
pollution %>% group_by(city) %>% summarise(mean = mean(amount))
pollution %>% ungroup()





