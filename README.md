# Client Log Data Warehouse #
## A Data Warehouse made using MS SQL Server and a Star Schema Modeling Approach ##

 This Git Repo serves as an overview and reource to recreate this project locally if you choose to do so :) 

⭐️ Disclaimer: Because I am operating on macOS & an Apple Chip, my MS SQL Server is running in a Docker Container ⭐️

### Install Docker Here: ###
Docker: https://docs.docker.com/get-docker/

### Docker Images Used: ###
MS SQL: https://hub.docker.com/_/microsoft-azure-sql-edge

Adminer: https://hub.docker.com/_/adminer/

### SQL Server Client Used: ###
Azure Data Studio: https://azure.microsoft.com/en-us/products/data-studio

⭐️ All SQL Queries for the current version of Client Log DW are in their respective folders, images of the Star Schema ER Diagram and sample outputs/Sample Adminer View will be linked in the Images folder ⭐️

### Star Schema Diagram: ###
![Star Schema Diagram](https://github.com/esilanna/Client_DW/blob/main/Images/Star-Schema-Diagram.png)

**Version One: MVP**
- Basic Star Schema Defined
- Working MS SQL Docker Container 
- Connected MS SQL Server to Azure Data Studio
- Dimension and Fact tables created
- Basic Dummy Data Loaded
- Basic SQL Queries returning proper data (See images for example output)

**Version Two: Python Generated Data and Adminer Front End Connection**
- writer.py generates more advanced dummy data and stores the generated queries in the Insert-Queries folder, so the user just needs to press run on the query after its generated
- Created views to view and analyze information stored in the data warehouse, like CustomersByLocation, AccountsByDate, etc.
- Connected Adminer, which is a PHP connection to a front end, so data is easy to view, read, and edit if necessary (example photo seen in images folder)
- higher volumes of dummy data produced and inserted into the data warehouse

## ⭐️ Instructions to Reproduce on Your Local Machine ⭐️ ##
1. Install Docker and make sure you can access Docker Dashboard
2. Run this command in your terminal to create a container for our MS SQL Data Warehouse: 

      **`docker run --name sqlserver23 -e 'ACCEPT_EULA=Y' -e 'SA_PASSWORD=GoodStrongPassword!23' -p 1401:1433 -d mcr.microsoft.com/azure-sql-edge`**

3. Install Azure Data Studio or an MS SQL supporting client to easily connect to our server
4. Use localhost for the server, click advanced and use 1401 for the port, go back to other settings and use 'SA' for the username and the password we used above (GoodStrongPassword!23) to connect to your server ⭐️ Disclaimer: this is for educational purposes, if you plan on using this tutorial to store sensitive information DO NOT share your login information :)
5. Clone this repository and run the queries in the Create-Queries and Alter-Queries folder
6. You should now have a 'ClientDW' database running on your server. I have included python generated data already in the insert queries for an example, but if you would like ot delete these and generate new data follow these instructions: From here you can use your favorite editor (I use VS Code) to run the **writer.py** script which is located in the Data-Generation folder (make sure to poke around the writer.py file and change the num_data_entries if you would like more or less data entries generated :)). 
  After doing so, you should now have dummy data generated in your Insert-Queries folder and can run these insert queries.
7. By this point you should have your Data Warehouse running and can run the Select queries to view your data (or write your own)
8. to connect adminer, go to your temrinal and simply execute this command:

      **`docker run --link sqlserver23:db -p 8080:8080 adminer`**

  (if you named your container something else, enter the name where 'sqldb' is located in my command)
  go to localhost:8080 on your browser, you should see a login screen, this is where our SQL Credentials from before come in handy!
  
9. Select MS SQL from the dropdown menu, enter 'SA' for username, and 'AdminPassword' for password (of course use your own password if you chose to change it) You can leave the database section blank for now, press enter
10. You should now be located in your Adminer 'dashboard' (see an example of this in the images folder). Because the Scripts you ran previously created dbo views, you should see them on the left hand side of your screen, feel free to check them out!
11. Play around, edit things, add things, have fun!

**To see more information about the structure of ClientDW, take a look at the DOCUMENTATION file in this repo**
