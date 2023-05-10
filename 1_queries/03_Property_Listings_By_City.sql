SELECT properties.id, title, cost_per_night,avg(rating) AS average_rating 
FROM properties JOIN property_reviews ON property_id = properties.id 
WHERE city='Vancouver'
GROUP BY properties.id
HAVING avg(rating)>=4
ORDER BY cost_per_night DESC 
LIMIT 10;
