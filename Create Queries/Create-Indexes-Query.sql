CREATE UNIQUE CLUSTERED INDEX IDX_AccountsByDate
    ON dbo.AccountsByDate (AccountID);
GO

-- Creating a Columnstore Index for Performance Optimization of analytical queries --
CREATE COLUMNSTORE INDEX IX_CS_FactAccounts
ON Fact.Accounts (AccountID, DateKey, CustomerKey, ServiceKey, LocationKey, InvoiceTotal);
