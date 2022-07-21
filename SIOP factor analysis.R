
data <- read.csv("recodedforsiop.csv")[,-1] ## line 1562 of "study1.R" script

data$Structural <-      rowMeans(data[19:31], na.rm=TRUE)
data$Physical <-        rowMeans(data[c(32:60,62)], na.rm=TRUE)
data$Interpersonal <-   rowMeans(data[63:76], na.rm=TRUE)
data$Information.I <-   rowMeans(data[77:81], na.rm=TRUE)
data$Mental.P <-        rowMeans(data[82:91], na.rm=TRUE)
data$WorkOutput <-      rowMeans(data[92:100], na.rm=TRUE)
data$Interact.Others <- rowMeans(data[101:117], na.rm=TRUE)


library(corrr)
library(tidyr)

res.cor <- correlate(data[c(405:411)], use="pairwise.complete.obs")
res.cor %>% fashion()
res.cor %>% rearrange(method="MDS", absolute=FALSE) %>% shave(upper=FALSE) %>% rplot()

library(psych)
forfa <- cor(data[c(19:60,62:117)], use="pairwise.complete.obs")
fa.parallel(forfa, n.obs=568)

efa <- fa(forfa, rotate="oblimin", nfactors=8, n.obs=568, scores=TRUE, alpha=.1)
summary(efa)
