# Grp_5---Youtube-Trending

Project 2: YouTube Trending Data in US

**Group 5 Members:** 

·    Ishan Chakrabarty

·    Francis Escamilla

·    Adam Holcomb

·    Susan Quiros

 

**Objective**

​       The goal of the project is to apply the ETL concept using Pandas by extracting data from two different data sources (CSV and JSON), transform the data and import it into a relational (SQL) database. 

·    Data source: Kaggle: https://www.kaggle.com/rsrishav/youtube-trending-video-dataset?select=US_youtube_trending_data.csv

o  us_youtube_trending_data.csv – File includes descriptive data about YouTube videos and it’s trending records/points

o  us_category_id.json – Data set covers information regarding the video categories. 

·    Potential Database

o  Postgres

o  

**Potential database tables** 

**Video_table:**

Video id (pk)

Category id foreign key

Channel id foreign key

Title

published at

Tags

View count

Likes

 Dislikes

Description 

 

**Channel_table:**

Channel id (pk)

Chanel title  

 

**Category_table:**

 

Category id (pk)

Category title