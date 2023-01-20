-- Creating Date Dimension Table --
CREATE TABLE Dimension.Date (
    DateKey int IDENTITY (1, 1) NOT NULL,
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
    FirstName nvarchar(50) NOT NULL,
    LastName nvarchar(50) NOT NULL,
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
