## need to run "Submission_ResourceCount.Rmd" chunks to load objects in environment prior to running the below (9/23/22)

rc <- read.csv("resource_challenge.csv")
rh <- read.csv("resource_hind.csv")
ch <- read.csv("hind_challenge.csv")

rc$type <- "Resource-Challenge"
rh$type <- "Resource-Hindrance"
ch$type <- "Challenge-Hindrance"

forgraph <- rbind(rc,rh,ch)

library(ggplot2)

#ggplot(forgraph, aes(x = mean, fill = type)) +
#  geom_density(alpha = .3) +
#  xlab("Percent Agreement") + labs(fill = "Att/Engage\nInteraction") 

p <- ggplot(forgraph, aes(x = mean)) + geom_histogram()
p + facet_wrap(~type, nrow=3)

## lotsa variance in resource-challenge agreement. Next look for either content (O*Net category) or contextual (job) moderator

rc$scale <- c(rep("Structural",10), rep("Physical", 20), rep("Interpersonal",13), rep("Information Input", 5), rep("Mental Processes", 10), rep("Work Output", 9), rep("Interact with Others", 17)) 

# ggplot(rc, aes(x=mean)) + geom_histogram() + facet_wrap(~scale, nrow=7)

ggplot(rc, aes(x = mean, fill = scale)) +
  geom_density(alpha = .3) +
  xlab("Percent Agreement") + labs(fill = "ONET grouping") 
