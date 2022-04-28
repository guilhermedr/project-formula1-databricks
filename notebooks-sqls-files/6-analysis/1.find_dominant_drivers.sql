-- Databricks notebook source
select c.driver_name, 
       count(1) as total_races,
       sum(c.calculated_points) as total_points,
       avg(c.calculated_points) as avg_points
  from f1_presentation.calculated_race_results c
 group by c.driver_name
having total_races > 50
 order by avg_points desc

-- COMMAND ----------

select c.driver_name, 
       count(1) as total_races,
       sum(c.calculated_points) as total_points,
       avg(c.calculated_points) as avg_points
  from f1_presentation.calculated_race_results c
 where c.race_year between 2011 and 2020
 group by c.driver_name
having total_races > 50
 order by avg_points desc

-- COMMAND ----------

select c.driver_name, 
       count(1) as total_races,
       sum(c.calculated_points) as total_points,
       avg(c.calculated_points) as avg_points
  from f1_presentation.calculated_race_results c
 where c.race_year between 2001 and 2010
 group by c.driver_name
having total_races > 50
 order by avg_points desc

-- COMMAND ----------


