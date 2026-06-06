CREATE DATABASE db_ToysGroup; 

USE db_ToysGroup; 

#creo prima le tabelle che non hanno fk, quindi le tabelle forti che non dipendono da altre tabelle 
CREATE TABLE Product
(ProductID INT AUTO_INCREMENT PRIMARY KEY,
ProductName VARCHAR(100),
CategoryName VARCHAR(100)); 

CREATE TABLE Region 
(RegionID INT AUTO_INCREMENT PRIMARY KEY, 
CountryName VARCHAR(100), 
RegionName VARCHAR(100)); 

CREATE TABLE Sales 
(SalesID INT AUTO_INCREMENT PRIMARY KEY, 
OrderDate DATE, 
Amount DECIMAL (18,2),
Quantity INT NOT NULL,
	ProductID INT, 
	RegionID INT,
	FOREIGN KEY (ProductID) REFERENCES Product(ProductID), 
	FOREIGN KEY (RegionID) REFERENCES Region(RegionID));
    
#una volta create le tabelle le andiamo a popolare con i dati 
USE db_ToysGroup;

INSERT INTO Product (ProductName, CategoryName)
VALUES
('Robot Max', 'Action'),
('Hero Kit', 'Action'),
('Dino Rex', 'Action'),
('Magic Doll', 'Dolls'),
('Baby Mia', 'Dolls'),
('Mini House', 'Dolls'),
('Block City', 'Building'),
('Brick Farm', 'Building'),
('Space Base', 'Building'),
('Race Car', 'Vehicles'),
('Fire Truck', 'Vehicles'),
('Police Bike', 'Vehicles'),
('Puzzle World', 'Education'),
('Math Game', 'Education'),
('Science Box', 'Education'),
('Teddy Bear', 'Plush'),
('Panda Soft', 'Plush'),
('Zoo Cards', 'Cards'),
('Memory Fun', 'Cards'),
('Train Set', 'Vehicles');

INSERT INTO Region (CountryName, RegionName)
VALUES
('Italy', 'Lazio'),
('Italy', 'Lombardy'),
('France', 'Paris'),
('France', 'Lyon'),
('Germany', 'Berlin'),
('Germany', 'Bavaria'),
('Spain', 'Madrid'),
('Spain', 'Catalonia'),
('UK', 'England'),
('UK', 'Scotland'),
('USA', 'California'),
('USA', 'Texas'),
('USA', 'New York'),
('Canada', 'Ontario'),
('Brazil', 'Sao Paulo'),
('Mexico', 'Mexico City'),
('Japan', 'Tokyo'),
('China', 'Shanghai'),
('Australia', 'Sydney'),
('India', 'Delhi');

INSERT INTO Sales (OrderDate, Amount, Quantity, ProductID, RegionID)
VALUES
('2023-01-01', 1355.69, 91, 7, 3),
('2023-01-12', 1530.68, 82, 17, 2),
('2023-01-23', 1344.41, 63, 10, 1),
('2023-02-03', 499.58, 15, 6, 12),
('2023-02-14', 1855.20, 88, 3, 5),
('2023-02-25', 352.52, 14, 2, 12),
('2023-03-08', 823.29, 45, 1, 18),
('2023-03-19', 2275.23, 79, 11, 12),
('2023-03-31', 2143.14, 89, 4, 12),
('2023-04-11', 1643.33, 80, 2, 14),
('2023-04-22', 1294.34, 62, 5, 14),
('2023-05-03', 1281.67, 54, 9, 19),
('2023-05-14', 659.06, 39, 16, 14),
('2023-05-25', 887.62, 51, 7, 11),
('2023-06-05', 381.89, 23, 7, 20),
('2023-06-16', 1779.73, 70, 4, 8),
('2023-06-27', 2326.57, 79, 20, 2),
('2023-07-08', 549.49, 52, 18, 7),
('2023-07-19', 561.81, 19, 11, 10),
('2023-07-30', 342.77, 15, 10, 13),
('2023-08-10', 1685.74, 95, 7, 12),
('2023-08-21', 1487.72, 93, 7, 8),
('2023-09-02', 2280.21, 86, 20, 8),
('2023-09-13', 575.43, 24, 2, 16),
('2023-09-24', 1199.45, 71, 8, 19),
('2023-10-05', 665.06, 25, 9, 12),
('2023-10-16', 1399.20, 61, 17, 6),
('2023-10-27', 494.54, 37, 14, 8),
('2023-11-07', 853.57, 37, 4, 5),
('2023-11-18', 810.43, 44, 17, 4),
('2023-11-29', 1907.10, 80, 9, 8),
('2023-12-10', 1862.92, 87, 3, 18),
('2023-12-21', 2306.34, 95, 15, 10),
('2024-01-01', 389.62, 21, 8, 9),
('2024-01-12', 625.06, 34, 8, 4),
('2024-01-23', 386.42, 21, 3, 12),
('2024-02-04', 1146.05, 54, 3, 2),
('2024-02-15', 1175.53, 56, 2, 5),
('2024-02-26', 1667.07, 54, 6, 8),
('2024-03-08', 1380.86, 67, 3, 11),
('2024-03-19', 889.67, 51, 7, 3),
('2024-03-30', 1437.93, 74, 10, 14),
('2024-04-10', 785.30, 26, 20, 11),
('2024-04-21', 474.05, 46, 19, 15),
('2024-05-02', 852.17, 41, 17, 14),
('2024-05-13', 337.77, 36, 19, 8),
('2024-05-24', 687.56, 36, 16, 7),
('2024-06-04', 636.71, 32, 16, 15),
('2024-06-15', 714.83, 37, 17, 15),
('2024-06-26', 254.50, 11, 10, 15),
('2024-07-08', 2034.90, 85, 10, 4),
('2024-07-19', 1422.28, 52, 9, 19),
('2024-07-30', 684.73, 37, 8, 5),
('2024-08-10', 1531.90, 86, 7, 11),
('2024-08-21', 1775.65, 90, 10, 13),
('2024-09-01', 509.82, 33, 13, 19),
('2024-09-12', 1174.94, 50, 4, 16),
('2024-09-23', 1899.11, 67, 20, 15),
('2024-10-04', 932.51, 29, 20, 15),
('2024-10-15', 1333.23, 67, 1, 12),
('2024-10-26', 1456.79, 68, 3, 17),
('2024-11-06', 399.57, 24, 8, 11),
('2024-11-17', 393.54, 21, 16, 15),
('2024-11-28', 319.68, 32, 19, 9),
('2024-12-10', 885.15, 45, 5, 6),
('2024-12-21', 1721.74, 77, 15, 7),
('2025-01-01', 1194.06, 53, 3, 19),
('2025-01-12', 1128.59, 74, 13, 17),
('2025-01-23', 653.17, 76, 19, 11),
('2025-02-03', 690.04, 31, 10, 18),
('2025-02-14', 481.53, 26, 16, 3),
('2025-02-25', 1160.94, 49, 15, 12),
('2025-03-08', 613.24, 21, 11, 11),
('2025-03-19', 256.84, 13, 1, 4),
('2025-03-30', 343.37, 16, 10, 12),
('2025-04-10', 1198.64, 73, 12, 11),
('2025-04-21', 1144.61, 69, 7, 11),
('2025-05-02', 1392.66, 41, 6, 11),
('2025-05-14', 618.50, 65, 18, 5),
('2025-05-25', 365.28, 17, 3, 9),
('2025-06-05', 1214.74, 46, 9, 5),
('2025-06-16', 964.67, 90, 18, 3),
('2025-06-27', 1300.48, 67, 3, 18),
('2025-07-08', 1876.59, 70, 20, 9),
('2025-07-19', 1085.46, 63, 13, 5),
('2025-07-30', 947.57, 53, 8, 9),
('2025-08-10', 1759.75, 78, 15, 1),
('2025-08-21', 1101.79, 74, 14, 8),
('2025-09-01', 888.49, 37, 10, 2),
('2025-09-12', 322.71, 13, 2, 6),
('2025-09-23', 1728.88, 62, 4, 15),
('2025-10-04', 844.60, 59, 13, 19),
('2025-10-16', 414.79, 49, 19, 12),
('2025-10-27', 1535.75, 62, 2, 14),
('2025-11-07', 629.49, 19, 6, 1),
('2025-11-18', 345.25, 16, 2, 17),
('2025-11-29', 1585.09, 78, 3, 1),
('2025-12-10', 121.82, 13, 19, 13),
('2025-12-21', 823.40, 28, 6, 3),
('2026-01-01', 2178.33, 88, 4, 19);

SELECT * 
FROM Product; 

SELECT *
FROM Region; 

SELECT *
FROM Sales; 

#Esercizi
#1. Verificare che i campi definiti come PK siano univoci. 
#In altre parole, scrivi una query per determinare l’univocità dei valori di ciascuna PK (una query per tabella implementata).

SELECT 
	COUNT(*) AS ConteggioRecords, 
	COUNT(DISTINCT ProductID) AS NumeroProdottiDistinti
FROM Product;


SELECT 
	SalesID,
	COUNT(*) AS ConteggioRecords
FROM Sales
GROUP BY SalesID
HAVING ConteggioRecords >1; 
#la query non restituisce risultati per cui significa che per ogni riga esiste solo un SalesID e quindi la pk è univoca


SELECT 
	RegionID,
	COUNT(*) AS ConteggioRecords
FROM Region
GROUP BY RegionID
HAVING ConteggioRecords >1; 


#2. Esporre l’elenco delle transazioni indicando nel result set il codice documento, la data, il nome del prodotto, 
#la categoria del prodotto, il nome dello stato, il nome della regione di vendita e un campo booleano valorizzato 
#in base alla condizione che siano passati più di 180 giorni dalla data vendita o meno (>180 -> True, <= 180 -> False)
SELECT
s.SalesID AS NumeroOrdine, 
s.OrderDate AS DataOrdine, 
p.ProductName AS NomeProdotto, 
p.CategoryName AS NomeCategoria, 
r.CountryName AS NomeStato, 
r.RegionName AS NomeRegione,
CASE 
WHEN DATEDIFF(CURDATE(), OrderDate) > 180 THEN 1   #se la differenza tra la data di oggi e la data dell'ordine è >180 restituiscimi 1
ELSE 0                                             #altrimenti 0
END AS '180gg_flg'
FROM Sales AS s
	JOIN Product AS p
		ON s.ProductID = p.ProductID
	JOIN Region AS r
		ON s.RegionID = r.RegionID
ORDER BY NumeroOrdine ASC;


#3. Esporre l’elenco dei prodotti che hanno venduto, in totale, una quantità maggiore della media delle vendite realizzate 
#nell’ultimo anno censito. (ogni valore della condizione deve risultare da una query e non deve essere inserito a mano). 
#Nel result set devono comparire solo il codice prodotto e il totale venduto.

#devo fare prima la subquery perchè in ordine viene eseguita prima. 
#devo trovare l'ultimo anno presente nel dataset 
SELECT 
MAX(YEAR(OrderDate))
FROM Sales;

#voglio quindi vedere solo le vendite del 2026
SELECT *
FROM Sales
WHERE YEAR(OrderDate) = 2026;
#seguendo la consegna dell'esercizio però al posto di 2026 metto la query che ho scritto sopra
SELECT *
FROM Sales
WHERE YEAR(OrderDate) = (SELECT 
			             MAX(YEAR(OrderDate))
						 FROM Sales);
                         
#non voglio vedere tutto ma la media delle quantità vendute nel 2026
#quindi invece di SELECT *, scrivo la media delle quantità
SELECT 
AVG(Quantity)            
FROM Sales
WHERE YEAR(OrderDate) = (SELECT 
						 MAX(YEAR(OrderDate))
						 FROM Sales);
#questa query restituisce 88.0000
#potrei quindi scrivere: 
SELECT
    ProductID AS CodiceProdotto,
    SUM(Quantity) AS TotaleVenduto
FROM Sales
GROUP BY ProductID
HAVING SUM(Quantity) > '88.0000';       #devo filtrare i prodotti che hanno venduto più della media delle quantità vendute nell’ultimo anno

#seguendo la traccia, al posto di 88.0000 scrivo le due subquery scritte sopra 
#versione finale dell'esercizio
SELECT
    ProductID AS CodiceProdotto,
    SUM(Quantity) AS TotaleVenduto
FROM Sales
GROUP BY ProductID
HAVING SUM(Quantity) > (SELECT AVG(Quantity)                            
						FROM Sales
					    WHERE YEAR(OrderDate) = (SELECT 
											     MAX(YEAR(OrderDate))
												 FROM Sales));
                                                 

#4. Esporre l’elenco dei soli prodotti venduti e per ognuno di questi il fatturato totale per anno. 
SELECT
p.ProductID AS CodiceProdotto,
p.ProductName AS NomeProdotto,
YEAR(s.OrderDate) AS Anno,        #estraggo solo l'anno dalla data 
SUM(s.Amount) AS Fatturato
FROM Product AS p
JOIN Sales AS s                   #prendo solo i prodotti che sono stati venduti facendo la inner join 
ON p.ProductID = s.productID
GROUP BY p.ProductID, p.ProductName, YEAR(s.OrderDate)
ORDER BY p.ProductID, YEAR(s.OrderDate);

#5. Esporre il fatturato totale per stato e per anno. Ordina il risultato per data e per fatturato decrescente.
SELECT
    r.CountryName AS NomeStato,
    YEAR(s.OrderDate) AS Anno,
    SUM(s.Amount) AS Fatturato
FROM Sales AS s
JOIN Region AS r
    ON s.RegionID = r.RegionID
GROUP BY r.CountryName, YEAR(s.OrderDate)
ORDER BY YEAR(s.OrderDate)ASC, Fatturato DESC;

#6. Rispondere alla seguente domanda: qual è la categoria di articoli maggiormente richiesta dal mercato?

#a quale categoria appartengono i prodotti che vengono venduti di più? guardo la quantità 
SELECT 
p.ProductName AS NomeProdotto, 
p.CategoryName AS CategoriaProdotto, 
SUM(s.Quantity) AS QuantitàTotale
FROM Product AS p 
JOIN Sales AS s
ON p.ProductID = s.ProductID 
GROUP BY p.ProductName, p.CategoryName
ORDER BY SUM(s.Quantity) DESC             #per trovare la categoria più venduta 
LIMIT 1;                                  #per avere nell'output solo il primo risultato, non tutto l'elenco


#7. Rispondere alla seguente domanda: quali sono i prodotti invenduti? Proponi due approcci risolutivi differenti.

#approccio1 con la left join partendo dai prodotti così tengo anche quelli che non sono collegati a nessuna vendita 
SELECT
    p.ProductID AS CodiceProdotto,
    p.ProductName AS NomeProdotto
FROM Product AS p
LEFT JOIN Sales AS s
    ON p.ProductID = s.ProductID
WHERE s.ProductID IS NULL;         #in questo caso la ProductID nella tabella sales è una FK quindi può essere null, 
                                   #quindi trova le righe in cui ProductID è null e quindi non è stato venduto


#approccio2 con la subquery

#seleziono i prodotti che sono presenti nelle vendite 
SELECT ProductID
FROM Sales;
#sono tutti, 20 

SELECT
    ProductID AS CodiceProdotto,
    ProductName AS NomeProdotto
FROM Product
WHERE ProductID NOT IN (SELECT ProductID    #per vedere i prodotti il cui codice non è presente (NOT IN) tra i prodotti venduti
                        FROM Sales);
                        
                        
#8. Creare una vista sui prodotti in modo tale da esporre una “versione denormalizzata” delle informazioni utili 
# (codice prodotto, nome prodotto, nome categoria). 

CREATE VIEW View_Product AS
SELECT
    ProductID AS CodiceProdotto,
    ProductName AS NomeProdotto,
    CategoryName AS NomeCategoria
FROM Product;

SELECT *
FROM View_Product;


#9. Creare una vista per le informazioni geografiche. 
CREATE VIEW View_Region AS
SELECT
    RegionID AS CodiceRegione,
    CountryName AS Stato,
    RegionName AS Regione
FROM Region;

SELECT * 
FROM View_Region; 
