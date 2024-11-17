SELECT * FROM Producer;


SELECT * FROM Producer ORDER BY LastName, FirstName;


SELECT * FROM Producer WHERE Region = 'Sousse';


SELECT SUM(Quantity) AS TotalQuantity
FROM Harvest
WHERE NumW = 12;


SELECT Wine.Category, SUM(Harvest.Quantity) AS TotalQuantity
FROM Wine
JOIN Harvest ON Wine.NumW = Harvest.NumW
GROUP BY Wine.Category;


SELECT DISTINCT p.FirstName, p.LastName
FROM Producer p
JOIN Harvest h ON p.NumP = h.NumP
WHERE p.Region = 'Sousse' AND h.Quantity > 300
ORDER BY p.FirstName, p.LastName;


SELECT w.NumW
FROM Wine w
JOIN Harvest h ON w.NumW = h.NumW
WHERE w.Degree > 12 AND h.NumP = 24;


SELECT TOP 1 p.FirstName, p.LastName, SUM(h.Quantity) AS MaxQuantity
FROM Producer p
JOIN Harvest h ON p.NumP = h.NumP
GROUP BY p.FirstName, p.LastName
ORDER BY MaxQuantity DESC;


SELECT AVG(Degree) AS AvgDegree FROM Wine;



SELECT TOP 1 * 
FROM Wine
ORDER BY Year ASC;


SELECT p.FirstName, p.LastName, SUM(h.Quantity) AS TotalQuantity
FROM Producer p
JOIN Harvest h ON p.NumP = h.NumP
GROUP BY p.FirstName, p.LastName;



SELECT w.NumW, w.Category, w.Year, w.Degree, p.FirstName, p.LastName, h.Quantity
FROM Wine w
JOIN Harvest h ON w.NumW = h.NumW
JOIN Producer p ON h.NumP = p.NumP;
