from faker import Faker
import random
fake = Faker()

# # For Customer Table: First Name, Last Name, Full name, company
# with open('dummy_data.txt', 'w') as f:
#     f.write("INSERT INTO Dimension.Customer VALUES (\n")
#     for _ in range(10):
#         f.write("(" + "'" + fake.first_name() + "'" + ", " + "'" + fake.last_name() + "'" + ", " + "'" + fake.company() + "'" + "),\n")
#     f.write(");")

# # For Service Table: ServiceType, ServicePrice
# with open('dummy_data.txt', 'w') as f:
#     f.write("INSERT INTO Dimension.Service VALUES (\n")
#     for _ in range(10):
#         f.write("(" + "'account management'" + ", ")
#         f.write(str(random.randint(0, 1000)))
#         f.write( "),\n")
#     f.write(");")

# Writing Insert Query for Fact.Account Table
with open('dummy_data.txt', 'w') as f:
    for i in range(1,11):
        f.write("INSERT INTO Fact.Accounts VALUES \n")
        f.write("   ((SELECT DateKey FROM Dimension.[Date] WHERE DateKey = " + str(i) + "),\n")
        f.write("   (SELECT CustomerKey FROM Dimension.[Customer] WHERE CustomerKey = " + str(i) + "),\n")
        f.write("   (SELECT ServiceKey FROM Dimension.[Service] WHERE ServiceKey = " + str(i) + "),\n")
        f.write("   (SELECT LocationKey FROM Dimension.[Location] WHERE LocationKey = " + str(i) + "),\n")
        f.write("   (SELECT ServicePrice FROM Dimension.[Service] WHERE ServiceKey = " + str(i) + "));\n")
        f.write("\n")
        
# INSERT INTO Fact.Accounts VALUES
#         ((SELECT DateKey FROM Dimension.[Date] WHERE DateKey = 2),
#         (SELECT CustomerKey FROM Dimension.Customer WHERE CustomerKey = 2),
#         (SELECT ServiceKey FROM Dimension.Service WHERE ServiceKey = 2),
#         (SELECT LocationKey FROM Dimension.[Location] WHERE LocationKey = 2),
#         ( SELECT ServicePrice FROM Dimension.Service WHERE ServiceKey = 2));
        
# SELECT * FROM Fact.Accounts;

# DELETE FROM Fact.Accounts;