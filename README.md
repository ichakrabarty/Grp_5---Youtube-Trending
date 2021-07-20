# Grp_5---Youtube-Trending Project Report

### Objective

The goal of the project is to apply the ETL concept using Pandas by extracting data from two different data sources (CSV and JSON), transform the data and import it into a relational (SQL) database.

### Datasets Used

Used Kaggle as the source of data for the project. The dataset provides the top trending videos on the YouTube platform.  It captures measurements of user interactions such as number of views, shares and likes.  Given complete data set is over one gigabyte in size, we opted to take the subset of data that covers only the US.  The name of the files and links to the source are listed below. 

-  us_youtube_trending_data.csv 


- us_category_id.json

 https://www.kaggle.com/rsrishav/youtube-trending-video-dataset?select=US_youtube_trending_data.csv

### Data Transformation Steps Taken

In addition to data manipulation to address loading issues, below are some of the transformations performed.

* Selection of relevant columns from CSV to analyze and put in a dataframe
* Changed format of date time to simple date for importing
* Extracted contents of JSON into a dataframe
* Created subset data frames for each of the tables 
* Created TitleID and ChannelID (added reference columns to main dataframe)
* Dropped duplicate values from Video dataframe on video ID. 
* Re-organization of columns to match SQL schema tables and names
* Used 

### Schemata  

Decided to use a SQL relational database for this project. The database was created using PostgresSQL. The   final schema design is in 3rd Normal form in order to reduce as much duplication of data as possible. The SQL code to create the database is :  youtubevids_tables_schema.sql 

