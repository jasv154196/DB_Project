CREATE VIEW TerroristAttacksByCountry(Country_Name, Attack_Count) AS
SELECT c.Country_Name, COUNT(*)
FROM DB_Project.Terrorism t, DB_Project.Countries c
WHERE c.Country_ID = t.Country_ID
GROUP BY c.Country_Name
ORDER BY c.Country_Name; 

SELECT * FROM DB_Project.TerroristAttacksByCountry;

CREATE VIEW TerroristAttacksByYearByNo(Year, No_Attacks) AS
SELECT d.Year, COUNT(*)
FROM DB_Project.Dates d
GROUP BY d.Year
ORDER BY COUNT(*) DESC;

SELECT * FROM DB_Project.TerroristAttacksByYearByNo;
