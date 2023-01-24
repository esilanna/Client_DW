# Client Log Data Warehouse #
## A Data Warehouse made using MS SQL Server and a Star Schema Modeling Approach ##

### Purpose of Project: Build a Data Warehouse for a business to store and analyze customer information using MS SQL Server and a Star Shema Data Warehouse model, incorporating Python for automation ###
### See README.md for instructions on how to reproduce this project locally. ###

#### Schemas Overview: ####
- Fact: The fact schema is used to organize fact tables and keep them all together
- Dimension: The dimension schema is used to organize the dimension tables and keep them all together

#### Tables Overview: ####

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

#### Views Overview: ####
- AccountsByDate: View with a unique clustered index that returns all accounts including their dates
- AccountsByLocation: View with a unique clustered index that returns all accounts and the where the clients are located
- AccountsByService: View with a unique clustered index that returns all accounts and the services associated with them 
- HighestPayingCustomers: View that returns the top highest paying accounts
- HighestPayingStates: View that returns the states with the highest paying clients
- MostUsedServices: View that returns the most used services offered among the clients

## An Overview of the writer.py Script ##
#### writer.py was created to bulk produce dummy data to fill the data warehouse. writer.py uses the faker library to produce data see https://fakerjs.dev/ for more info), and also uses lists of dates, states, etc. ####
Before running this script, verify the num_data_entries variable is set to the number of data entries you would like to produce.

When running writer.py, INSERT INTO queries will be produced with the data that is being generated, and these queries are being written into their own files so that the user can simply run the query in a new query window. These queries are stored in the Insert-Queries folder after script is run.

## An Overview of Adminer ##
Adminer is a way to manage a database through an easy to use UI. Even though this project is running locally, Adminer makes it easy to see your data, and you can even run queries through this UI. Adminer is a PHP file that connects to the local database (through magic of course) see more about it here: https://www.adminer.org/ 

Because my Server is running through a Docker Container, so is my instance of Adminer. Once you have set up your Adminer instance (see README.md for instructions on how to do so), simply use localhost:<yourportnumber> to access Adminer, and use your MS SQL credentials to log into your database. From here, it is a very intuitive database management UI.
