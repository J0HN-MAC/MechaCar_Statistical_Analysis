# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG
###Output from the linear regression model using multiple independent variables
![This is an image](Images/mpg_lm.png)
Here we can see the slope cefficients (r-values) of the five independent variables. Vehicle weight and spoiler angle are considered to have no to very weak correlation to fuel efficiency (mpg) since their absolute values are less than 0.3. Vehicle length, ground clearance, and AWD are considered to have strong correlations to fuel efficiency since their absolute values are greater than 0.7. 

###Some summary statistics of the linear regression model
![This is an image](Images/mpg_lm_summary.png)
The above Pr(>|t|) values represent the probability that each coefficient contributes a random amount of variance to the linear model. Since the Pr(>|t|) values are very low for vehicle length and ground clearance, they are statistically likely to provide non-random amounts of variance to the linear model. In other words, vehicle length and ground clearance are likely to have a significant impact on fuel efficiency.

The r-squared value (~0.71) means that around 71% of all mpg predictions will be correct when using this linear model. The p-value of 5.35e-11 is much less than 0.05% (significance level) which means that the slope of our linear model is not zero.

## Summary Statistics on Suspension Coils

### Suspension Coil PSI Summary for All Lots
![This is an image](Images/total_summary.png)

### Suspension Coil PSI Summary for Individual Lots
![This is an image](Images/lot_summary.png)

The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. The variance for all lots combined fall within the acceptable variance range, but the variance for Lot 3 (170PSI) far exceeds the 100PSI limit.





## Deliverable 3
