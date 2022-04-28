-- Databricks notebook source
-- MAGIC %python
-- MAGIC html = """<h1 style="color:black;text-align:center;font-family:Ariel">Report on Dominant Formula 1 Drivers </h1>"""
-- MAGIC displayHTML(html)

-- COMMAND ----------

create or replace temp view v_dominant_drivers
as
select c.driver_name, 
       count(1) as total_races,
       sum(c.calculated_points) as total_points,
       avg(c.calculated_points) as avg_points,
       rank() over(order by avg(c.calculated_points) desc) as driver_rank
  from f1_presentation.calculated_race_results c
 group by c.driver_name
having total_races > 50
 order by driver_rank asc

-- COMMAND ----------

select * from v_dominant_drivers

-- COMMAND ----------

select race_year,
       c.driver_name, 
       count(1) as total_races,
       sum(c.calculated_points) as total_points,
       avg(c.calculated_points) as avg_points
  from f1_presentation.calculated_race_results c
 where driver_name in (select driver_name from v_dominant_drivers where driver_rank <= 10)
 group by race_year, c.driver_name
 order by race_year, avg_points desc

-- COMMAND ----------

select race_year,
       c.driver_name, 
       count(1) as total_races,
       sum(c.calculated_points) as total_points,
       avg(c.calculated_points) as avg_points
  from f1_presentation.calculated_race_results c
 where driver_name in (select driver_name from v_dominant_drivers where driver_rank <= 10)
 group by race_year, c.driver_name
 order by race_year, avg_points desc

-- COMMAND ----------

select race_year,
       c.driver_name, 
       count(1) as total_races,
       sum(c.calculated_points) as total_points,
       avg(c.calculated_points) as avg_points
  from f1_presentation.calculated_race_results c
 where driver_name in (select driver_name from v_dominant_drivers where driver_rank <= 10)
 group by race_year, c.driver_name
 order by race_year, avg_points desc

-- COMMAND ----------


