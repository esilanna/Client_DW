from faker import Faker
import random
fake = Faker()

# For Customer Table: First Name, Last Name, Full name, company
with open('dummy_data.txt', 'w') as f:
    f.write("INSERT INTO Dimension.Customer VALUES (\n")
    for _ in range(10):
        f.write("(" + "'" + fake.first_name() + "'" + ", " + "'" + fake.last_name() + "'" + ", " + "'" + fake.company() + "'" + "),\n")
    f.write(");")

# For Service Table: ServiceType, ServicePrice
with open('dummy_data.txt', 'w') as f:
    f.write("INSERT INTO Dimension.Service VALUES (\n")
    for _ in range(10):
        f.write("(" + "'account management'" + ", ")
        f.write(str(random.randint(0, 1000)))
        f.write( "),\n")
    f.write(");")