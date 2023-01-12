# Project of Geospatial analysis and representation for Data Science - University of Trento

## Province of Brescia and Air Pollution
This project aims to study the level of air pollution in the province of Brescia, focusing on PM10 and PM2.5 values, in order to understand which municipalities are the most polluted and whether there is a relationship between the level of air pollution and the presence of intensive livestock farms. After a brief introduction about the province of Brescia, it will take into account the monthly levels of PM10 and PM2.5 in each municipality and find the worst period of the year. Then, it will evaluate the spatial autocorrelation of the air pollution and if it is influenced by the presence of intensive farming and their ammonia emission. 

### Project structure
- In the `main` folder you can find requirements (requirements.txt) needed to execute the notebooks.
- In the `data` folder you can find all the date required for the analysis, including orthophoto file
- In the  `code` folder you che find:
   * data_manipulation.R = file necessary to create datasets about mounthly level of PM10 and PM2.5 of municipalities in Brescia
   * Project.ipynb = contains map of municipalities of Brescia, map about air pollution, map of livestock (more practical part)
   * Project_analysis.Rmd = contains spatial analysis (more theoretical part)

### How to run the project
The files are written in Python 3.10.0 using Jupyter Notebooks.
To install all required packages:
```
pip install -r requirements.txt
```

For the Project_analysis.Rmd the folder data_analysis should be downloaded.


### Data
Data used in this project are from:
- https://www.arpalombardia.it/Pages/Aria/Richiesta-Dati.aspx
- https://dati.lombardia.it/
- https://www.isprambiente.gov.it/it/banche-dati 

   


