# Groupwork_Camila_Jessica

## Aim of the Project
The aim of this work is to investigate the association between body mass index (BMI) and the prevalence of hypertension among participants in the Framingham Heart Study.

## Folder Structure
- This repository contains 4 folders with different contents.  Below are short sentences describing them:

- ### **Figs** 
- This folder contains 1 figure. 

- ### **Output**: This folder consists of two files:
- Report.Rmd file consists of a YAML header, chunks of code surrounded by ``` and texts. This file was used to generate an html file that includes a complete report containing text, codes and their outputs but the chunks of code are not accessible in this file.
- Report.html is an html file that was generated after saving and knitting our Report.Rmd.

- ### **Scr**: This folder consists of four R scripts:

- 01_import.R is a short script containing chunks of code used to import our dataset.
- 02_Prep.R is another short script containing chunks of code used to clean our dataset.
- 03_Visualization.R is a script containing chunks of codes used to generate a boxplot and median from our dataset.
- 04_Analysis.R is a script containing chunks of codes used for a logistic regression model and a t-test.

- ### **Data**
- This folder has a nested folder called data_orig which contains the dataset(framingham.csv) used for this work.