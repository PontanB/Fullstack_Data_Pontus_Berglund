SELECT * FROM  youtube;

SELECT DISTINCT category FROM youtube; 

SELECT
	count(category) AS number_in_science
FROM
	youtube
WHERE
	category = 'Science & Technology'

SELECT
	"youtuber name", category
FROM
	youtube
WHERE
	Category = 'Science & Technology'
	
SELECT
	* EXCLUDE ("youtuber name")
FROM
	youtube
WHERE
	Category = 'Science & Technology' OR category = 'Education'
	
SELECT DISTINCT "Country" FROM youtube;


SELECT * FROM youtube WHERE "country" = 'India';

SELECT
	"country",
	count(*) AS number_youtubers
FROM
	youtube
GROUP BY
	"country"
ORDER BY
	number_youtubers DESC
LIMIT 10;

SELECT
	category,
	count(*) AS number
FROM
	youtube
GROUP BY
	category
ORDER BY
	number DESC;

SELECT * FROM youtube
;

SELECT DISTINCT "Comments (avg.)" FROM youtube;

SELECT
	"youtuber name" ,
	CASE
		WHEN "Comments (avg.)" LIKE '%K' THEN CAST(REPLACE("comments (avg.)", 'K', '') AS FLOAT)* 1000
		ELSE CAST("comments (avg.)" AS INTEGER)
	END AS avg_comments,
	"comments (avg.)"
FROM youtube
ORDER BY avg_comments DESC;
