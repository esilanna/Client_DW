-- Creating ClientDw Database (Run these first) --
CREATE DATABASE ClientDw;
USE ClientDw;

GO
-- Creating Fact Schema for all of my fact tables --
CREATE SCHEMA Fact;
GO

-- Creating Dimenion Schema for all of my dimension tables --
CREATE SCHEMA Dimension;
GO
-- Verifying that both Schemas from above were successfully created --
SELECT * FROM sys.schemas;

-- Creating Date Dimension Table --
CREATE TABLE Dimension.Date (
    DateKey int NOT NULL,
    FullDate date NOT NULL,
    DayName nvarchar(9) NOT NULL,
    DayNumber tinyint NOT NULL,
    MonthName varchar(9) NOT NULL,
    MonthNumber tinyint NOT NULL,
    Year tinyint NOT NULL

    CONSTRAINT PK_Date PRIMARY KEY CLUSTERED (
        DateKey ASC
    )
);
GO

-- Creating Customer Dimension Table --
CREATE TABLE Dimension.Customer (
    CustomerKey int IDENTITY (1,1) NOT NULL,
    CustomerAlternateKey int NOT NULL,
    FirstName nvarchar(50) NOT NULL,
    LastName nvarchar(50) NOT NULL,
    FullName nvarchar(100) NOT NULL,
    Company nvarchar(100) NOT NULL

    CONSTRAINT PK_Customer PRIMARY KEY CLUSTERED (
        CustomerKey ASC
    )
);
GO

-- Creating Service Dimension Table --
CREATE TABLE Dimension.Service (
    ServiceKey int IDENTITY (1,1) NOT NULL,
    ServiceType nvarchar(100) NOT NULL,
    ServicePrice money NOT NULL

    CONSTRAINT PK_Service PRIMARY KEY CLUSTERED (
        ServiceKey ASC
    )
);
GO

-- Creating Location Dimension Table --
CREATE TABLE Dimension.Location (
    LocationKey int IDENTITY (1,1) NOT NULL,
    City nvarchar(50) NOT NULL,
    State char(2) NOT NULL,
    StateName nvarchar(20) NOT NULL,
    Zip char(5) NOT NULL,
    Continent nvarchar(20) NOT NULL

    CONSTRAINT PK_Location PRIMARY KEY CLUSTERED (
        LocationKey ASC
    )
);
GO

-- Creating an Accounts Fact Table -- 
CREATE TABLE Fact.Accounts (
    AccountID int IDENTITY (1,1) NOT NULL,
    DateKey int NOT NULL,
    CustomerKey int NOT NULL,
    ServiceKey int NOT NULL,
    LocationKey int NOT NULL,
    InvoiceTotal money NOT NULL

    CONSTRAINT PK_Account PRIMARY KEY CLUSTERED (
        AccountID ASC
    )
);
GO

-- Adding the relationship between Accounts Fact Table and Date Dimension Table --
ALTER TABLE Fact.Accounts WITH CHECK ADD CONSTRAINT FK_Fact_Accounts_DakeKey_Dimension_Date FOREIGN KEY(DateKey)
REFERENCES Dimension.Date (DateKey);
GO

ALTER TABLE Fact.Accounts CHECK CONSTRAINT FK_Fact_Accounts_DakeKey_Dimension_Date;
GO

-- Adding the relationship between Accounts Fact Table and Customer Dimension Table --
ALTER TABLE Fact.Accounts WITH CHECK ADD CONSTRAINT FK_Fact_Accounts_CustomerKey_Dimension_Customer FOREIGN KEY(CustomerKey)
REFERENCES Dimension.Customer (CustomerKey);
GO

ALTER TABLE Fact.Accounts CHECK CONSTRAINT FK_Fact_Accounts_CustomerKey_Dimension_Customer;
GO

-- Adding the relationship between Accounts Fact Table and Service Dimension Table --
ALTER TABLE Fact.Accounts WITH CHECK ADD CONSTRAINT FK_Fact_Accounts_ServiceKey_Dimension_Service FOREIGN KEY(ServiceKey)
REFERENCES Dimension.Service (ServiceKey);
GO

ALTER TABLE Fact.Accounts CHECK CONSTRAINT FK_Fact_Accounts_ServiceKey_Dimension_Service;
GO

-- Adding the relationship between Accounts Fact Table and Location Dimension Table --
ALTER TABLE Fact.Accounts WITH CHECK ADD CONSTRAINT FK_Fact_Accounts_LocationKey_Dimension_Location FOREIGN KEY(LocationKey)
REFERENCES Dimension.Location (LocationKey);
GO

ALTER TABLE Fact.Accounts CHECK CONSTRAINT FK_Fact_Accounts_LocationKey_Dimension_Location;
GO

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

CREATE UNIQUE CLUSTERED INDEX IDX_AccountsByDate
    ON dbo.AccountsByDate (AccountID);
GO

SELECT * FROM dbo.AccountsByDate;
GO

-- Creating a Columnstore Index for Performance Optimization of analytical queries --
CREATE COLUMNSTORE INDEX IX_CS_FactAccounts
ON Fact.Accounts (AccountID, DateKey, CustomerKey, ServiceKey, LocationKey, InvoiceTotal);


-- Rebuild Statement if fragmentation starts to happen (drops the index and rebuilds it entirely) --
-- ALTER INDEXIX_CS_FactAccounts 
-- ON Fact.Accounts
-- REBUILD WITH (ONLINE = ON);