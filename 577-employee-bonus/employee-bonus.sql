# Write your MySQL query statement below
select n.name,b.bonus from employee n
left join bonus b
on n.empId=b.empId 
where b.bonus is null or  bonus<1000;

