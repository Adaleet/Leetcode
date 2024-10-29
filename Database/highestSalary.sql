CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
    DECLARE nth_highest_salary INT;
    DECLARE salary_count INT;

    -- Count the number of distinct salaries
    SET salary_count = (SELECT COUNT(DISTINCT Salary) FROM Employee);

    -- If there are fewer than N distinct salaries, return NULL
    IF salary_count < N THEN
        RETURN NULL;
    ELSE
        -- Otherwise, find the nth highest salary
        SET nth_highest_salary = (
            SELECT Salary 
            FROM (
                SELECT DISTINCT Salary 
                FROM Employee 
                ORDER BY Salary DESC 
                LIMIT N
            ) AS Temp
            ORDER BY Salary ASC 
            LIMIT 1
        );
        
        RETURN nth_highest_salary;
    END IF;
END;
