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