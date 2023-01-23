-- Creating ClientDw Database (Run these first) --
CREATE DATABASE ClientDw;
GO

-- Switch into the ClientDW --
USE ClientDw;
GO
-- Creating Fact Schema for all of my fact tables --
CREATE SCHEMA Fact;
GO

-- Creating Dimenion Schema for all of my dimension tables --
CREATE SCHEMA Dimension;
GO