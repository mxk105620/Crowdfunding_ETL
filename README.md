# Crowdfunding ETL Mini Project

## This ETL (Extract, Transform, Load) mini project was completed by [Ehsan Aref Adib],[Monila Khadka],[Aaron Summers]. The goal of this project was to extract data from Excel files, transform it into structured CSV files, create a PostgreSQL database, and load the data into the database.


# Repository Contents

## This repository contains the following files and folders:

### ERD.png
### ETL_Mini_Project_EAREFADIB_MKhadka_ASummers.ipynb: The Jupyter notebook containing the Python code for the ETL process.
### crowdfunding_db_schema.sql: The schema file for creating the PostgreSQL database and tables.
### README.md: This README file.


## Resources Folder

### contacts.xlsx: Contains contact information.

### crowdfunding.xlsx: Contains data related to crowdfunding campaigns.

### campaign.csv: CSV file generated from the campaign data.

### category.csv: CSV file generated from the category data.

### contacts.csv: CSV file generated from the contacts data.

### subcategory.csv: CSV file generated from the subcategory data.


# Instructions

## To use this project, follow these steps:

### Clone this repository to your local machine.

### Run the Jupyter notebook ETL_Mini_Project_EAREFADIB_MKhadka_ASummers.ipynb to perform the ETL process.

### The generated CSV files will be stored in the Resources/ folder.

### Create a PostgreSQL database named crowdfunding_db using the schema defined in crowdfunding_db_schema.sql.

### Import the CSV files into their respective tables in the database.

### Verify the data in each table using SQL queries.


# Data Sources

### crowdfunding.xlsx: Contains data related to crowdfunding campaigns.

### contacts.xlsx: Contains contact information.

# ETL Process

##  Category and Subcategory DataFrames

-   Extracted and transformed data from crowdfunding.xlsx to create category.csv and subcategory.csv.
-   Created unique sequential IDs for categories and subcategories.
-   Exported the DataFrames as CSV files.

## Campaign DataFrame
-    Extracted and transformed data from crowdfunding.xlsx to create campaign.csv.

-    Converted data types, formatted dates, and added unique IDs for categories and subcategories.

## Contacts DataFrame
-    Extracted and transformed data from contacts.xlsx to create contacts.csv.
-    Split names into first and last names.


## Database Schema
###  The PostgreSQL database schema is defined in crowdfunding_db_schema.sql and includes tables for categories, subcategories, campaigns, and contacts. It specifies data types, primary keys, foreign keys, and relationships.

## Usage
Follow the instructions above to set up the project locally and perform the ETL process. You can then use the PostgreSQL database for further analysis and reporting.

Contributors
[Ehsan Aref Adib]
[Monila Khadka]
[Aaron Summers]
