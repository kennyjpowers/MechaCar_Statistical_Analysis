library(dplyr)

df <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)
names(df)

summary(lm(mpg ~ AWD + ground_clearance + spoiler_angle + vehicle_weight + vehicle_length,data=df))#generate multiple linear regression model
