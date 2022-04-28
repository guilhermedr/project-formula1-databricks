# Formula 1 ELT Project

[ERGAST]: <http://ergast.com/mrd/>
[Azure Databricks Spark Core for Data Engineers]: <https://www.udemy.com/course/azure-databricks-spark-core-for-data-engineers/>

The ELT Project (Extract, Load, and Transform) was distributed by [ERGAST]. 
It contains Formula 1 data and was developed for the [Azure Databricks Spark Core for Data Engineers] course.
The data provides informations about races, drivers, constructors, results, etc. 
If you love the F1 motorsport like me, you can find a lot of interesting data in your exploration. I encourage you to use the project and improve the code and the analysis.

You can download the [Formula 1 Databricks Project](databricks-file/formula1-databricks-project.dbc) file and import into your databricks platform.
Also, you can download the [incremental data](source/incremental_data.zip) to run and see the incremental load happening.
The [notebooks and SQL files](notebooks-sqls-files/) contains all Jupyter Notebooks. Also, the [html files](html-files/) are ready to you see what was built at this point. 


# About the Project:

## Folders
- 1-set-up: The folder contains a notebook to mount the Azure Data Lake Gen2 containers into databricks file system.
- 2-includes: The folder contains notebooks with common functions e the path configuration;
- 3-util: The folder contains a notebook to create the required databases;
- 4-ingestion: The folder contains all notebooks to ingest the data from raw to processed;
- 5-trans: The folder contains notebooks that process data into a presentation format;
- 6-analysis: The folder contains notebooks with some examples of analysis.

## Architecture

The project was built in the follow Delta Lake Architecture:
1. Bronze: Where the raw data is contained;
2. Silver: where the processed data is contained;
3. Gold: where the presentation data is contained.

You can find more about de data source at ergast website. Hope you enjoy it!
