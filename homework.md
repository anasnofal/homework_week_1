## Q1
docker run --help

## Q2
docker run -it --entrypoint=bash python:3.9



## Q3
>Command:
```sql
select count(index)
from green_taxi_trips
where cast(lpep_pickup_datetime as date) = '2019-09-18' and cast(lpep_dropoff_datetime as date) = '2019-09-18';
```


## Q4
>Command:
```sql
SELECT lpep_dropoff_datetime::date,max(lpep_dsropoff_datetime - lpep_pickup_datetime) FROM green_taxi_trips
where lpep_dropoff_datetime::date =lpep_pickup_datetime::date 
group by lpep_dropoff_datetime::date
order by max(lpep_dropoff_datetime - lpep_pickup_datetime) desc
limit 1;
```

## Q5
>Command:
```sql
SELECT
  sum(t1."total_amount") AS sum_total_amount,
  t2."Borough" AS Boroughs
  
FROM public.green_taxi_trips AS t1
JOIN  public.zone AS t2
  ON t1."PULocationID" = t2."LocationID"
  where not t2."Borough" = 'Unknown' And t1.lpep_pickup_datetime::date = '2019-09-18'
  group by 2;
  ```

## Q6
>Command:
```sql
SELECT
  t1.lpep_pickup_datetime,
  t1.lpep_dropoff_datetime,
  t2."Zone" AS PU_zone,
  t3."Zone" AS DO_zone,
  t1.tip_amount,
  DATE_PART('month',t1.lpep_pickup_datetime::date)
  
FROM public.green_taxi_trips AS t1
JOIN  public.zone AS t2
  ON t1."PULocationID" = t2."LocationID"
JOIN  public.zone AS t3
  ON t1."DOLocationID"=t3."LocationID"

WHERE DATE_PART('year',t1.lpep_pickup_datetime::date) ='2019' And DATE_PART('month',t1.lpep_pickup_datetime::date)=9
  and t2."Zone"='Astoria'
  order by t1.tip_amount desc
```