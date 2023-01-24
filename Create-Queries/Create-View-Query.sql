USE ClientDw;
GO 

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

-- Creating a View for Accounts By Service --
CREATE VIEW dbo.AccountsByService
    WITH SCHEMABINDING
    AS
        SELECT Accounts.AccountID, Accounts.CustomerKey, Accounts.ServiceKey, Accounts.InvoiceTotal,
            Service.ServiceType, Service.ServicePrice
        FROM Fact.Accounts JOIN Dimension.Service ON Accounts.ServiceKey = Service.ServiceKey
;
GO

-- Creating a View for Highest Paying Customers --
CREATE VIEW dbo.HighestPayingCustomers
    WITH SCHEMABINDING
    AS
        SELECT Accounts.AccountID, Accounts.CustomerKey, Accounts.InvoiceTotal, Customer.FirstName, Customer.LastName,
            Customer.Company
        FROM Fact.Accounts JOIN Dimension.Customer ON Accounts.CustomerKey = Customer.CustomerKey
        WHERE Accounts.InvoiceTotal > (SELECT AVG(Accounts.InvoiceTotal)FROM Fact.Accounts)
;
GO

-- Creating a View for Sales in the East Coast --
CREATE VIEW dbo.SalesInEast
    WITH SCHEMABINDING
    AS 
        SELECT Accounts.AccountID, Accounts.LocationKey, Accounts.InvoiceTotal, 
            Location.City, Location.State, Location.Zip
        FROM Fact.Accounts JOIN Dimension.[Location] ON Accounts.LocationKey = [Location].LocationKey
        WHERE Dimension.[Location].[StateName] = 'New York' OR Dimension.[Location].[StateName] = 'Florida'
;
GO

-- Creating a View for Sales in the West Coast --
CREATE VIEW dbo.SalesInWest
    WITH SCHEMABINDING
    AS 
        SELECT Accounts.AccountID, Accounts.LocationKey, Accounts.InvoiceTotal, 
            Location.City, Location.State, Location.Zip
        FROM Fact.Accounts JOIN Dimension.[Location] ON Accounts.LocationKey = [Location].LocationKey
        WHERE Dimension.[Location].[StateName] = 'Colorado' OR Dimension.[Location].[StateName] = 'Oregon'
        OR Dimension.[Location].[StateName] = 'California'
;
GO