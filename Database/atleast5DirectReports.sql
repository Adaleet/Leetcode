''' Write your MySQL query statement below
 Write a solution to find managers with at least five direct reports.
 Return the result table in any order.
 The result format is in the following example. '''


  
SELECT e.name
FROM Employee e
JOIN (
    SELECT managerId
    FROM Employee
    WHERE managerId IS NOT NULL
    GROUP BY managerId
    HAVING COUNT(id) >= 5
) AS managers_with_five_reports ON e.id = managers_with_five_reports.managerId;
