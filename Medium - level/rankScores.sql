-- Highest scoring in a descending order, where the highest value earns the first place, and if 
-- the scores are tied, they share the same rank.
SELECT 
    score,
    DENSE_RANK() OVER (ORDER BY score DESC) AS `rank`

FROM 
    Scores
ORDER BY 
    score DESC;
