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