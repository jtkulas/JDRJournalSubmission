
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

<<<<<<< HEAD
##Here's where we started - it appears that based on scree plot, 8 factors might be appropriate.
##Figure out how many factors - an option
efa <- fa(data[c(19:60,62:117)], rotate="oblimin", nfactors=8, n.obs=568, scores=TRUE, alpha=.1) ## changed to data so can get factor scores
=======
##Here's where we started - it appears that based on scree plot, 8 factors migth be appropriate.
##Figure out how many factors - an option
efa <- fa(data[c(19:60,62:117)], rotate="oblimin", nfactors=8, n.obs=568, scores=TRUE, alpha=.1) ## changed to data so can get factor scores
>>>>>>> 69cdeaa28fdbafc29b5f0f9f68326640db2736a4
summary(efa)

together <- cbind(data, efa$scores)

res.cor <- correlate(together[c(405:413)], use="pairwise.complete.obs")
res.cor %>% fashion()
res.cor %>% shave(upper=FALSE) %>% rplot()

efa$loadings
print(efa$loadings,cut=.3,digits=2)

##Next, trying the 2 overarching factors we noted first:
efa <- fa(forfa, rotate="oblimin", nfactors=2, n.obs=568, scores=TRUE, alpha=.1)
summary(efa)

efa$loadings
print(efa$loadings,cut=.3,digits=2)

## Try 7 factor solution next. 
efa <- fa(forfa, rotate="oblimin", nfactors=7, n.obs=568, scores=TRUE, alpha=.1)
summary(efa)

efa$loadings
print(efa$loadings,cut=.3,digits=2)

<<<<<<< HEAD
## Try 9 factor solution next. 
efa <- fa(forfa, rotate="oblimin", nfactors=9, n.obs=568, scores=TRUE, alpha=.1)
summary(efa)

efa$loadings
print(efa$loadings,cut=.3,digits=2)

=======
>>>>>>> 69cdeaa28fdbafc29b5f0f9f68326640db2736a4
