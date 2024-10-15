CREATE TABLE IF NOT EXISTS marts.view_time_per_date AS (
SELECT
    Datum,
    "Visningstid (timmar)" AS Visningstid_timmar

FROM
    datum.tabelldata
ORDER BY
Datum DESC offset 1
);
SELECT
    Datum,
    "Visningstid (timmar)" AS Visningstid_timmar

    
FROM
    datum.tabelldata
ORDER BY
Datum DESC offset 1
;