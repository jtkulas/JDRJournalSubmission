
dt <- read.csv("recodedforsiop.csv")[,-1] ## line 1562 of "study1.R" script

set.seed(42)

temp = sort(sample(nrow(dt), nrow(dt)*.5))
data<-dt[temp,]
cfa<-dt[-temp,]

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

###############################
## trying some cluster analyses
cluster1 <- kmeans(data[,405:411], 2, nstart=20)
cluster1

cluster1$cluster <- as.factor(cluster1$cluster)

library(ggplot2)
ggplot(data, aes(Interact.Others, Interpersonal, color=cluster1$cluster)) + geom_point(size=5, alpha=.5)

ggplot(data, aes(Structural, Interpersonal, color=cluster1$cluster)) + geom_point(size=5, alpha=.5)

################################################################
################################################################

cluster2 <- kmeans(data[,c(19:60, 62:117)], 2, nstart=20)    ## item responses

cluster2$cluster <- as.factor(cluster2$cluster)

## Physical

a <- ggplot(data, aes(Physical, Structural, color=cluster2$cluster)) + geom_point(size=5, alpha=.5) + theme(legend.position="none")

b <- ggplot(data, aes(Physical, Interpersonal, color=cluster2$cluster)) + geom_point(size=5, alpha=.5) + theme(legend.position="none")

c <- ggplot(data, aes(Physical, Information.I, color=cluster2$cluster)) + geom_point(size=5, alpha=.5) + theme(legend.position="none")

d <- ggplot(data, aes(Physical, Mental.P, color=cluster2$cluster)) + geom_point(size=5, alpha=.5) + theme(legend.position="none")

e <- ggplot(data, aes(Physical, WorkOutput, color=cluster2$cluster)) + geom_point(size=5, alpha=.5) + theme(legend.position="none")

f <- ggplot(data, aes(Physical, Interact.Others, color=cluster2$cluster)) + geom_point(size=5, alpha=.5) + theme(legend.position="none")

library(cowplot)
plot_grid(a,b,c,d,e,f)

## Interact.Others

a <- ggplot(data, aes(Interact.Others, Structural, color=cluster2$cluster)) + geom_point(size=5, alpha=.5) + theme(legend.position="none")

b <- ggplot(data, aes(Interact.Others, Interpersonal, color=cluster2$cluster)) + geom_point(size=5, alpha=.5) + theme(legend.position="none")

c <- ggplot(data, aes(Interact.Others, Information.I, color=cluster2$cluster)) + geom_point(size=5, alpha=.5) + theme(legend.position="none")

d <- ggplot(data, aes(Interact.Others, Mental.P, color=cluster2$cluster)) + geom_point(size=5, alpha=.5) + theme(legend.position="none")

e <- ggplot(data, aes(Interact.Others, WorkOutput, color=cluster2$cluster)) + geom_point(size=5, alpha=.5) + theme(legend.position="none")

f <- ggplot(data, aes(Interact.Others, Physical, color=cluster2$cluster)) + geom_point(size=5, alpha=.5) + theme(legend.position="none")

plot_grid(a,b,c,d,e,f)

############################### Neat looking but not really anything meaningful - 8/4/22 with Alicia at Monticello Caribou
###############################

library(psych)
forfa <- cor(data[c(19:60,62:117)], use="pairwise.complete.obs")
fa.parallel(forfa, n.obs=284)

##Here's where we started - it appears that based on scree plot, 8 factors might be appropriate.
##Figure out how many factors - an option
efa <- fa(data[c(19:60,62:117)], rotate="oblimin", nfactors=8, n.obs=568, scores=TRUE, alpha=.1) ## changed to data so can get factor scores

##Here's where we started - it appears that based on scree plot, 8 factors migth be appropriate.
##Figure out how many factors - an option
efa <- fa(data[c(19:60,62:117)], rotate="oblimin", nfactors=8, n.obs=568, scores=TRUE, alpha=.1) ## changed to data so can get factor scores
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

write.csv(efa$loadings, "forgirls.csv")
write.csv(print(efa$loadings,cut=.3,digits=2))

## Try 7 factor solution next. 
efa <- fa(forfa, rotate="oblimin", nfactors=7, n.obs=568, scores=TRUE, alpha=.1)
summary(efa)

efa$loadings
print(efa$loadings,cut=.3,digits=2)

## Try 9 factor solution next. 
efa <- fa(forfa, rotate="oblimin", nfactors=9, n.obs=568, scores=TRUE, alpha=.1)
summary(efa)

efa$loadings
print(efa$loadings,cut=.3,digits=2)

#This is for the whole dataset, not half.
efa.whole <- fa(forfa, rotate="oblimin", nfactors=2, n.obs=568, scores=TRUE, alpha=.1)
summary(dt)

efa.whole$loadings
print(efa.whole$loadings,cut=.3,digits=2)

cor(efa.whole$loadings[,1], efa$loadings[,1])


library(lavaan)

## based on 7-factor EFA: 
empirical <- 'MR5 =~ item43 + item40 + item51 + item37 + item35 + item33 + item60 + item46 + item62 + item36 + item47 + item59 + item100 + item52 + item41 + item97 + item39 + item53 + item45 + item49 + item38 + item32 + item42 
        MR2 =~ item56 + item95 + item98 + item58 + item50 + item54 + item112 + item38 + item92 + item48 + item53 + item80 + item71 + item104 + item21 + item75 + item68 + item55 
        MR1 =~ item79 + item82 + item88 + item86 + item81 + item78 + item109 + item91 + item113 + item83 + item85 + item99 + item90 + item94 + item84 + item93 + item80 + item87 + item96
        MR6 =~ item106 + item76 + item107 + item64 + item105 + item108 + item104 + item73 + item63 + item89 + item69 + item102 + item75
        MR3 =~ item67 + item66 + item114 + item70 + item101 + item115 + item112 + item34 + item103 + item65
        MR4 =~ item42 + item23 + item110 + item24 + item65 + item103 + item22 + item97 + item75 
        MR7 =~ item117 + item28 + item90 + item102 + item89 + item29 + item26
        First =~ 1*MR1 + 1*MR3 + 1*MR4 + 1*MR6 + 1*MR7
        Second =~ 1*MR2 + 1*MR5
        First ~~ First
        Second ~~ Second' 

emp.hier <- cfa(empirical, data=cfa) 
summary(emp.hier,fit.measures=TRUE,standardized=TRUE)
semPlot::semPaths(emp.hier, "std")

## based on O*NET

onet <- 'Structural =~ item19 + item20 + item21 + item22 + item23 + item24 + item25 + item26 + item27 + item28 + item29 + item30 + item31   
        Physical =~ item32 + item33 + item34 + item35 + item36 + item37 + item38 + item39 + item40 + item41 + item42 + item43 + item44 + item45 + item46 + item47 + item48 + item49 + item50 + item51 + item52 + item53 + item54 + item55 + item56 + item57 + item58 + item59 + item60 + item62   
        Interpersonal =~ item63 + item64 + item65 + item66 + item67 + item68 + item69 + item70 + item71 + item72 + item73 + item74 + item75 + item76    
        Information =~ item77 + item78 + item79 + item80 + item81  
        Mental =~ item82 + item83 + item84 + item85 + item86 + item87 + item88 + item89 + item90 + item91  
        WorkOutput =~ item92 + item93 + item94 + item95 + item96 + item97 + item98 + item99 + item100   
        Interact =~ item101 + item102 + item103 + item104 + item105 + item106 + item107 + item108 + item109 + item110 + item111 + item112 + item113 + item114 + item115 + item116 + item117   
        Context =~ 1*Structural + 1*Physical + 1*Interpersonal
        Activity =~ 1*Information + 1*Mental + 1*WorkOutput + 1*Interact
        Context ~~ Context
        Activity ~~ Activity' 

onet.hier <- cfa(onet, data=cfa) 
summary(onet.hier,fit.measures=TRUE,standardized=TRUE)
semPlot::semPaths(onet.hier, "std")
