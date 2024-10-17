DELETE
FROM
	marts.view_time_per_date
WHERE
	Datum = 'Totalt';

CREATE TABLE IF NOT EXISTS marts.sub_vs_not_sub AS (
SELECT
	d.Datum,
	SUM(CASE WHEN d.Prenumerationsstatus = 'Prenumererar' THEN d.Visningar ELSE 0 END) AS Prenumererar,
	SUM(CASE WHEN d.Prenumerationsstatus = 'Prenumererar inte' THEN d.Visningar ELSE 0 END) AS Prenumererar_inte,
	SUM(tab.Visningstid_timmar) AS Visningstid
FROM
	Prenumerationsstatus.diagramdata d
LEFT JOIN 
        marts.view_time_per_date AS tab 
    ON
	d.Datum = tab.Datum
GROUP BY
	d.Datum
);

-- First it creates a table showing per date how many of the watchers are subs or not and then 
-- adds watching time from another table.

SELECT table_schema, table_name FROM information_schema.tables WHERE table_schema = 'marts';
