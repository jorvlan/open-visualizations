## Quick code example how to change visibility of objects in raincloudplots by changing the `alpha`
## author: Jordy van Langen
## Date: 31/05/2022
## 


## install packages
packages <- c("plyr", "lattice", "ggplot2", "dplyr", "readr", "rmarkdown","Rmisc")
if (length(setdiff(packages, rownames(installed.packages()))) > 0) {
  install.packages(setdiff(packages, rownames(installed.packages())))  
}
if (!require(devtools)) {
  install.packages("devtools")
}
devtools::install_github('erocoar/gghalves')


## Load packages

library("plyr")
library("lattice")
library("ggplot2")
library("dplyr")
library("readr")
library("rmarkdown")
library("Rmisc")
library("devtools")
library("gghalves")


## Load dataset
before = iris$Sepal.Length[1:50]
after = iris$Sepal.Length[51:100]
n <- length(before)
d <- data.frame(y = c(before, after),
                x = rep(c(1,2), each=n),
                id = factor(rep(1:n,2)))

## include some jitter

set.seed(321)
d$xj <- jitter(d$x, amount=.09)

# width and height variables for saved plots

w = 6
h = 4
# Define limits of y-axis

y_lim_min = 4
y_lim_max = 7.5

## Create figure

f5 <- ggplot(data = d, aes(y = y)) +
  
  #Add geom_() objects
  
  geom_half_violin(
    data = d %>% filter(x=="1"),aes(x = x, y = y), position = position_nudge(x = 0), 
    side = "l", fill = 'dodgerblue', alpha = .8) +
  
  geom_half_violin(
    data = d %>% filter(x=="2"),aes(x = x, y = y), position = position_nudge(x = 0), 
    side = "r", fill = "darkorange", alpha = .3) +
  
  geom_half_boxplot(
    data = d %>% filter(x=="1"), aes(x=x, y = y), position = position_nudge(x = 0), 
    side = "r",outlier.shape = NA, center = TRUE, errorbar.draw = FALSE, width = .2, 
    fill = 'dodgerblue', alpha = .8) +
  
  geom_half_boxplot(
    data = d %>% filter(x=="2"), aes(x=x, y = y), position = position_nudge(x = 0), 
    side = "r",outlier.shape = NA, center = TRUE, errorbar.draw = FALSE, width = .2, 
    fill = 'darkorange', alpha = .3) +
  
  geom_point(data = d %>% filter(x =="1"), aes(x = xj), color = 'black', size = 1.5, 
             alpha = .3) +
  geom_point(data = d %>% filter(x =="2"), aes(x = xj), color = 'black', size = 1.5, 
             alpha = .8) +
  
  
  #Define additional settings
  scale_x_continuous(breaks=c(1,2), labels=c("Before", "After"), limits=c(0, 3)) +
  xlab("Condition") + ylab("Value") +
  #ggtitle('Figure 5: Repeated measures with box- and violin plots') +
  theme_classic()+
  coord_cartesian(ylim=c(y_lim_min, y_lim_max))
f5