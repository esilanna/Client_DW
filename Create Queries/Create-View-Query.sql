-- Creating a View for Accounts By Date --
CREATE VIEW dbo.AccountsByDate
    WITH SCHEMABINDING
    AS
        SELECT Accounts.AccountID, Accounts.CustomerKey, Accounts.InvoiceTotal,
            Date.FullDate, Date.DayName, Date.DayNumber, Date.MonthName,
            Date.MonthNumber, Date.Year
        FROM Fact.Accounts JOIN Dimension.[Date] ON Accounts.DateKey = Date.DateKey
;
GO

-- Creating a View for Accounts By Location --
CREATE VIEW dbo.AccountsByLocation
    WITH SCHEMABINDING
    AS
        SELECT Accounts.AccountID, Accounts.CustomerKey, Accounts.LocationKey, Accounts.InvoiceTotal,
            Location.City, Location.StateName, Location.Zip
        FROM Fact.Accounts JOIN Dimension.[Location] ON Accounts.LocationKey = Location.LocationKey
;
GO

CREATE VIEW dbo.AccountsByService
    WITH SCHEMABINDING
    AS
        SELECT Accounts.AccountID, Accounts.CustomerKey, Accounts.ServiceKey, Accounts.InvoiceTotal,
            Service.ServiceType, Service.ServicePrice
        FROM Fact.Accounts JOIN Dimension.Service ON Accounts.ServiceKey = Service.ServiceKey
;
GO

CREATE VIEW dbo.CustomersByLocation
    WITH SCHEMABINDING
    AS
        SELECT Accounts.AccountID, Accounts.CustomerKey, Accounts.LocationKey, Location.City, Customer.FirstName, Customer.LastName,
            Location.StateName, Location.Zip, Location.Continent
            FROM Fact.Accounts JOIN Dimension.Customer ON Accounts.CustomerKey = Customer.CustomerKey
                JOIN Dimension.Location ON Accounts.LocationKey = Location.LocationKey
;
GO