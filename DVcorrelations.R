
data <- read.csv("recodedforsiop.csv")[,-1] ## line 1562 of "study1.R" script

## trying regression

data$stress       <- rowMeans(data[c(377:379)], na.rm=TRUE)
forregress <- data[, c(19:60, 62:117, 405)]

reg <- lm(stress~., forregress)

library(MASS)

step.model <- stepAIC(reg, direction="both", trace=FALSE)
summary(step.model)


















data$Structural <-      rowMeans(data[19:31], na.rm=TRUE)
data$Physical <-        rowMeans(data[c(32:60,62)], na.rm=TRUE)
data$Interpersonal <-   rowMeans(data[63:76], na.rm=TRUE)
data$Information.I <-   rowMeans(data[77:81], na.rm=TRUE)
data$Mental.P <-        rowMeans(data[82:91], na.rm=TRUE)
data$WorkOutput <-      rowMeans(data[92:100], na.rm=TRUE)
data$Interact.Others <- rowMeans(data[101:117], na.rm=TRUE)


## Study 2 DVs
data$item387      <- 7- data$item387           ## only reflected engagement item
data$absorption   <- rowMeans(data[c(380:386)], na.rm=TRUE)
data$vigor        <- rowMeans(data[c(387:392)], na.rm=TRUE) 
data$dedication   <- rowMeans(data[c(393:399)], na.rm=TRUE) 
data$cognitive    <- rowMeans(data[c(380:382, 387:388, 393:395)], na.rm=TRUE)
data$affective    <- rowMeans(data[c(383:384, 389:390, 396:397)], na.rm=TRUE) 
data$behavioral   <- rowMeans(data[c(385:386, 391:392, 398:399)], na.rm=TRUE) 
######################################################

data$burnout      <- rowMeans(data[c(373:376)], na.rm=TRUE)
data$stress       <- rowMeans(data[c(377:379)], na.rm=TRUE)
data$engagement   <- rowMeans(data[c(380:399)], na.rm=TRUE)        ## added 10/12 because analyses too wonky with 3 subscales

alpha.abs <- psych::alpha(data[c(380:386)])
alpha.vig <- psych::alpha(data[c(387:392)])
alpha.ded <- psych::alpha(data[c(393:399)])
alpha.eng <- psych::alpha(data[c(380:399)])
alpha.bur <- psych::alpha(data[c(373:376)])
alpha.str <- psych::alpha(data[c(377:379)])

library(corrr)
library(tidyr)

res.cor <- correlate(data[c(412:414, 418:419, 405:411)], use="pairwise.complete.obs")
res.cor %>% fashion()
res.cor %>% rearrange(method="MDS", absolute=FALSE) %>% shave(upper=FALSE) %>% rplot()

