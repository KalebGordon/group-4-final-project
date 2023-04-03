# Group 4 Final Project

![](img/emissions.jpg)
# Overview 

## Description of the dataset

The dataset we chose for our final project contains emission totals per country from The Food and Agriculture Organization. The dataset covers dates January 1, 2000 through December 31, 2020.  The following statistics are tracked in this dataset: area (country), item (source of emission), element (type of emission), unit (emissions = kilotons), and year (total emissions for each year). This dataset was derived from The Food and Agriculture Organization’s Emissions Total Data and The Food and Agriculture Organization’s Definitions and Standards. 

## Selected Topic and Reasoning

For this project, we opted to look at enviornmental data and see if the amount of emissions made by each country had any predictable trends and could be fit into a machine learning model. A dataset containing twenty years of emissions data was selected, [Total Emissions per Country (2000-2020)](https://www.kaggle.com/datasets/justin2028/total-emissions-per-country-2000-2020 "Kaggle Dataset"), in order to lead to a better predictive performance and to better fit our machine learning model. 

Furthermore, we want to see if we are able to make predictions using this dataset and the machine learning model, and see if environmental protection agreements have had any impact on the environment and amount of emissions produced each year. 

## Questions we plan to answer with the project
•	Can we predict deaths in a given year, based on emissions?  

# Methodoloy and Technologies Used


## Data Exploration

### Cleaning the Data

An AWS database and bucket were created to host our files. Afterwards, we pulled our CSVs into a jupyter notebook and cleaned them with Pyspark and Pandas. Then we submitted them to our PostgreSQL server for database management in the future. 

As a part of cleaning the data, we removed null values and renamed columns. In addition, we removed columns that were not associated with our analysis in the Causes of Death data. Afterwards, we removed every row that did not having a matching "Area" counterpart in the opposite dataframe. 

#### Total Emissions DataFrame
![total_emissions](img/total_emissions.png)

#### Causes of Death DataFrame
![death_df](img/death_df.png)

#### Population DataFrame
![PopluationTable](https://user-images.githubusercontent.com/114450503/228995060-981dd4bb-e200-457d-b96e-1b783a27d9d6.png)

#### Combined DataFrame
![CombinedDataFrame](https://user-images.githubusercontent.com/114450503/228995337-e5837967-91ec-4245-8445-72cade180274.png)

Because the dataset we selected was in a wide format, the data had to be pivoted before we could upload it to PgAdmin to create our tables. However, once the data was pivoted, a list of every unique area in the dataframes was made, as well as a list of areas that were shared. Those were then pivoted and merged together, and finally the 'Reset Index' command was used on the fully merged and cleaned dataset before it was exported for our machine learning model and final visualizations.

#### Merging the Datasets
![](img/merging_df.png)

#### Finished and Cleaned Dataset
![](img/cleaning_df.png)

#### Building and Joining the Tables
Finally, the pivoted and cleaned dataset was imported into PgAdmin, showing the tables and columns of the dataset. Using an Entity Relationship Diagram Website, the ERD shows the columns of the dataset and how joins were made. 

![](img/erd.png)

## Machine Learning

### Model Choice

Based on the datasets, a supervised model was selected for a linear regression model. 

### Splitting the Data

The x and y variables were split into training and testing sets. Total emissions and population values were the x variable for the linear regression model, and the y variable was death rate. 

![](img/x_train-y_train.png)

A linear regression model was created to show the deaths based on emissions. 

## Model Visualization

We created a 3d scatter using our variables from our linear regression model. This model confirms a visual lack of correlation between variables. 

![](img/3d_scatter.png)

### Accuracy Score
Mean Squared Error: 7.46e-7

R^2: 0.0283

With a low R^2 and a comparably high mean squared error in relation to our dependent variable, our model is not predictive using current data. 

![](img/accuracy_score.png)
## Dashboards

Preliminary dashboards were created in Tableau to vizualize the data to allow us to view potential trends. 

#### Emissions by Type
![](img/emissions_by_type.png)

#### Emission Count by Emission Type
![](img/emissioncount.-byemissiontypepng.png)

#### Outdoor Air Pollution Deaths by Country
![](img/OutdoorAirPollutionDeathbyCountry.png)


### Progress on Project

![](https://github.com/KalebGordon/group-4-final-project/blob/segment-01-submission/img/progress_bar.gif)


Currently the project is 66% completed. 
    
### Link to Tableau Story

[Emissions](https://public.tableau.com/views/Emissions_16792565110550/Story1?:language=en-US&publish=yes&:display_count=n&:origin=viz_share_link "Tableau Story")

[Link for Tableau Dashboard](https://public.tableau.com/app/profile/elizabeth.cadorette/viz/Group_4_FinalProject/Sheet1?publish=yes "Tableau Story")

### Google Slides

[Google Slides](https://docs.google.com/presentation/d/17nsmgnkjf4xi-R-cXexJHX-mQI7eQgDptAdhs7Cl7a0/edit?usp=sharing "Presentation")



