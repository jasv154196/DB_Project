#Top 10 terrorist groups 
SELECT Org_Name, COUNT(*)
FROM DB_Project.Terrorism
WHERE Org_Name NOT IN ('Unknown')
GROUP BY Org_Name
ORDER BY COUNT(*) DESC
LIMIT 10;
 
#Terrorist Attacks by year (Using View)
SELECT * FROM DB_Project.TerroristAttacksByYearByNo;

#Top 10 countries with most terrorist Attacks (Using View)
SELECT * FROM DB_Project.TerroristAttacksByCountry 
ORDER BY Attack_Count DESC
LIMIT 10;

#5 Most popular type of attacks 
SELECT Attack_Name, COUNT(*)
FROM DB_Project.Terrorism t JOIN DB_Project.Attacks a ON t.Attack_ID = a.Attack_ID
GROUP BY Attack_Name
ORDER BY COUNT(*) DESC
LIMIT 5;

#5 Attack types with the most fatalities 
SELECT Attack_Name, SUM(N_Killed)
FROM DB_Project.Terrorism t JOIN DB_Project.Attacks a ON t.Attack_ID = a.Attack_ID
GROUP BY Attack_Name
ORDER BY SUM(N_Killed) DESC
LIMIT 5;

 
 
 
