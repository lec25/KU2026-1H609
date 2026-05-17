install.packages("mapdata")
library(mapdata)
map('japan')


## 2
library(readxl)
data <- read_xlsx("names.xlsx")

## last time
data2 <- data[data$種別=="学生" & data$"出席3" == 1,-c(7:14,16)]
data2

## this time
data3 <- data[data$種別=="学生" & data$"attend4" == 1,-c(7:15)]
data3$group4 <- sample(rep(1:3, length.out = nrow(data3)))
data3
