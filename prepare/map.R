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

## 5th
set.seed(10)
data5 <- data[data$種別=="学生" & data$"attend5" == 1,-c(7:17)]
data5$group5 <- sample(rep(1:3, length.out = nrow(data5)))
data5


## 6th
set.seed(6)
data6 <- data[data$種別=="学生" & data$"attend6" == 1,-c(7:20)]
data6$group6 <- sample(rep(1:3, length.out = nrow(data6)))
data6


## 7th
set.seed(7)+
data7 <- data[data$種別=="学生" & data$"attend7" == 1,-c(7:22)]
data7$group7 <- sample(rep(1:3, length.out = nrow(data7)))
data7
