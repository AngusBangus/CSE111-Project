--Drop Table
DROP TABLE Locations;
DROP TABLE Picture;
DROP TABLE Quotes;
DROP TABLE Rankings;
DROP TABLE Users;
DROP TABLE HistTime;

CREATE DATABASE proj1database;

USE proj1database;

--SET @OLD_FOREGIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;

CREATE TABLE Locations (
    l_name varchar(25) NOT NULL, 
    l_flag varchar(100) NOT NULL, 
    l_relevancy decimal(4,0) DEFAULT (0) NOT NULL
);

-- Table: Picture
CREATE TABLE Picture (
     p_image varchar(300) UNIQUE PRIMARY KEY NOT NULL,  --source of where te image is from
     p_title varchar(45) UNIQUE NOT NULL,               --What you want the image's Hyperlink to be the titles
     p_color varchar(15), 
     p_numPics decimal(1,0) DEFAULT (0), 
     p_picID decimal(4,0)
);
--INSERT INTO Picture (Image, Title, color, numPics, username) VALUES ('6.jpg', 'Bas Rutten vs Frank Shamrock: Terror in Tokyo', 'red', 1, 'madvillain');

-- Table: Quotes
CREATE TABLE Quotes (
     q_quote varchar(300) NOT NULL, 
     q_color varchar(15), 
     q_quoteID decimal(4,0), 
     q_numQuotes decimal(1,0) DEFAULT (0) NOT NULL
);
--INSERT INTO Quotes (Quote, color, quoteID, numQuotes) VALUES ('Test Quote ', 'black', 1, 1);

-- Table: Ranking
CREATE TABLE Ranking (
     r_username varchar(25) UNIQUE NOT NULL, 
     r_relevancy decimal(4,0) DEFAULT (0) NOT NULL
);
--INSERT INTO Ranking (username, Upvoting, Downvoting, Relevancy) VALUES ('madvillain', 0, 0, 0);

-- Table: Users
CREATE TABLE Users (
     u_username varchar(25) UNIQUE NOT NULL, 
     u_password varchar(25), 
     u_quoteID decimal(4,0) UNIQUE, 
     u_location varchar(25) NOT NULL, 
     u_birthyear decimal(5,0), 
     u_picID decimal(4,0) UNIQUE,
     u_admin decimal(1,0) DEFAULT (0)
);

--working with made database
CREATE TABLE HistTime ( 
    h_date date,
    h_history varchar(300),
    h_quotes varchar(900),
    h_locations varchar(25),
    h_histFigure varchar(25),
    h_image varchar(300) UNIQUE PRIMARY KEY NOT NULL,
);