from faker import Faker
import random
fake = Faker()

#Change this number to generate more data entries
num_data_entries = 10

# Creating a list of Service Types to be included in insert into dimension.Service query 
services = ["Account Managemenet", "Financial Advisor Services", "Debt Restructuring", "Metrics Reporting"]

# Creating a list of dates so that they align (day name is actually associated with day num, etc)
dates = [["'2023-01-10'", "'Tuesday'", "10", "'January'", "01", "2023"], 
        ["'2023-01-09'", "'Wednesday'", "09", "'January'", "01", "2023"], 
        ["'2023-01-08'", "'Thursday'", "08", "'January'", "01", "2023"], 
        ["'2023-01-07'", "'Friday'", "07", "'January'", "01", "2023"], 
        ["'2023-01-06'", "'Saturday'", "06", "'January'", "01", "2023"], 
        ["'2023-01-05'", "'Sunday'", "05", "'January'", "01", "2023"]]

# Creating a list of locations so they align (state matches city, which matches zip, etc.)
locations = [["'New York'", "'NY'", "'New York'", "10001", "'North America'"],
        ["'Denver'", "'CO'", "'Colorado'", "80012", "'North America'"],
        ["'Portland'", "'OR'", "'Oregon'", "97035", "'North America'"],
        ["'San Diego'", "'CA'", "'California'", "91911", "'North America'"],
        ["'Houston'", "'TX'", "'Texas'", "77001", "'North America'"],
        ["'Miami'", "'FL'", "'Florida'", "33101", "'North America'"],]

# For Customer Table: First Name, Last Name, Full name, company
with open('./Data-Generation/dummy_dimension.customer.txt', 'w') as f:
    f.write("INSERT INTO Dimension.Customer VALUES (\n")
    for _ in range(num_data_entries):
        f.write("   (" + "'" + fake.first_name() + "'" + ", " + "'" + fake.last_name() + "'" + ", " + "'" + fake.company() + "'")
        if _ == (num_data_entries - 1):
            f.write(")\n")
        else:
            f.write( "),\n")
    f.write(");")

# For Date Table: Full date, Day name, day number, month name, month number, year
with open('./Data-Generation/dummy_dimension.date.txt', 'w') as f:
    f.write("INSERT INTO Dimension.Date VALUES (\n")
    for _ in range(num_data_entries):
        currentDate = dates[random.randint(0, 5)]
        f.write("   (" + currentDate[0] + ", " + currentDate[1] + ", " + currentDate[2] + ", " + currentDate[3] + ", " + currentDate[4] + ", " + currentDate[5])
        if _ == (num_data_entries - 1):
            f.write(")\n")
        else:
            f.write( "),\n")
    f.write(");")

# For Lcoation table: city, state, state name, zip, continent
with open('./Data-Generation/dummy_dimension.location.txt', 'w') as f:
    f.write("INSERT INTO Dimension.Location VALUES (\n")
    for _ in range(num_data_entries):
        currentLocation = locations[random.randint(0, 5)]
        f.write("   (" + currentLocation[0] + ", " + currentLocation[1] + ", " + currentLocation[2] + ", " + currentLocation[3] + ", " + currentLocation[4])
        if _ == (num_data_entries - 1):
            f.write(")\n")
        else:
            f.write( "),\n")
    f.write(");")

# For Service Table: ServiceType, ServicePrice
with open('./Data-Generation/dummy_dimension.service.txt', 'w') as f:
    f.write("INSERT INTO Dimension.Service VALUES (\n")
    for _ in range(num_data_entries):
        f.write("   (" + services[random.randint(0, 3)] + ", ")
        f.write(str(random.randint(0, 1000)))
        if _ == (num_data_entries - 1):
            f.write(")\n")
        else:
            f.write( "),\n")
    f.write(");")

# Writing Insert Query for Fact.Account Table
with open('./Data-Generation/dummy_fact.account.txt', 'w') as f:
    for i in range(1,11):
        f.write("INSERT INTO Fact.Accounts VALUES \n")
        f.write("   ((SELECT DateKey FROM Dimension.[Date] WHERE DateKey = " + str(i) + "),\n")
        f.write("   (SELECT CustomerKey FROM Dimension.[Customer] WHERE CustomerKey = " + str(i) + "),\n")
        f.write("   (SELECT ServiceKey FROM Dimension.[Service] WHERE ServiceKey = " + str(i) + "),\n")
        f.write("   (SELECT LocationKey FROM Dimension.[Location] WHERE LocationKey = " + str(i) + "),\n")
        f.write("   (SELECT ServicePrice FROM Dimension.[Service] WHERE ServiceKey = " + str(i) + "));\n")
        f.write("\n")
