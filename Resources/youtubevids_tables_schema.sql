--Create Database 
--CREATE DATABASE youtubevids
--    WITH 
--    OWNER = postgres
--    ENCODING = 'UTF8'
--    CONNECTION LIMIT = -1;

-- Create tables for Project2 Youtube ETL Project
-- Before creating any tables, drop the tables if the already exsists
DROP TABLE Videos;
DROP TABLE Category;
DROP TABLE Channel;
DROP TABLE Titles;

--create Titles table
CREATE TABLE Titles (
	TitleID integer PRIMARY KEY NOT NULL,
	Title text  NOT NULL
);

--create Channel table
CREATE TABLE Channel (
    ChannelID varchar(50)  PRIMARY KEY NOT NULL,
    ChannelTitle text   NOT NULL
);

--create Category table
CREATE TABLE Category (
    CategoryID integer PRIMARY KEY NOT NULL,
    CategoryTitle text  NOT NULL   
);

--create Videos table
CREATE TABLE Videos (
    VideoID varchar(30) PRIMARY KEY NOT NULL,  
    PublishedAt date   NOT NULL,
    ChannelID varchar(50)   NOT NULL,
	FOREIGN KEY (ChannelID) REFERENCES Channel(ChannelID),
    CategoryID integer   NOT NULL,
	FOREIGN KEY (CategoryID) REFERENCES Category(CategoryID),
	TitleID integer,
	FOREIGN KEY(TitleID) REFERENCES Titles(TitleID),
    TrendingDate date   NOT NULL,
    ViewCount integer    NOT NULL,
    Likes integer   NOT NULL,
    Dislikes integer    NOT NULL
);
