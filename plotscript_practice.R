#Open the Submission .rmd
#Run chunks up to the source recodes chunk (named, `generalrecodes`), and then use the data object
#to create the ggplot

library(ggplot2)
library(plyr)
library(dplyr)

#Demands (resources ratings)
#These are the literature-based categories, and composites - means - of Onet item ratings
data$resources_workpressure <- rowMeans(subset(data, select = c(item120, item121)), na.rm = TRUE)
data$resources_phyworkload_wkover <- rowMeans(subset(data, select = c(item122, item137, item138,
                                                                      item139, item141, item142,
                                                                      item143)), na.rm = TRUE)
data$resources_timepressure <- rowMeans(subset(data, select = c(item125, item126)), na.rm = TRUE)
data$resources_recipientcontact <- rowMeans(subset(data, select = c(item149, item154, item157, 
                                                                    item160, item186, item188, 
                                                                    item192, item197, item200, 
                                                                    item201, item151)), na.rm = TRUE)
data$resources_phyenvironment <- rowMeans(subset(data, select = c(item128, item129,	item130, item132,
                                                                  item133,item134,	item136,	item144,	item146,
                                                                  item147,	item148,	item177,	item180,
                                                                  item182,	item181,	item183)), na.rm = TRUE)
data$resources_emotionaldemands <- rowMeans(subset(data, select = c(item150, item155, item199)), na.rm = TRUE)

#Demands (challenge ratings)
#These are the literature-based categories, and composites - means - of Onet item ratings
data$challenge_workpressure <- rowMeans(subset(data, select = c(item290, item291)), na.rm = TRUE)
data$challenge_phyworkload_wkover <- rowMeans(subset(data, select = c(item292, item307, 
                                                                      item309, item310,	item312,
                                                                      item313,	item314)), na.rm = TRUE)
data$challenge_timepressure <- rowMeans(subset(data, select = c(item295, item296)), na.rm = TRUE)
data$challenge_recipientcontact <- rowMeans(subset(data, select = c(item319, item324, item327,
                                                                    item330, item356, item358,
                                                                    item362, item367, item370,
                                                                    item371, item321)), na.rm = TRUE)
data$challenge_phyenvironment <- rowMeans(subset(data, select = c(item298, item299, item300, item302,
                                                                  item303, item304,item306, item315, item316,
                                                                  item317, item318, item347, item350,
                                                                  item352, item351, item353)), na.rm = TRUE)
data$challenge_emotionaldemands <- rowMeans(subset(data, select = c(item320, item325, item369)), na.rm = TRUE)

#Demands (hindrance ratings)
#These are the literature-based categories, and composites - means - of Onet item ratings
data$hindrance_workpressure <- rowMeans(subset(data, select = c(item205, item206)), na.rm = TRUE)
data$hindrance_phyworkload_wkover <- rowMeans(subset(data, select = c(item207, item222,item223,
                                                                      item224, item226, item227,
                                                                      item228)), na.rm = TRUE)
data$hindrance_timepressure <- rowMeans(subset(data, select = c(item210, item211)), na.rm = TRUE)
data$hindrance_recipientcontact <- rowMeans(subset(data, select = c(item233, item238, item241, 
                                                                    item244, item271, item273,
                                                                    item277,	item282,	item285,
                                                                    item286, item235)), na.rm = TRUE)
data$hindrance_phyenvironment <- rowMeans(subset(data, select = c(item213, item214, item215, item217,
                                                                  item218, item219, item221, item229,
                                                                  item230,	item231,	item232,	
                                                                  item262, item265, item267, item266,
                                                                  item286)), na.rm = TRUE)
data$hindrance_emotionaldemands <- rowMeans(subset(data, select = c(item234, item239, item284)), na.rm = TRUE)

#Resources (resource ratings)
#These are the literature-based categories, and composites - means - of Onet item ratings
data$resource_jobcontrol <- rowMeans(subset(data, select = c(item124, item127)), na.rm = TRUE)
data$resource_participation <- rowMeans(subset(data, select = c(item158, item159,
                                                                item172,	item174, item175,
                                                                item189, item193, item202)), na.rm = TRUE)
data$resource_teamcohesion <- rowMeans(subset(data, select = c(item161, item190, item191)), na.rm = TRUE)
data$resource_autonomy <- rowMeans(subset(data, select = c(item118, item172)), na.rm = TRUE)

#Resources (challenge ratings)
#These are the literature-based categories, and composites - means - of Onet item ratings
data$challenge_jobcontrol <- rowMeans(subset(data, select = c(item294, item297)), na.rm = TRUE)
data$challenge_participation <- rowMeans(subset(data, select = c(item328, item329, item342,
                                                                 item344, item345, item359, item363,
                                                                 item372)), na.rm = TRUE)
data$challenge_teamcohesion <- rowMeans(subset(data, select = c(item331, item360, item361)), na.rm = TRUE)
data$challenge_autonomy <- rowMeans(subset(data, select = c(item288, item342)), na.rm = TRUE)

#Resources (hindrance ratings)
#These are the literature-based categories, and composites - means - of Onet item ratings
data$hindrance_jobcontrol <- rowMeans(subset(data, select = c(item209, item212)), na.rm = TRUE)
data$hindrance_participation <- rowMeans(subset(data, select = c(item242, item243, item257,	item259,
                                                                 item260,	item274,	item278,
                                                                 item287)), na.rm = TRUE)
data$hindrance_teamcohesion <- rowMeans(subset(data, select = c(item245, item275, item276)), na.rm = TRUE)
data$hindrance_autonomy <- rowMeans(subset(data, select = c(item203, item257)), na.rm = TRUE)

#check the autonomy variables
summary(data$hindrance_autonomy)
summary(data$challenge_autonomy)
summary(data$resource_autonomy)
library(tidyr)

toplot <- gather(data, scale, value, resources_workpressure:hindrance_autonomy, factor_key=TRUE)

library(stringr)
toplot$type <- str_sub(toplot$scale, 1,6)
toplot$onet <- str_sub(toplot$scale, 10,-1)

toplot$type[toplot$type == "challe"] <- "Challenge"
toplot$type[toplot$type == "hindra"] <- "Hindrance"
toplot$type[toplot$type == "resour"] <- "Resource"       ## change `onet` later if want to keep graphs

toplot$onet[toplot$onet == "teamcohesion"] <- "Team Cohesion"       
toplot$onet[toplot$onet == "_teamcohesion"] <- "Team Cohesion"  
toplot$onet[toplot$onet == "participation"] <- "Participation"       
toplot$onet[toplot$onet == "_participation"] <- "Participation"  
toplot$onet[toplot$onet == "jobcontrol"] <- "Job Control"       
toplot$onet[toplot$onet == "_jobcontrol"] <- "Job Control"  
toplot$onet[toplot$onet == "autonomy"] <- "Autonomy"       
toplot$onet[toplot$onet == "_autonomy"] <- "Autonomy"  

toplot$onet[toplot$onet == "_emotionaldemands"] <- "Emotional Demands"          ## added 11/18/22 (Hudson)  
toplot$onet[toplot$onet == "_phyenvironment"] <- "Physical Environment"  
toplot$onet[toplot$onet == "_phyworkload_wkover"] <- "Overwork"  
toplot$onet[toplot$onet == "_recipientcontact"] <- "Recipient Contact"  
toplot$onet[toplot$onet == "_timepressure"] <- "Time Pressure"  
toplot$onet[toplot$onet == "_workpressure"] <- "Work Pressure"  

toplotgg <- ddply(toplot, c("type", "onet"), summarise, average = mean(value, na.rm=TRUE))

table(toplot$onet)

## Probably want to change this to a facet: 3 different grids grouped by literature-described 1) resource, 2) hindrances, and 3) challenge

toplotgg$facet <- c("Lit Resource", "Lit Demand", "Lit Resource", "Lit Demand", "Lit Resource", "Lit Demand", "Lit Demand", "Lit Resource", "Lit Demand", "Lit Demand",
                    "Lit Resource", "Lit Demand", "Lit Resource", "Lit Demand", "Lit Resource", "Lit Demand", "Lit Demand", "Lit Resource", "Lit Demand", "Lit Demand",
                    "Lit Resource", "Lit Demand", "Lit Resource", "Lit Demand", "Lit Resource", "Lit Demand", "Lit Demand", "Lit Resource", "Lit Demand", "Lit Demand")


##############################################################
##############################################################
################    Plots

demandsplot <- filter(toplotgg, facet == "Lit Demand")
resourcesplot <- filter(toplotgg, facet == "Lit Resource")


## Demands

demandsplot$onet <- factor(demandsplot$onet, levels=c("Work Pressure", "Recipient Contact", "Emotional Demands", "Time Pressure", "Physical Environment", "Overwork"))

a <- ggplot(data=demandsplot, aes(x=onet, y=average, fill=type)) + 
  geom_bar(stat="identity", position=position_dodge(), color="black") + coord_flip(ylim=c(1,5)) + scale_fill_manual(values=c("#000000","#cccccc","#ffffff")) +
  scale_x_discrete(labels=function(x){sub("\\s", "\n", x)}) +
  theme(legend.title=element_blank(), legend.position="none",  panel.border = element_rect(colour = "black", fill=NA, size=.5), axis.title.x = element_blank(), axis.title.y = element_blank())

## Resources

resourcesplot$onet <- factor(resourcesplot$onet, levels=c("Team Cohesion", "Autonomy", "Participation", "Job Control"))

b <- ggplot(data=resourcesplot, aes(x=onet, y=average, fill=type)) + 
  geom_bar(stat="identity", position=position_dodge(), color="black") + coord_flip(ylim=c(1,5)) + scale_fill_manual(values=c("#000000","#cccccc","#ffffff")) +
  scale_x_discrete(labels=function(x){sub("\\s", "\n", x)}) +
  theme(legend.title=element_blank(), legend.position="bottom",  panel.border = element_rect(colour = "black", fill=NA, size=.5), axis.title.x = element_blank(), axis.title.y = element_blank())

################################################################
################################################################
################################################################

library("gridExtra")
grid.arrange(a, b, ncol = 2, nrow = 1)

#I am still thinking about which variables we want n's for, but
#this might work.
library(Hmisc)
describe(data)
