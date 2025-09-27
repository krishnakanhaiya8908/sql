# Write your MySQL query statement below
select 

date_format(trans_date ,'%Y-%m') as month, 
country, 
count(id) as trans_count,
sum(state='approved') as approved_count,
sum(amount) as trans_total_amount,
SUM(if(state = 'approved',amount , 0)) AS approved_total_amount
#SUM(IF(state = ‘approved’ ,amount , 0))

#country , trans_count , approved_count , trans_total_amount ,approved_total_amount
from Transactions
group by month ,country
