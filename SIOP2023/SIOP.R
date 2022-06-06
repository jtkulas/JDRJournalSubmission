## Looking at DV associations across tenure and maybe gender (possible SIOP submission)


temp <- read.csv("initial_data_screen.csv", header=FALSE, na.strings="")   ## NOTE: 404 vars (9/28/21) make sure to check indexing used throughout script

x <- paste("item", sep="",1:404)
y <- t(temp[2,])
## decluttering Qualtrics excess
data <- temp[-c(1:3),]                                           ## Getting rid of all 3 weird Qualtrics rows
colnames(data) <- x

incomplete <- read.csv("inprogress.csv", header=FALSE, na.strings="")   ## NOTE: 404 vars (9/28/21) make sure to check indexing used throughout script

data2 <- incomplete[-c(1:2),-c(10,12,16,113,199,285,371,379,400, 406:411)]                                          

data3 <- as.data.frame(cbind(data2$V8,data2$V9,data2$V1,data2$V1,data2$V1,data2$V1,data2$V1,data2$V1,data2))

colnames(data3) <- x

rm(x, y, temp)       

use <- rbind(data,data3)

## STILL NEED FILE WITH BAD RESPONDENTS IDENTIFIED (E.G., Item_18=2, na > 200, longstring > 20, CARELESS CHECKS > 1)

library(careless)
use$careless_long <- longstring(use[18:399])
use$missing <- rowSums(is.na(use[18:404])) 

different <- use[ which(use$item18 == 2 | use$careless_long > 20 | use$missing > 200), ]

attention <- use[which(use$item61 == 5 & use$item145 == 5 & use$item248 == 2 & use$item308 == 3), ]

data <- data.frame(lapply(attention, function(x) as.numeric(as.character(x))))
data <- data[,c(1:404)]

numtot <- nrow(use)
numkicked <- nrow(different)
numvalid <- nrow(data)


