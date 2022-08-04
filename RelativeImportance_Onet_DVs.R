data <- read.csv("SIOPcleaned.csv")      ## from "datacleaning.R" script

## O*NET categories

data$onet.resource.ii <- rowMeans(data[c(162:166)], na.rm=TRUE)
data$onet.resource.mp <- rowMeans(data[c(167:176)], na.rm=TRUE)
data$onet.resource.wo <- rowMeans(data[c(177:185)], na.rm=TRUE)
data$onet.resource.io <- rowMeans(data[c(186:202)], na.rm=TRUE)
data$onet.resource.ir <- rowMeans(data[c(149:161)], na.rm=TRUE)
data$onet.resource.pc <- rowMeans(data[c(128:144,146:148)], na.rm=TRUE)
data$onet.resource.sc <- rowMeans(data[c(118:127)], na.rm=TRUE)

overall.resource <- rowMeans(data[c(118:144,147:202)], na.rm=TRUE)

data$onet.hindrance.ii <- rowMeans(data[c(246:247,249:252)], na.rm=TRUE)
data$onet.hindrance.mp <- rowMeans(data[c(252:261)], na.rm=TRUE)
data$onet.hindrance.wo <- rowMeans(data[c(262:270)], na.rm=TRUE)
data$onet.hindrance.io <- rowMeans(data[c(271:287)], na.rm=TRUE)
data$onet.hindrance.ir <- rowMeans(data[c(233:245)], na.rm=TRUE)
data$onet.hindrance.pc <- rowMeans(data[c(213:232)], na.rm=TRUE)
data$onet.hindrance.sc <- rowMeans(data[c(203:212)], na.rm=TRUE)

overall.hindrance <- rowMeans(data[c(203:247,249:287)], na.rm=TRUE)

data$onet.challenge.ii <- rowMeans(data[c(332:336)], na.rm=TRUE)
data$onet.challenge.mp <- rowMeans(data[c(337:346)], na.rm=TRUE)
data$onet.challenge.wo <- rowMeans(data[c(347:355)], na.rm=TRUE)
data$onet.challenge.io <- rowMeans(data[c(356:372)], na.rm=TRUE)
data$onet.challenge.ir <- rowMeans(data[c(319:331)], na.rm=TRUE)
data$onet.challenge.pc <- rowMeans(data[c(298:307,309:318)], na.rm=TRUE)
data$onet.challenge.sc <- rowMeans(data[c(288:297)], na.rm=TRUE)

overall.challenge <- rowMeans(data[c(288:307,309:372)], na.rm=TRUE)

data$burnout      <- rowMeans(data[c(373:376)], na.rm=TRUE)
data$stress       <- rowMeans(data[c(377:379)], na.rm=TRUE)
data$engagement   <- rowMeans(data[c(380:399)], na.rm=TRUE)        ## added 10/12 because analyses too wonky with 3 subscales

# Regression predicting engagement from resources
engagepredict.res<-lm(data$engagement ~ data$onet.resource.ii + 
                    data$onet.resource.mp + 
                    data$onet.resource.wo + 
                    data$onet.resource.io + 
                    data$onet.resource.ir +
                    data$onet.resource.pc +
                    data$onet.resource.sc
                    )
summary(engagepredict.res)

# Regression predicting stress from resources
stresspredict.res<-lm(data$stress ~ data$onet.resource.ii + 
                    data$onet.resource.mp + 
                    data$onet.resource.wo + 
                    data$onet.resource.io + 
                    data$onet.resource.ir +
                    data$onet.resource.pc +
                    data$onet.resource.sc
)
summary(stresspredict.res)

# Regression predicting burnout from resources
burnoutpredict.res<-lm(data$burnout ~ data$onet.resource.ii + 
                    data$onet.resource.mp + 
                    data$onet.resource.wo + 
                    data$onet.resource.io + 
                    data$onet.resource.ir +
                    data$onet.resource.pc +
                    data$onet.resource.sc
)
summary(burnoutpredict.res)

# Regression predicting engagement from challenge
engagepredict.chal<-lm(data$engagement ~ data$onet.challenge.ii + 
                    data$onet.challenge.mp + 
                    data$onet.challenge.wo + 
                    data$onet.challenge.io + 
                    data$onet.challenge.ir +
                    data$onet.challenge.pc +
                    data$onet.challenge.sc
)
summary(engagepredict.chal)

# Regression predicting stress from challenges
stresspredict.chal<-lm(data$stress ~ data$onet.challenge.ii + 
                    data$onet.challenge.mp + 
                    data$onet.challenge.wo + 
                    data$onet.challenge.io + 
                    data$onet.challenge.ir +
                    data$onet.challenge.pc +
                    data$onet.challenge.sc
)
summary(stresspredict.chal)

# Regression predicting burnout from challenges
burnoutpredict.chal<-lm(data$burnout ~ data$onet.challenge.ii + 
                     data$onet.challenge.mp + 
                     data$onet.challenge.wo + 
                     data$onet.challenge.io + 
                     data$onet.challenge.ir +
                     data$onet.challenge.pc +
                     data$onet.challenge.sc
)
summary(burnoutpredict.chal)

# Regression predicting engagement from hindrance
engagepredict.hind<-lm(data$engagement ~ data$onet.hindrance.ii + 
                    data$onet.hindrance.mp + 
                    data$onet.hindrance.wo + 
                    data$onet.hindrance.io + 
                    data$onet.hindrance.ir +
                    data$onet.hindrance.pc +
                    data$onet.hindrance.sc
)
summary(engagepredict.hind)

# Regression predicting stress from hindrances
stresspredict.hind<-lm(data$stress ~ data$onet.hindrance.ii + 
                    data$onet.hindrance.mp + 
                    data$onet.hindrance.wo + 
                    data$onet.hindrance.io + 
                    data$onet.hindrance.ir +
                    data$onet.hindrance.pc +
                    data$onet.hindrance.sc
)
summary(stresspredict.hind)

# Regression predicting burnout from hindrances
burnoutpredict.hind<-lm(data$burnout ~ data$onet.hindrance.ii + 
                     data$onet.hindrance.mp + 
                     data$onet.hindrance.wo + 
                     data$onet.hindrance.io + 
                     data$onet.hindrance.ir +
                     data$onet.hindrance.pc +
                     data$onet.hindrance.sc
)
summary(burnoutpredict.hind)

