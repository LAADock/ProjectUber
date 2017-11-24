# ProjectUber
Where will Uber go next...? 

Software Installations:
•	SQL Server 2014 Management Studio
•	Python 3
•	Anaconda 3
•	Jupyter Notebook Account
•	Tableau Server
•	Microsoft Excel
•	Zenhub

Sources of Research Data: 
•	Data.gov.uk
•	Nomiswed.co.uk

Research
	Cars: this data was all sourced from data.gov.uk:
•	Data on the average journey time to key places such as: work, schools, universities, GP/Hospital services, food services and town centres
•	Taxi data from the UK and New York City (NY data was not used for analysis
•	Car ownership by region and postcode districts
•	Dataset for PCA predictive analytics model 

Housing & Deprivation: sourced from data.gov.uk and the ONS

•	Data on deprivation by region
•	Mean house prices by MSOA
•	UK regional expenditure breakdowns

Employment Data: sourced from data.gov.uk

•	Employment and job density statistics by city 

Population Data: sourced from data.gov.uk

•	Population demographics by gender and age

Uber Data: sourced from google articles
•	Dates where Uber began trading in UK cities. 




Analysis
Taxi, PHV and Population Demographics
Taxi_PHV.xlsx contains statistics for taxis and PHVs (Private Hire Vehicles) across various regions in the UK from gov.uk. As this data didn’t include data for Scotland or Ireland, we decided to exclude the data for Wales and just focus on England. We focused on the total number of taxis and PHVs and pivoted this data (Taxi Vs PHV tab) so that it will be suitable for tableau. We added the number of taxis and PHVs for each area and date and calculated a percentage of PHVs and a percentage of Taxis.

We graphed the 2016 values for each area so we can compare the proportions of PHVs against taxis. We identified the top 3 areas where PHVs were more popular and taxis were not popular. Our further analysis was just for these areas.

The cities within these areas were identified and population data for these cities were gathered from nomis, a website for official labour market statistics (Population Demographics file). Data on whether uber operated in these cities was also collected ().

Population data was pivoted to make it tableau friendly and joined with the uber data. In tableau, the data was graphed on a map to indicate which cities had uber and which did not (in the areas filtered from earlier).

Preliminary statistics found that uber’s main age demographic were those aged 25-34 and their smallest demographic were those 54+. A dual axis was created on the uber map to show the percentage of 25-34 year olds for each area, and the same for those aged 55+.
We then compared these population values for cities without uber.  We identified areas with high number of 25-34 year olds and a lower number of people aged 55+. The optimum city was Coventry. 

Housing

This data was imported in SQL and pivoted so that the table would be neater/easier to read and if anything needed to be joined it could easily be joined on date or Local Authority.

Dashboards stored in Tableau Public and datasets found in SQL
Jupyter Notebooks
This includes notebooks on using pandas dataframes to identify the difference in journey times between cities that have uber and cities that do not in the years 2014 – 2015. 
Secondly, using the sklearn PCA package, a scatter graph can be found in the PCA script showing a correlation between journey times and several other factors including: population demographics, car ownership figures and the number of people within 30 minutes to key places. 

