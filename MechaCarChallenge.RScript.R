# DELIVERABLE 1
# 3. Use the library() function to load the dplyr package.
# library(dplyr) 

# 4. Import and read the MechaCar_mpg.csv file as a dataframe.
MechaCar <- read.csv(file='/Users/richellelong/Desktop/MechaCar_Statistical_Analysis/MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)
# head(MechaCar)

# 5. Perform linear regression using the lm() function, passing all six variables.
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar) 

# 6. Generate summary statistics
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCar))



# DELIVERABLE 2
# 2. Import and read the Suspension_Coil.csv file as a dataframe.
S_coil <- read.csv(file='/Users/richellelong/Desktop/MechaCar_Statistical_Analysis/Suspension_Coil.csv',check.names=F,stringsAsFactors = F)
# head(S_coil)

# 3. Create a total_summary dataframe using the summarize() function to get the mean, median, variance and the standard deviation 
#    of the suspension coil's PSI column
total_summary <- S_coil %>% summarise(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD =sd(PSI))

#4. Create a lot_summary dataframe using the group_by() and the summarize() functions to group each manufacturing lot by the mean, 
#   median, variance, and standard deviation of the suspension coil’s PSI
lot_summary <- S_coil %>% group_by(Manufacturing_Lot) %>% summarise(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD =sd(PSI))


# DELIVERABLE 3
# 1. Write an RScript using the t.test() function to determine if the PSI across all manufacturing lots is statistically different 
#    from the population mean of 1,500 pounds per square inch.
t.test(x = S_coil$PSI, mu=1500)


# 2. Write three more  RScripts using the t.test() function and its subset() argument to determine 
#    if the PSI for each manufacturing lot is statistically different from the population mean of 1,500 pounds per square inch.

# 2.a Lot1
# Create subset for lot 1 cars
Lot1 <- subset(S_coil, Manufacturing_Lot == 'Lot1')
# t test on lot 1 cars' PSI with a mean of 1500
t.test(x = Lot1$PSI, mu=1500)

# 2.b Lot2
# Create subset for lot 2 cars
Lot2 <- subset(S_coil, Manufacturing_Lot == 'Lot2')
# t test on lot 2 cars' PSI with a mean of 1500
t.test(x = Lot2$PSI, mu=1500)

# 2.c Lot3
# Create subset for lot 3 cars
Lot3 <- subset(S_coil, Manufacturing_Lot == 'Lot3')
# t test on lot 2 cars' PSI with a mean of 1500
t.test(x = Lot3$PSI, mu=1500)

                                                                                                