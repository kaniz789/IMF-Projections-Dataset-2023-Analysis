-- Find countries with a positive budget balance forecast:
/*SELECT Countries, Budget_balance_forecast_2023 
FROM budget 
WHERE Budget_balance_forecast_2023 > 0;*/

-- ranked list of the top 10 countries with the highest budget balance forecast in 2023
/*SELECT 
    Countries,
    Budget_balance_forecast_2023
FROM budget
ORDER BY Budget_balance_forecast_2023 DESC
OFFSET 0 ROWS FETCH FIRST 10 ROWS ONLY;*/

-- Top 10 countries with the highest growth forecast
/*SELECT TOP 10 Countries, [Economic_growth_forecast_2023]
FROM economic
ORDER BY [Economic_growth_forecast_2023] DESC;*/

-- Find Countries with Identical Forecasts
/*SELECT [Economic_growth_forecast_2023], COUNT(*) AS CountryCount
FROM economic
GROUP BY [Economic_growth_forecast_2023]
HAVING COUNT(*) > 1
ORDER BY CountryCount DESC;*/

/*SELECT 
    COALESCE(a.Countries, b.Countries, e.Countries, i.Countries, inv.Countries, u.Countries) AS Countries,
    a.Current_account_forecast_2023,
    b.Budget_balance_forecast_2023,
    e.Economic_growth_forecast_2023,
    i.Inflation_forecast_2023,
    inv.Investment_forecast_2023,
    u.Unemployment_rate_forecast_2023
FROM account AS a
LEFT JOIN budget AS b ON a.Countries = b.Countries
LEFT JOIN economic AS e ON a.Countries = e.Countries
LEFT JOIN inflation AS i ON a.Countries = i.Countries
LEFT JOIN investment AS inv ON a.Countries = inv.Countries
LEFT JOIN unemployment AS u ON a.Countries = u.Countries;*/

/*SELECT 
    COALESCE(a.Countries, b.Countries, e.Countries, i.Countries, inv.Countries, u.Countries) AS Countries,
    a.Current_account_forecast_2023,
    b.Budget_balance_forecast_2023,
    e.Economic_growth_forecast_2023,
    i.Inflation_forecast_2023,
    inv.Investment_forecast_2023,
    u.Unemployment_rate_forecast_2023
FROM account AS a
FULL OUTER JOIN budget AS b ON a.Countries = b.Countries
FULL OUTER JOIN economic AS e ON a.Countries = e.Countries
FULL OUTER JOIN inflation AS i ON a.Countries = i.Countries
FULL OUTER JOIN investment AS inv ON a.Countries = inv.Countries
FULL OUTER JOIN unemployment AS u ON a.Countries = u.Countries;*/

/*SELECT 
    u.Countries, 
    u.Unemployment_rate_forecast_2023, 
    i.Inflation_forecast_2023
FROM unemployment AS u
INNER JOIN inflation AS i ON u.Countries = i.Countries
ORDER BY i.Inflation_forecast_2023 DESC;*/

-- - LEFT JOIN – To retain all countries from one table while including matching data from the other.
/*SELECT 
    u.Countries, 
    u.Unemployment_rate_forecast_2023, 
    COALESCE(i.Inflation_forecast_2023, 0) AS Inflation_forecast_2023
FROM unemployment AS u
LEFT JOIN inflation AS i ON u.Countries = i.Countries
ORDER BY u.Unemployment_rate_forecast_2023 DESC;*/

/*SELECT 
    e.Countries, 
    e.Economic_growth_forecast_2023, 
    a.Current_account_forecast_2023
FROM economic AS e
INNER JOIN account AS a ON e.Countries = a.Countries
ORDER BY e.Economic_growth_forecast_2023 DESC;*/

/*SELECT 
    e.Countries, 
    e.Economic_growth_forecast_2023, 
    COALESCE(a.Current_account_forecast_2023, 0) AS Current_account_forecast_2023
FROM economic AS e
LEFT JOIN account AS a ON e.Countries = a.Countries
ORDER BY e.Economic_growth_forecast_2023 DESC;*/

/*SELECT TOP 5 Countries, Economic_growth_forecast_2023
FROM economic
ORDER BY Economic_growth_forecast_2023 DESC;*/

-- Which countries have both high investment (>35%) and low unemployment (<10%)?
/*SELECT i.Countries, i.Investment_forecast_2023, u.Unemployment_rate_forecast_2023
FROM investment i
JOIN unemployment u ON i.Countries = u.Countries
WHERE i.Investment_forecast_2023 > 35
  AND u.Unemployment_rate_forecast_2023 < 10;*/

-- Do high-growth countries also have high investment forecasts?
/*SELECT e.Countries, e.Economic_growth_forecast_2023, i.Investment_forecast_2023
FROM economic e
JOIN investment i ON e.Countries = i.Countries
WHERE e.Economic_growth_forecast_2023 > 6
ORDER BY i.Investment_forecast_2023 DESC;*/


/*WITH TopGrowth AS (
    SELECT TOP 5 Countries FROM economic ORDER BY Economic_growth_forecast_2023 DESC
),
TopAccount AS (
    SELECT TOP 5 Countries FROM account ORDER BY Current_account_forecast_2023 DESC
)
SELECT g.Countries
FROM TopGrowth g
JOIN TopAccount a ON g.Countries = a.Countries;*/

-- Are the global ranks in each table consistent with the actual ordering?
/*SELECT Countries,
       Current_account_forecast_2023,
       Global_rank,
       RANK() OVER (ORDER BY Current_account_forecast_2023 DESC) AS CalculatedRank
FROM account
ORDER BY Global_rank;*/

-- All economic indicators for each country in a unified view (for dashboards):
/*SELECT
    b.Countries,
    b.Budget_balance_forecast_2023,
    a.Current_account_forecast_2023,
    e.Economic_growth_forecast_2023,
    i.Inflation_forecast_2023,
    inv.Investment_forecast_2023,
    u.Unemployment_rate_forecast_2023
FROM budget b
LEFT JOIN account a ON b.Countries = a.Countries
LEFT JOIN economic e ON b.Countries = e.Countries
LEFT JOIN inflation i ON b.Countries = i.Countries
LEFT JOIN investment inv ON b.Countries = inv.Countries
LEFT JOIN unemployment u ON b.Countries = u.Countries
ORDER BY b.Countries;*/
