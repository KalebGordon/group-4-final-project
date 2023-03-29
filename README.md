# Group 4 Final Project
    
# Overview 

## Description of the dataset   

The dataset we chose for our final project contains emission totals per country from The Food and Agriculture Organization. The dataset covers dates January 1, 2000 through December 31, 2020.  The following statistics are tracked in this dataset: area (country), item (source of emission), element (type of emission), unit (emissions = kilotons), and year (total emissions for each year). This dataset was derived from The Food and Agriculture Organization’s Emissions Total Data and The Food and Agriculture Organization’s Definitions and Standards. 

## Selected Topic and Reasoning

For this project, we opted to look at enviornmental data and see if the amount of emissions made by each country had any predictable trends and could be fit into a machine learning model. A dataset containing twenty years of emissions data was selected, [Total Emissions per Country (2000-2020)](https://www.kaggle.com/datasets/justin2028/total-emissions-per-country-2000-2020 "Kaggle Dataset"), in order to lead to a better predictive performance and to better fit our machine learning model. 

Furthermore, we want to see if we are able to make predictions using this dataset and the machine learning model, and see if environmental protection agreements have had any impact on the environment and amount of emissions produced each year. 

## Questions we plan to answer with the project
•	Within a given year, can we predict the CO2 level based on emissions? 

•	What was the impact of any environmental protection accords on a given year? An example is the Paris Climate Agreement and the emissions impact. 

## Cleaning the Data
Created an AWS database and bucket to host our files. Afterwards, we pulled our CSVs into a jupyter notebook and cleaned them with pyspark and pandas. Then we submitted them to our PostgreSQL server for database management in the future. 

As a part of cleaning the data, we removed null values and renamed columns. In addition, we removed columns that were not associated with our analysis in the Causes of Death data. Afterwards, we removed every row that did not having a matching "Area" counterpart in the opposite dataframe. 

### Progress on Project

![](https://github.com/KalebGordon/group-4-final-project/blob/segment-01-submission/img/progress_bar.gif)

Currently the project is 33% completed.

## Outline for Presentation/Visualizations:

1) Intro Page - overview of the presentation

2) Snapshot of the tables being used.
    - Total Emissions Table
    - Outdoor Air Pollution Table
    - Summary statistics Table(s)

3) How we decided to use the data
    - Highlight columns or point out key features of the data from the previous tab
    - Possibly include simple visuals to help explain the data
    - Include main question being asked

4) Maching Learning Model - still deciding which to do
    - Regression Model - predicting emissions next year for a country
        - Would it be interesting to do multiple?
    - Unsupervised Learning - Finding clusters in the emission types
        - Is there any geographical pattern that emerges from the clusters? 
    - Neural Network Model? 

5) Answered question - applying the models, what it means for the data/predictions

6) Summary
    - Did the models actually answer the question
    - Was there other data or queries that could have been helpful
    - Any roadblocks or cool things worth sharing
    
### Link to Tableau Story

[Emissions](https://public.tableau.com/views/Emissions_16792565110550/Story1?:language=en-US&publish=yes&:display_count=n&:origin=viz_share_link "Tableau Story")

[Link for Tableau Dashboard](https://public.tableau.com/app/profile/elizabeth.cadorette/viz/Group_4_FinalProject/Sheet1?publish=yes "Tableau Story")

### Google Slides

[Google Slides](https://docs.google.com/presentation/d/17nsmgnkjf4xi-R-cXexJHX-mQI7eQgDptAdhs7Cl7a0/edit?usp=sharing "Presentation")

