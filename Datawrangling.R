drugusebyage <- read.csv("C:/Users/urvas/Desktop/3rd sem/Advance Topics in Computer Science/Project/project_0699357/drug-use-by-age.csv")
library(dplyr)
#1.Usage of alcohol?
drugusebyage %>% filter(alcohol.use==83.1)
#2.Usage of marijuana?
drugusebyage %>% filter(marijuana.use==7.3) 
#3.Usage of painreleiver and oxycontin?
drugusebyage %>% filter(pain.releiver.use==9, oxycontin.use==12) 
#4. Usage of crack?
drugusebyage %>% filter(crack.use == "0.5") 
#5. Usage of heroin?
drugusebyage %>% filter(heroin.use==0.1)
#6. Frequencies of tranquilizer , meth and sedative?
drugusebyage %>% filter(tranquilizer.frequency==25.5, meth.frequency==2.0,sedative.frequency==16.5) #shows all the frequencies 
