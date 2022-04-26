# Formula 1 ELT Project

[ERGAST]: <http://ergast.com/mrd/>
[Azure Databricks Spark Core for Data Engineers]: <https://www.udemy.com/course/azure-databricks-spark-core-for-data-engineers/>

This is a full ELT (extract, load and transform) projetct and contains Formula 1 data distributed by [ERGAST]. This was a project developed in [Azure Databricks Spark Core for Data Engineers] course.
The source data provides infos about races, drivers, constructors, results, etc. 
If you love f1 motor sport like me, you can try and find a lot of interesting data in your explore.I'd like to encourage you do take this and improve the code and the analysis.

You can download the [formula1-databricks-project.dbc](project-formula1-databricks/formula1-databricks-project.dbc) file, import into your databricks.
Also, you can download the [incremental_data.zip](source/incremental_data.zip) with the data to run the project.

## Folders
- 1-set-up: it contains a notebook to mount de azure data lake gen2 containers into de project.
- 2-includes: it contains notebooks with commom functions e path configuration
- 3-util: it contains a notebook to create the required databases
- 4-ingestion: it contains all notebooks to ingest data from raw data to processed data
- 5-trans: it contains notebooks that process data into presentation data format
- 6-analysis: it contains notebooks with some examples of analysis

## Architecture

This project was built in Delta Lake Architecture:
1. Bronze: where the raw data is
2. Silver: where the processed data is
3. Gold: where the presentation data is

You can find more about de data source at ergast website.

Hope you enjoy it!