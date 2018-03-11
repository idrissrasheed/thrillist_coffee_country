CREATE TABLE thrillist_coffee (
	Country VARCHAR(30),
    Ranking INT,
    Tied_Ranking VARCHAR(3),
    Points INT,
    Bags_Produced INT
    );
    
INSERT INTO thrillist_coffee
VALUES
	("Rwanda", 8, "Yes", 1, 246000), 
	("Ethiopia", 1, "No", 25, 6600000 ), 
    ("United States", 8, "Yes", 1, 52919), 
    ("Guatemala", 4, "No", 7, 3100000),
    ("Indonesia", 7, "No", 2, 11700000),
	("Costa Rica", 5, "Yes", 3, 1400000),
    ("Panama", 8, "Yes", 1, 100000),
    ("Kenya", 2, "No", 12, 750000),
    ("Honduras", 5, "Yes", 3, 4200000),
	("Colombia", 3, "No", 10, 11000000);

SELECT * FROM thrillist_coffee;

SELECT * FROM thrillist_coffee
ORDER BY Ranking;

SELECT COUNT(Tied_Ranking) as Total_Ties
FROM thrillist_coffee
WHERE Tied_Ranking = "Yes";

SELECT DISTINCT COUNT(Tied_Ranking)
FROM thrillist_coffee
WHERE Tied_Ranking = "No";

SELECT DISTINCT MIN(Bags_Produced) AS Least_Produced
FROM thrillist_coffee;

SELECT DISTINCT Max(Bags_Produced) AS Most_Produced
FROM thrillist_coffee;

SELECT DISTINCT SUM(Bags_Produced) as Total_Production
FROM thrillist_coffee;