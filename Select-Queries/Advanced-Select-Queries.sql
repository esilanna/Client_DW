USE ClientDW;
GO

-- Query to show total sales --
SELECT SUM(Fact.Accounts.InvoiceTotal) AS "Total Sales"
FROM Fact.Accounts;

-- Query to show total Accounts in Warehouse --
SELECT COUNT(Fact.Accounts.AccountID) AS "# Of Accounts"
FROM Fact.Accounts;

-- Query to show how many states have accounts associated with them -- 
SELECT COUNT(Fact.Accounts.LocationKey) AS "Account Table Location Key", 
Dimension.[Location].[State]
FROM Fact.Accounts JOIN Dimension.[Location] ON 
    Fact.Accounts.LocationKey = Dimension.[Location].[LocationKey]
GROUP BY [Location].State
ORDER BY [Account Table Location Key] DESC
;

-- Query to show how how many accounts are using each service --
SELECT COUNT(Fact.Accounts.ServiceKey) AS "Account Table Service Key",
    Dimension.Service.ServiceType, SUM(Fact.Accounts.InvoiceTotal) AS "Total of Invoices Per Service"
FROM Fact.Accounts JOIN Dimension.Service ON 
    Fact.Accounts.ServiceKey = Dimension.Service.ServiceKey
GROUP BY Service.ServiceType
ORDER BY [Account Table Service Key] DESC
;

-- Query to show how many accounts are associated with a certain date --
SELECT COUNT(Fact.Accounts.DateKey) AS "Account Table Date Key", 
    Dimension.[Date].[FullDate]
FROM Fact.Accounts JOIN Dimension.[Date] ON 
    Fact.Accounts.DateKey = Dimension.[Date].DateKey
GROUP BY FullDate
ORDER BY [Account Table Date Key] DESC
;