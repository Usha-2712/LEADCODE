# Write your MySQL query statement below
select eu.unique_id AS unique_id, e.name AS name
from Employees e
LEFT JOIN EmployeeUNI eu
ON e.id = eu.id 