INSERT INTO Fact.Accounts VALUES 
   ((SELECT DateKey FROM Dimension.[Date] WHERE DateKey = 1),
   (SELECT CustomerKey FROM Dimension.[Customer] WHERE CustomerKey = 1),
   (SELECT ServiceKey FROM Dimension.[Service] WHERE ServiceKey = 1),
   (SELECT LocationKey FROM Dimension.[Location] WHERE LocationKey = 1),
   (SELECT ServicePrice FROM Dimension.[Service] WHERE ServiceKey = 1));

INSERT INTO Fact.Accounts VALUES 
   ((SELECT DateKey FROM Dimension.[Date] WHERE DateKey = 2),
   (SELECT CustomerKey FROM Dimension.[Customer] WHERE CustomerKey = 2),
   (SELECT ServiceKey FROM Dimension.[Service] WHERE ServiceKey = 2),
   (SELECT LocationKey FROM Dimension.[Location] WHERE LocationKey = 2),
   (SELECT ServicePrice FROM Dimension.[Service] WHERE ServiceKey = 2));

INSERT INTO Fact.Accounts VALUES 
   ((SELECT DateKey FROM Dimension.[Date] WHERE DateKey = 3),
   (SELECT CustomerKey FROM Dimension.[Customer] WHERE CustomerKey = 3),
   (SELECT ServiceKey FROM Dimension.[Service] WHERE ServiceKey = 3),
   (SELECT LocationKey FROM Dimension.[Location] WHERE LocationKey = 3),
   (SELECT ServicePrice FROM Dimension.[Service] WHERE ServiceKey = 3));

INSERT INTO Fact.Accounts VALUES 
   ((SELECT DateKey FROM Dimension.[Date] WHERE DateKey = 4),
   (SELECT CustomerKey FROM Dimension.[Customer] WHERE CustomerKey = 4),
   (SELECT ServiceKey FROM Dimension.[Service] WHERE ServiceKey = 4),
   (SELECT LocationKey FROM Dimension.[Location] WHERE LocationKey = 4),
   (SELECT ServicePrice FROM Dimension.[Service] WHERE ServiceKey = 4));

INSERT INTO Fact.Accounts VALUES 
   ((SELECT DateKey FROM Dimension.[Date] WHERE DateKey = 5),
   (SELECT CustomerKey FROM Dimension.[Customer] WHERE CustomerKey = 5),
   (SELECT ServiceKey FROM Dimension.[Service] WHERE ServiceKey = 5),
   (SELECT LocationKey FROM Dimension.[Location] WHERE LocationKey = 5),
   (SELECT ServicePrice FROM Dimension.[Service] WHERE ServiceKey = 5));

INSERT INTO Fact.Accounts VALUES 
   ((SELECT DateKey FROM Dimension.[Date] WHERE DateKey = 6),
   (SELECT CustomerKey FROM Dimension.[Customer] WHERE CustomerKey = 6),
   (SELECT ServiceKey FROM Dimension.[Service] WHERE ServiceKey = 6),
   (SELECT LocationKey FROM Dimension.[Location] WHERE LocationKey = 6),
   (SELECT ServicePrice FROM Dimension.[Service] WHERE ServiceKey = 6));

INSERT INTO Fact.Accounts VALUES 
   ((SELECT DateKey FROM Dimension.[Date] WHERE DateKey = 7),
   (SELECT CustomerKey FROM Dimension.[Customer] WHERE CustomerKey = 7),
   (SELECT ServiceKey FROM Dimension.[Service] WHERE ServiceKey = 7),
   (SELECT LocationKey FROM Dimension.[Location] WHERE LocationKey = 7),
   (SELECT ServicePrice FROM Dimension.[Service] WHERE ServiceKey = 7));

INSERT INTO Fact.Accounts VALUES 
   ((SELECT DateKey FROM Dimension.[Date] WHERE DateKey = 8),
   (SELECT CustomerKey FROM Dimension.[Customer] WHERE CustomerKey = 8),
   (SELECT ServiceKey FROM Dimension.[Service] WHERE ServiceKey = 8),
   (SELECT LocationKey FROM Dimension.[Location] WHERE LocationKey = 8),
   (SELECT ServicePrice FROM Dimension.[Service] WHERE ServiceKey = 8));

INSERT INTO Fact.Accounts VALUES 
   ((SELECT DateKey FROM Dimension.[Date] WHERE DateKey = 9),
   (SELECT CustomerKey FROM Dimension.[Customer] WHERE CustomerKey = 9),
   (SELECT ServiceKey FROM Dimension.[Service] WHERE ServiceKey = 9),
   (SELECT LocationKey FROM Dimension.[Location] WHERE LocationKey = 9),
   (SELECT ServicePrice FROM Dimension.[Service] WHERE ServiceKey = 9));

INSERT INTO Fact.Accounts VALUES 
   ((SELECT DateKey FROM Dimension.[Date] WHERE DateKey = 10),
   (SELECT CustomerKey FROM Dimension.[Customer] WHERE CustomerKey = 10),
   (SELECT ServiceKey FROM Dimension.[Service] WHERE ServiceKey = 10),
   (SELECT LocationKey FROM Dimension.[Location] WHERE LocationKey = 10),
   (SELECT ServicePrice FROM Dimension.[Service] WHERE ServiceKey = 10));
