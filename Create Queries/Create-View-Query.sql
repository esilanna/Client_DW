-- Creating a View --
CREATE VIEW dbo.AccountsByDate
    WITH SCHEMABINDING
    AS
        SELECT Accounts.AccountID, Accounts.CustomerKey, Accounts.InvoiceTotal,
            Date.FullDate, Date.DayName, Date.DayNumber, Date.MonthName,
            Date.MonthNumber, Date.Year
        FROM Fact.Accounts JOIN Dimension.[Date] ON Accounts.DateKey = Date.DateKey
;
GO