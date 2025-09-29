 select  round(count(distinct player_id)/ (select count(distinct player_id )FROM Activity) ,2) as fraction
 from Activity

where ( player_id, DATE_SUB(event_date, interval 1 day)  )IN (
select player_id ,min(event_date) as first_login
from Activity
group by player_id 
)