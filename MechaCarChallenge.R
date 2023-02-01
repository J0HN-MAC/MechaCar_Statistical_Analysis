####### Deliverable 1 #######

# Load the dpylr package
library(dplyr)

# Import and read the MechaCar_mpg.csv
MechaCar_data <- read.csv(file='MechaCAr_mpg.csv',check.names=F,stringsAsFactors = F)

# Perform linear regression using all six variables (columns)
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + 
     ground_clearance + AWD ,data=MechaCar_data)

# Summarize to get p-value
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + 
             ground_clearance + AWD ,data=MechaCar_data))
