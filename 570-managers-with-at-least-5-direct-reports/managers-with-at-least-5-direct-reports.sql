# Write your MySQL query statement below
SELECT e1.name from Employee e1
 join Employee e2 
 on e1.id=e2.managerID
group by e2.managerID
 having count(e2.managerID)>=5



