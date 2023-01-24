SELECT * 
FROM dbo.AccountsByDate
ORDER BY FullDate ASC;
GO

SELECT *
FROM dbo.AccountsByLocation
ORDER BY StateName ASC;
GO

SELECT * 
FROM dbo.AccountsByService
ORDER BY ServicePrice ASC;
GO

SELECT * 
FROM dbo.HighestPayingCustomers
ORDER BY InvoiceTotal DESC;
GO

SELECT *
FROM dbo.HighestPayingStates
ORDER BY InvoiceTotal DESC;
GO

SELECT * 
FROM dbo.SalesInEast;
GO

SELECT * 
FROM dbo.SalesInWest
ORDER BY City;
GO