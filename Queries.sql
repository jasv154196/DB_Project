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

#Adding a new Terrorist Attack (No Terrorist Attacks records of 2018)
SELECT * FROM DB_Project.Terrorism t JOIN DB_Project.Dates d ON t.Date_ID = d.Date_ID
WHERE Year = 2018;

SELECT * FROM DB_Project.Dates
WHERE Year = 2018;

INSERT INTO DB_Project.Dates(Date_ID, Year, Month, Day)
VALUES (18181818, 2018, 5, 1);

INSERT INTO DB_Project.Terrorism(Event_ID, Date_ID, Country_ID, Region_ID, Success, Attack_ID, Target_ID, Org_Name, Weapon_ID, N_Killed)
VALUES (20182018, 18181818, 217, 1, 1, 3, 8, 'TTU-CS-Databases', 7, 201888);
 
UPDATE DB_Project.Terrorism SET Success = 0, N_Killed = 0, Org_Name = 'Unknown'
WHERE DB_Project.Terrorism.Event_ID = 20182018;
