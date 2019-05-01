library(readr)
library(dplyr)
library(texreg)
library(lazyeval)
library(ggplot2)
library(curl)
library(Zelig)
library(ggrepel)
library(HistData)
library(tidyverse)
library(ggthemes)

# scatterplot representing crackdrug with respect to usage and frequecy 

drugusebyage <- read.csv("C:/Users/urvas/Desktop/3rd sem/Advance Topics in Computer Science/Project/project_0699357/drug-use-by-age.csv")
head(drugusebyage) 

ggplot(data = drugusebyage, aes(x = crack.use, y = crack.frequency)) +
  geom_point() 


ggplot(data = drugusebyage, aes(x = crack.use, y = crack.frequency)) +
  geom_point() +
  geom_smooth(method = "lm") 

ggplot(data = drugusebyage, aes(x = crack.use, 
                                 y = crack.frequency, 
                                 label = age)) + 
  geom_point() + 
  geom_smooth(method = "lm") + 
  geom_text()  

ggplot(data = drugusebyage, aes(x = crack.use, 
                                 y = crack.frequency, 
                                 label = age
)) +
  geom_smooth(method = "lm") + 
  geom_text(check_overlap = T,
            angle = 32,
            size = 2.9) + 
  labs(title = "crack drugs consumed by people", 
       x = "Crack drug usage ", 
       y = "Crack drug Frequency" )

drugusebyage <- drugusebyage %>% select(2:10)
drugusebyage[] <- lapply(drugusebyage, as.logical)
# make bar plot
ggplot(drugusebyage, aes(x = crack.use)) + 
  geom_bar()  

ggplot(drugusebyage, aes(x = crack.use,
                          fill = cocaine.use)) +
  geom_bar(position = "dodge") 

# make bar plot
ggplot(drugusebyage, aes(x = crack.use,
                          fill = cocaine.use
)) +
  geom_bar(position = "dodge", size = 2) + 
  facet_wrap(c("cocaine.use")) +
  scale_fill_manual(values=c("#BBBBBB", 
                             "#E69F00")) + 
  labs(title = "Usage of cocaine highre then crack ", # title
       x = "crack or cocaine ?",
       y = "Count of people") + 
  theme(legend.position = c(0.9, 0.9), 
        strip.background = element_blank(), 
        strip.text.x = element_blank())  
