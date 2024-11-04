''' Write your MySQL query statement below: 

Write a solution to report the fraction of players that logged in again 
    on the day after the day they first logged in, rounded to 2 decimal places. 
    In other words, you need to count the number of players that logged in for 
    at least two consecutive days starting from their first login date, then divide 
    that number by the total number of players.  ''' 

WITH FirstLogin AS (
    SELECT player_id, MIN(event_date) AS first_login_date
    FROM Activity
    GROUP BY player_id
),
ConsecutiveLogin AS (
    SELECT f.player_id
    FROM FirstLogin f
    JOIN Activity a ON f.player_id = a.player_id
                    AND a.event_date = DATE_ADD(f.first_login_date, INTERVAL 1 DAY)
)
SELECT ROUND(COUNT(DISTINCT cl.player_id) / COUNT(DISTINCT fl.player_id), 2) AS fraction
FROM FirstLogin fl
LEFT JOIN ConsecutiveLogin cl ON fl.player_id = cl.player_id;

