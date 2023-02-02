####### Deliverable 1 #######

# Load the dpylr package
library(dplyr)

# Import and read the MechaCar_mpg.csv
MechaCar_data <- read.csv(file='Data/MechaCAr_mpg.csv',check.names=F,stringsAsFactors = F)

# Perform linear regression using all six variables (columns)
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD ,data=MechaCar_data)

# Summarize to get p-value
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD ,data=MechaCar_data))


####### Deliverable 2 #######

# import and read in the Suspension_Coil.csv file as a table
suspension_coil_table <- read.csv(file='Data/Suspension_Coil.csv', check.names=F, stringsAsFactors=F)

# Create dataframe and get summary statistics
total_summary <- suspension_coil_table %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups='keep')

# Create a lot summary dataframe using group_by() and summarize()
lot_summary <- suspension_coil_table %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups='keep')


####### Deliverable 3 #######

# t-test for PSI across all lots
t.test(suspension_coil_table$PSI,mu = 1500)

# t-tests for PSI for each lot
lot1 <- subset(suspension_coil_table, Manufacturing_Lot=='Lot1')
t.test(lot1$PSI,mu=1500)

lot2 <- subset(suspension_coil_table, Manufacturing_Lot=='Lot2')
t.test(lot2$PSI,mu=1500)

lot3 <- subset(suspension_coil_table, Manufacturing_Lot=='Lot3')
t.test(lot3$PSI,mu=1500)
