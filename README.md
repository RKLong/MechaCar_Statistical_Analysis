# MechaCar_Statistical_Analysis
UCB Challenge: Using statistics and hypothesis testing to statistics and hypothesis testing to analyze a series of datasets from the automotive industry; All statistical analysis and visualizations will be written in the R programming language.
 
# Linear Regression to Predict MPG

## Linear Regression
![linearregression](resources/linearregression.png)

The linear regression model produced a Y-Intercept of -1.040e+02 and slope coefficients for each factor listed underneath that respective factor.

## Multiple Regression Summary
![Stat_summary](resources/stat_summary.png)

* The values in the last column of the summary, Pr((>|t|), represents the probability that each coefficient contributes a random amount of variance to the linear model. According to our results, vehicle length and ground clearance (including the intercept) are statistically unlikely to provide random amounts of variance to the linear model. In other words the vehicle length and ground clearance have a significant impact on the mechacar's fuel consumption or fuel economy, as measured in miles per gallon or mpg. These two variables have a significance level less than 0.05. On the other hand, the vehicle weight, spoiler angle, and drivetrain or AWD have p-Values that indicate a random amount of variance with the dataset.

* The p-Value for this linear model is 5.35e-11, which is much smaller than the assumed significance level of 0.05%. It indicates that there is enough evidence to reject the null hypothesis; which also indcates that the slope of this linear model is not zero.

* The r-squared value in this linear model is is 0.7149. This value tells us that this linear model can predict the fuel economy of the mechacar prototype about 71% of the time. It also means that there may or may not be other variables that could possibly contribute to the additional ~29% of variance that are not included in our model.

# Summary Statistics on Suspension Coils
The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. The two separate summaries will look into the variance(s) of the suspension coils. 

## Total Summary of all manufacturing lots
![total_summary](resources/total_summary.png)

When studied or observed as a single group, we can see that there is a variance of 62.3 psi, which means that they suspension coild do not exceed the maximum value of 100 lbs/in^2

## Summary Grouped by Manufacturing Lot
![lot_summary](resources/Lot_summary.png)
Lot 3 is out of specs with a variance of 170.3 psi.On the lot level, Lot 1 and Lot 2 are into specs with respectively variances of 0.98 and 7.5 psi.

When we look at the total summary table, we would say that as a whole the suspension coils are up to par with a variance of 62.29, and do not exceeed the maximum variance allowed by the design specifications of 100 lbs/sq in. However, when we look at the grouped tables by lot, we can see that production lot 3 almost doubles the maxiumum allowed variance with a value of 170.28. This one lot is skewing the total variance significantly, and suggests that the suspension coils produced in this lot have PSIs that are wildly inconsistent.

# T-Test on Suspension Coils

## T-Test all manufacturing lots against the population mean
![all_lots](resources/all_lots.png)
text here

### Lot 1
![Lot1](resources/Lot1.png)
text here

### Lot 2
![Lot2](resources/Lot2.png)
text here

### Lot 3
![Lot3](resources/Lot3.png)
text here

# Comparing the MechaCar to the Competition
