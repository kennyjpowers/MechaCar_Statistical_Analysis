# MechaCar_Statistical_Analysis
statistical analysis using rlang

## Linear Regression to Predict MPG

I ran a multiple linear regression test on the provided data to see how much variance in the mpg of the sampled vehicles is accounted for in a linear combination of ground clearance, spoiler angle, weight, length, and whether it was AWD.

### Input Data
![mpg data](Resources/mpg_dataframe.png)

### Output
![mpg data](Resources/linear_regression_output.png)

### Summary
Assuming a significance level of 0.05, ground clearance and vehicle length were statistically unlikely to provide random amounts of variance to the linear model, thus are significant features in the predictive model. The Intercept also had a p-value of less than 0.0001 which could indicate ground clearance or vehicle length may need scaling or transforming to improve the model, or there may be other variables that can help explain the variability in mpg.

The p-value for the model was far below the significance level of 0.05 as well, thus it is statistically likely that the slope of the linear model should not be considered 0.

The r-squared value of the model is 0.71 which indicates a fairly high probability of using the provided factors to predict mpg on the current data set. However, only having 2 significant factors could be evidence of overfitting and the model may not perform well on future data.






