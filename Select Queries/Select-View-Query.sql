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
FROM dbo.CustomersByLocation
ORDER BY StateName ASC;
GO