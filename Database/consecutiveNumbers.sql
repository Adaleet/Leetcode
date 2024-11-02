-- The given number that is displayed in the generated table
-- is the only number that appears consecutively for at least three times.

SELECT DISTINCT num AS ConsecutiveNums
FROM (
    SELECT 
        num,
        LAG(num, 1) OVER (ORDER BY id) AS prev_num,
        LEAD(num, 1) OVER (ORDER BY id) AS next_num
    FROM 
        Logs
) AS consecutive_check
WHERE 
    num = prev_num 
    AND num = next_num;
