-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

-- Modify this code to update the DB schema diagram.
-- To reset the sample schema, replace everything with
-- two dots ('..' - without quotes).

CREATE TABLE "Videos" (
    "VideoID" varchar(20)   NOT NULL,
    "Title" string   NOT NULL,
    "PublishedAt" datetime   NOT NULL,
    "ChannelID" varchar(30)   NOT NULL,
    "CategoryID" int   NOT NULL,
    "TrendingDate" datetime   NOT NULL,
    "Tags" string   NOT NULL,
    "ViewCount" int   NOT NULL,
    "Likes" int   NOT NULL,
    "Dislikes" int   NOT NULL,
    CONSTRAINT "pk_Videos" PRIMARY KEY (
        "VideoID"
     )
);

CREATE TABLE "Channel" (
    "ChannelID" varchar(30)   NOT NULL,
    "ChannelTitle" string   NOT NULL,
    CONSTRAINT "pk_Channel" PRIMARY KEY (
        "ChannelID"
     )
);

CREATE TABLE "Category" (
    "CategoryID" int   NOT NULL,
    "CategoryTitle" string   NOT NULL,
    CONSTRAINT "pk_Category" PRIMARY KEY (
        "CategoryID"
     )
);

ALTER TABLE "Videos" ADD CONSTRAINT "fk_Videos_ChannelID" FOREIGN KEY("ChannelID")
REFERENCES "Channel" ("ChannelID");

ALTER TABLE "Videos" ADD CONSTRAINT "fk_Videos_CategoryID" FOREIGN KEY("CategoryID")
REFERENCES "Category" ("CategoryID");

