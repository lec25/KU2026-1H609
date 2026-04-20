install.packages("mapdata")
library(mapdata)
map('japan')


## 2
library(readxl)
data <- read_xlsx("names.xlsx")
data2 <- data[data$種別=="学生" & data$出席 == 1,]

data2$group <- sample(rep(1:3, length.out = nrow(data2)))

