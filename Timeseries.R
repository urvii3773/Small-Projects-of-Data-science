drugusebyage <- read.csv("C:/Users/urvas/Desktop/3rd sem/Advance Topics in Computer Science/Project/project_0699357/drug-use-by-age.csv")

#1.Plotting the time series of the column stimulant.frequency by converting into a time series
drugusebyage <- rev(drugusebyage$stimulant.frequency)
drugusebyage <- ts(drugusebyage, frequency = 12)
plot.ts(drugusebyage)

#2. Applying the log additive model to the time series and plotting  result.
drugusebyage_log <- log(drugusebyage)
plot.ts(drugusebyage_log)


#3.Smoothing the drugsusebyage using the Holtwinter() method and plotting the result.
library("forecast")
drugusebyage_Holtw <- HoltWinters(drugusebyage, beta = FALSE, gamma = FALSE)
plot(drugusebyage_Holtw)
plot(forecast(drugusebyage_Holtw))
