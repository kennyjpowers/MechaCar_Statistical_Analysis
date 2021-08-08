library(dplyr)

df <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)
names(df)

summary(lm(mpg ~ AWD + ground_clearance + spoiler_angle + vehicle_weight + vehicle_length,data=df))#generate multiple linear regression model

suspension_table <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)

total_summary <- suspension_table %>% summarize(Mean=mean(PSI),Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups = 'keep') #create summary table with multiple columns

lot_summary <- suspension_table %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups = 'keep') #create summary table with multiple columns

# confirm the data looks approximately normal in shape
plt <- ggplot(suspension_table,aes(x=PSI)) #import dataset into ggplot2
plt + geom_density()

t.test(suspension_table$PSI,mu=1500) #compare sample versus population means

lot1 <- subset(suspension_table,Manufacturing_Lot=="Lot1")
t.test(lot1$PSI,mu=1500)

lot2 <- subset(suspension_table,Manufacturing_Lot=="Lot2")
t.test(lot2$PSI,mu=1500)

lot3 <- subset(suspension_table,Manufacturing_Lot=="Lot3")
t.test(lot3$PSI,mu=1500)
