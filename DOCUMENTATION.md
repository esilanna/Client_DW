# Client Log Data Warehouse #
## A Data Warehouse made using MS SQL Server and a Star Schema Modeling Approach ##

### Purpose of Project: Build a Data Warehouse for a business to store and analyze customer information using MS SQL Server and a Star Shema Data Warehouse model. ###

**Schemas Overview:**
- Fact: The fact schema is used to organize fact tables and keep them all together
- Dimension: The dimension schema is used to organize the dimension tables and keep them all together

**Fact Table Overview:**
Fact.Accounts
    - AccountID: Primary Key for the table
    - DateKey: Surrogate key pointing to the date table
    - CustomerKey: Surrogate key pointing to the customer table
    - ServiceKey: Surrogate key pointing to the service table
    - LocationKey: Surrogate key pointing to the location table
    - InvoiceTotal: The price of the services for the current service table row from above

**Dimension Table Overview:**
Dimension.Customer
    - CustomerKey: Primary key for the customer table
    - FirstName: First name of the client
    - LastName: Last name of the client
    - Company: name of the company of the client
Dimension.Date
    - DateKey: Primary key for the date table
    - FullDate: full date for when service was provided in the following format: 'YYYY-MM-DD'
    - DayName: Full name of the day from full date above
    - DayNumber: day number in context of the month from full date above
    - MonthName: name of month from full date above
    - MonthNumber: month number in context of the year from full date above
    - Year: last two digits of the year from full date above
Dimension.Location
    - LocationKey: Primary key for the location table
    - City: City name for the city the client is in
    - State: Two letter abbreviatoin for the state the client is in
    - StateName: Full name of state that the client is in 
    - Zip: Zip code for the client's city
    - Continent: Continent the client's state is in
Dimension.Service
    - ServiceKey: Primary key for the service table
    - ServiceType: The type of service provided to the client
    - ServicePrice: the price of the service provided to the client