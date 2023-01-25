USE ClientDW;
GO
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

INSERT INTO Fact.Accounts VALUES 
   ((SELECT DateKey FROM Dimension.[Date] WHERE DateKey = 11),
   (SELECT CustomerKey FROM Dimension.[Customer] WHERE CustomerKey = 11),
   (SELECT ServiceKey FROM Dimension.[Service] WHERE ServiceKey = 11),
   (SELECT LocationKey FROM Dimension.[Location] WHERE LocationKey = 11),
   (SELECT ServicePrice FROM Dimension.[Service] WHERE ServiceKey = 11));

INSERT INTO Fact.Accounts VALUES 
   ((SELECT DateKey FROM Dimension.[Date] WHERE DateKey = 12),
   (SELECT CustomerKey FROM Dimension.[Customer] WHERE CustomerKey = 12),
   (SELECT ServiceKey FROM Dimension.[Service] WHERE ServiceKey = 12),
   (SELECT LocationKey FROM Dimension.[Location] WHERE LocationKey = 12),
   (SELECT ServicePrice FROM Dimension.[Service] WHERE ServiceKey = 12));

INSERT INTO Fact.Accounts VALUES 
   ((SELECT DateKey FROM Dimension.[Date] WHERE DateKey = 13),
   (SELECT CustomerKey FROM Dimension.[Customer] WHERE CustomerKey = 13),
   (SELECT ServiceKey FROM Dimension.[Service] WHERE ServiceKey = 13),
   (SELECT LocationKey FROM Dimension.[Location] WHERE LocationKey = 13),
   (SELECT ServicePrice FROM Dimension.[Service] WHERE ServiceKey = 13));

INSERT INTO Fact.Accounts VALUES 
   ((SELECT DateKey FROM Dimension.[Date] WHERE DateKey = 14),
   (SELECT CustomerKey FROM Dimension.[Customer] WHERE CustomerKey = 14),
   (SELECT ServiceKey FROM Dimension.[Service] WHERE ServiceKey = 14),
   (SELECT LocationKey FROM Dimension.[Location] WHERE LocationKey = 14),
   (SELECT ServicePrice FROM Dimension.[Service] WHERE ServiceKey = 14));

INSERT INTO Fact.Accounts VALUES 
   ((SELECT DateKey FROM Dimension.[Date] WHERE DateKey = 15),
   (SELECT CustomerKey FROM Dimension.[Customer] WHERE CustomerKey = 15),
   (SELECT ServiceKey FROM Dimension.[Service] WHERE ServiceKey = 15),
   (SELECT LocationKey FROM Dimension.[Location] WHERE LocationKey = 15),
   (SELECT ServicePrice FROM Dimension.[Service] WHERE ServiceKey = 15));

INSERT INTO Fact.Accounts VALUES 
   ((SELECT DateKey FROM Dimension.[Date] WHERE DateKey = 16),
   (SELECT CustomerKey FROM Dimension.[Customer] WHERE CustomerKey = 16),
   (SELECT ServiceKey FROM Dimension.[Service] WHERE ServiceKey = 16),
   (SELECT LocationKey FROM Dimension.[Location] WHERE LocationKey = 16),
   (SELECT ServicePrice FROM Dimension.[Service] WHERE ServiceKey = 16));

INSERT INTO Fact.Accounts VALUES 
   ((SELECT DateKey FROM Dimension.[Date] WHERE DateKey = 17),
   (SELECT CustomerKey FROM Dimension.[Customer] WHERE CustomerKey = 17),
   (SELECT ServiceKey FROM Dimension.[Service] WHERE ServiceKey = 17),
   (SELECT LocationKey FROM Dimension.[Location] WHERE LocationKey = 17),
   (SELECT ServicePrice FROM Dimension.[Service] WHERE ServiceKey = 17));

INSERT INTO Fact.Accounts VALUES 
   ((SELECT DateKey FROM Dimension.[Date] WHERE DateKey = 18),
   (SELECT CustomerKey FROM Dimension.[Customer] WHERE CustomerKey = 18),
   (SELECT ServiceKey FROM Dimension.[Service] WHERE ServiceKey = 18),
   (SELECT LocationKey FROM Dimension.[Location] WHERE LocationKey = 18),
   (SELECT ServicePrice FROM Dimension.[Service] WHERE ServiceKey = 18));

INSERT INTO Fact.Accounts VALUES 
   ((SELECT DateKey FROM Dimension.[Date] WHERE DateKey = 19),
   (SELECT CustomerKey FROM Dimension.[Customer] WHERE CustomerKey = 19),
   (SELECT ServiceKey FROM Dimension.[Service] WHERE ServiceKey = 19),
   (SELECT LocationKey FROM Dimension.[Location] WHERE LocationKey = 19),
   (SELECT ServicePrice FROM Dimension.[Service] WHERE ServiceKey = 19));

INSERT INTO Fact.Accounts VALUES 
   ((SELECT DateKey FROM Dimension.[Date] WHERE DateKey = 20),
   (SELECT CustomerKey FROM Dimension.[Customer] WHERE CustomerKey = 20),
   (SELECT ServiceKey FROM Dimension.[Service] WHERE ServiceKey = 20),
   (SELECT LocationKey FROM Dimension.[Location] WHERE LocationKey = 20),
   (SELECT ServicePrice FROM Dimension.[Service] WHERE ServiceKey = 20));

INSERT INTO Fact.Accounts VALUES 
   ((SELECT DateKey FROM Dimension.[Date] WHERE DateKey = 21),
   (SELECT CustomerKey FROM Dimension.[Customer] WHERE CustomerKey = 21),
   (SELECT ServiceKey FROM Dimension.[Service] WHERE ServiceKey = 21),
   (SELECT LocationKey FROM Dimension.[Location] WHERE LocationKey = 21),
   (SELECT ServicePrice FROM Dimension.[Service] WHERE ServiceKey = 21));

INSERT INTO Fact.Accounts VALUES 
   ((SELECT DateKey FROM Dimension.[Date] WHERE DateKey = 22),
   (SELECT CustomerKey FROM Dimension.[Customer] WHERE CustomerKey = 22),
   (SELECT ServiceKey FROM Dimension.[Service] WHERE ServiceKey = 22),
   (SELECT LocationKey FROM Dimension.[Location] WHERE LocationKey = 22),
   (SELECT ServicePrice FROM Dimension.[Service] WHERE ServiceKey = 22));

INSERT INTO Fact.Accounts VALUES 
   ((SELECT DateKey FROM Dimension.[Date] WHERE DateKey = 23),
   (SELECT CustomerKey FROM Dimension.[Customer] WHERE CustomerKey = 23),
   (SELECT ServiceKey FROM Dimension.[Service] WHERE ServiceKey = 23),
   (SELECT LocationKey FROM Dimension.[Location] WHERE LocationKey = 23),
   (SELECT ServicePrice FROM Dimension.[Service] WHERE ServiceKey = 23));

INSERT INTO Fact.Accounts VALUES 
   ((SELECT DateKey FROM Dimension.[Date] WHERE DateKey = 24),
   (SELECT CustomerKey FROM Dimension.[Customer] WHERE CustomerKey = 24),
   (SELECT ServiceKey FROM Dimension.[Service] WHERE ServiceKey = 24),
   (SELECT LocationKey FROM Dimension.[Location] WHERE LocationKey = 24),
   (SELECT ServicePrice FROM Dimension.[Service] WHERE ServiceKey = 24));

INSERT INTO Fact.Accounts VALUES 
   ((SELECT DateKey FROM Dimension.[Date] WHERE DateKey = 25),
   (SELECT CustomerKey FROM Dimension.[Customer] WHERE CustomerKey = 25),
   (SELECT ServiceKey FROM Dimension.[Service] WHERE ServiceKey = 25),
   (SELECT LocationKey FROM Dimension.[Location] WHERE LocationKey = 25),
   (SELECT ServicePrice FROM Dimension.[Service] WHERE ServiceKey = 25));

INSERT INTO Fact.Accounts VALUES 
   ((SELECT DateKey FROM Dimension.[Date] WHERE DateKey = 26),
   (SELECT CustomerKey FROM Dimension.[Customer] WHERE CustomerKey = 26),
   (SELECT ServiceKey FROM Dimension.[Service] WHERE ServiceKey = 26),
   (SELECT LocationKey FROM Dimension.[Location] WHERE LocationKey = 26),
   (SELECT ServicePrice FROM Dimension.[Service] WHERE ServiceKey = 26));

INSERT INTO Fact.Accounts VALUES 
   ((SELECT DateKey FROM Dimension.[Date] WHERE DateKey = 27),
   (SELECT CustomerKey FROM Dimension.[Customer] WHERE CustomerKey = 27),
   (SELECT ServiceKey FROM Dimension.[Service] WHERE ServiceKey = 27),
   (SELECT LocationKey FROM Dimension.[Location] WHERE LocationKey = 27),
   (SELECT ServicePrice FROM Dimension.[Service] WHERE ServiceKey = 27));

INSERT INTO Fact.Accounts VALUES 
   ((SELECT DateKey FROM Dimension.[Date] WHERE DateKey = 28),
   (SELECT CustomerKey FROM Dimension.[Customer] WHERE CustomerKey = 28),
   (SELECT ServiceKey FROM Dimension.[Service] WHERE ServiceKey = 28),
   (SELECT LocationKey FROM Dimension.[Location] WHERE LocationKey = 28),
   (SELECT ServicePrice FROM Dimension.[Service] WHERE ServiceKey = 28));

INSERT INTO Fact.Accounts VALUES 
   ((SELECT DateKey FROM Dimension.[Date] WHERE DateKey = 29),
   (SELECT CustomerKey FROM Dimension.[Customer] WHERE CustomerKey = 29),
   (SELECT ServiceKey FROM Dimension.[Service] WHERE ServiceKey = 29),
   (SELECT LocationKey FROM Dimension.[Location] WHERE LocationKey = 29),
   (SELECT ServicePrice FROM Dimension.[Service] WHERE ServiceKey = 29));

INSERT INTO Fact.Accounts VALUES 
   ((SELECT DateKey FROM Dimension.[Date] WHERE DateKey = 30),
   (SELECT CustomerKey FROM Dimension.[Customer] WHERE CustomerKey = 30),
   (SELECT ServiceKey FROM Dimension.[Service] WHERE ServiceKey = 30),
   (SELECT LocationKey FROM Dimension.[Location] WHERE LocationKey = 30),
   (SELECT ServicePrice FROM Dimension.[Service] WHERE ServiceKey = 30));

INSERT INTO Fact.Accounts VALUES 
   ((SELECT DateKey FROM Dimension.[Date] WHERE DateKey = 31),
   (SELECT CustomerKey FROM Dimension.[Customer] WHERE CustomerKey = 31),
   (SELECT ServiceKey FROM Dimension.[Service] WHERE ServiceKey = 31),
   (SELECT LocationKey FROM Dimension.[Location] WHERE LocationKey = 31),
   (SELECT ServicePrice FROM Dimension.[Service] WHERE ServiceKey = 31));

INSERT INTO Fact.Accounts VALUES 
   ((SELECT DateKey FROM Dimension.[Date] WHERE DateKey = 32),
   (SELECT CustomerKey FROM Dimension.[Customer] WHERE CustomerKey = 32),
   (SELECT ServiceKey FROM Dimension.[Service] WHERE ServiceKey = 32),
   (SELECT LocationKey FROM Dimension.[Location] WHERE LocationKey = 32),
   (SELECT ServicePrice FROM Dimension.[Service] WHERE ServiceKey = 32));

INSERT INTO Fact.Accounts VALUES 
   ((SELECT DateKey FROM Dimension.[Date] WHERE DateKey = 33),
   (SELECT CustomerKey FROM Dimension.[Customer] WHERE CustomerKey = 33),
   (SELECT ServiceKey FROM Dimension.[Service] WHERE ServiceKey = 33),
   (SELECT LocationKey FROM Dimension.[Location] WHERE LocationKey = 33),
   (SELECT ServicePrice FROM Dimension.[Service] WHERE ServiceKey = 33));

INSERT INTO Fact.Accounts VALUES 
   ((SELECT DateKey FROM Dimension.[Date] WHERE DateKey = 34),
   (SELECT CustomerKey FROM Dimension.[Customer] WHERE CustomerKey = 34),
   (SELECT ServiceKey FROM Dimension.[Service] WHERE ServiceKey = 34),
   (SELECT LocationKey FROM Dimension.[Location] WHERE LocationKey = 34),
   (SELECT ServicePrice FROM Dimension.[Service] WHERE ServiceKey = 34));

INSERT INTO Fact.Accounts VALUES 
   ((SELECT DateKey FROM Dimension.[Date] WHERE DateKey = 35),
   (SELECT CustomerKey FROM Dimension.[Customer] WHERE CustomerKey = 35),
   (SELECT ServiceKey FROM Dimension.[Service] WHERE ServiceKey = 35),
   (SELECT LocationKey FROM Dimension.[Location] WHERE LocationKey = 35),
   (SELECT ServicePrice FROM Dimension.[Service] WHERE ServiceKey = 35));

INSERT INTO Fact.Accounts VALUES 
   ((SELECT DateKey FROM Dimension.[Date] WHERE DateKey = 36),
   (SELECT CustomerKey FROM Dimension.[Customer] WHERE CustomerKey = 36),
   (SELECT ServiceKey FROM Dimension.[Service] WHERE ServiceKey = 36),
   (SELECT LocationKey FROM Dimension.[Location] WHERE LocationKey = 36),
   (SELECT ServicePrice FROM Dimension.[Service] WHERE ServiceKey = 36));

INSERT INTO Fact.Accounts VALUES 
   ((SELECT DateKey FROM Dimension.[Date] WHERE DateKey = 37),
   (SELECT CustomerKey FROM Dimension.[Customer] WHERE CustomerKey = 37),
   (SELECT ServiceKey FROM Dimension.[Service] WHERE ServiceKey = 37),
   (SELECT LocationKey FROM Dimension.[Location] WHERE LocationKey = 37),
   (SELECT ServicePrice FROM Dimension.[Service] WHERE ServiceKey = 37));

INSERT INTO Fact.Accounts VALUES 
   ((SELECT DateKey FROM Dimension.[Date] WHERE DateKey = 38),
   (SELECT CustomerKey FROM Dimension.[Customer] WHERE CustomerKey = 38),
   (SELECT ServiceKey FROM Dimension.[Service] WHERE ServiceKey = 38),
   (SELECT LocationKey FROM Dimension.[Location] WHERE LocationKey = 38),
   (SELECT ServicePrice FROM Dimension.[Service] WHERE ServiceKey = 38));

INSERT INTO Fact.Accounts VALUES 
   ((SELECT DateKey FROM Dimension.[Date] WHERE DateKey = 39),
   (SELECT CustomerKey FROM Dimension.[Customer] WHERE CustomerKey = 39),
   (SELECT ServiceKey FROM Dimension.[Service] WHERE ServiceKey = 39),
   (SELECT LocationKey FROM Dimension.[Location] WHERE LocationKey = 39),
   (SELECT ServicePrice FROM Dimension.[Service] WHERE ServiceKey = 39));

INSERT INTO Fact.Accounts VALUES 
   ((SELECT DateKey FROM Dimension.[Date] WHERE DateKey = 40),
   (SELECT CustomerKey FROM Dimension.[Customer] WHERE CustomerKey = 40),
   (SELECT ServiceKey FROM Dimension.[Service] WHERE ServiceKey = 40),
   (SELECT LocationKey FROM Dimension.[Location] WHERE LocationKey = 40),
   (SELECT ServicePrice FROM Dimension.[Service] WHERE ServiceKey = 40));

INSERT INTO Fact.Accounts VALUES 
   ((SELECT DateKey FROM Dimension.[Date] WHERE DateKey = 41),
   (SELECT CustomerKey FROM Dimension.[Customer] WHERE CustomerKey = 41),
   (SELECT ServiceKey FROM Dimension.[Service] WHERE ServiceKey = 41),
   (SELECT LocationKey FROM Dimension.[Location] WHERE LocationKey = 41),
   (SELECT ServicePrice FROM Dimension.[Service] WHERE ServiceKey = 41));

INSERT INTO Fact.Accounts VALUES 
   ((SELECT DateKey FROM Dimension.[Date] WHERE DateKey = 42),
   (SELECT CustomerKey FROM Dimension.[Customer] WHERE CustomerKey = 42),
   (SELECT ServiceKey FROM Dimension.[Service] WHERE ServiceKey = 42),
   (SELECT LocationKey FROM Dimension.[Location] WHERE LocationKey = 42),
   (SELECT ServicePrice FROM Dimension.[Service] WHERE ServiceKey = 42));

INSERT INTO Fact.Accounts VALUES 
   ((SELECT DateKey FROM Dimension.[Date] WHERE DateKey = 43),
   (SELECT CustomerKey FROM Dimension.[Customer] WHERE CustomerKey = 43),
   (SELECT ServiceKey FROM Dimension.[Service] WHERE ServiceKey = 43),
   (SELECT LocationKey FROM Dimension.[Location] WHERE LocationKey = 43),
   (SELECT ServicePrice FROM Dimension.[Service] WHERE ServiceKey = 43));

INSERT INTO Fact.Accounts VALUES 
   ((SELECT DateKey FROM Dimension.[Date] WHERE DateKey = 44),
   (SELECT CustomerKey FROM Dimension.[Customer] WHERE CustomerKey = 44),
   (SELECT ServiceKey FROM Dimension.[Service] WHERE ServiceKey = 44),
   (SELECT LocationKey FROM Dimension.[Location] WHERE LocationKey = 44),
   (SELECT ServicePrice FROM Dimension.[Service] WHERE ServiceKey = 44));

INSERT INTO Fact.Accounts VALUES 
   ((SELECT DateKey FROM Dimension.[Date] WHERE DateKey = 45),
   (SELECT CustomerKey FROM Dimension.[Customer] WHERE CustomerKey = 45),
   (SELECT ServiceKey FROM Dimension.[Service] WHERE ServiceKey = 45),
   (SELECT LocationKey FROM Dimension.[Location] WHERE LocationKey = 45),
   (SELECT ServicePrice FROM Dimension.[Service] WHERE ServiceKey = 45));

INSERT INTO Fact.Accounts VALUES 
   ((SELECT DateKey FROM Dimension.[Date] WHERE DateKey = 46),
   (SELECT CustomerKey FROM Dimension.[Customer] WHERE CustomerKey = 46),
   (SELECT ServiceKey FROM Dimension.[Service] WHERE ServiceKey = 46),
   (SELECT LocationKey FROM Dimension.[Location] WHERE LocationKey = 46),
   (SELECT ServicePrice FROM Dimension.[Service] WHERE ServiceKey = 46));

INSERT INTO Fact.Accounts VALUES 
   ((SELECT DateKey FROM Dimension.[Date] WHERE DateKey = 47),
   (SELECT CustomerKey FROM Dimension.[Customer] WHERE CustomerKey = 47),
   (SELECT ServiceKey FROM Dimension.[Service] WHERE ServiceKey = 47),
   (SELECT LocationKey FROM Dimension.[Location] WHERE LocationKey = 47),
   (SELECT ServicePrice FROM Dimension.[Service] WHERE ServiceKey = 47));

INSERT INTO Fact.Accounts VALUES 
   ((SELECT DateKey FROM Dimension.[Date] WHERE DateKey = 48),
   (SELECT CustomerKey FROM Dimension.[Customer] WHERE CustomerKey = 48),
   (SELECT ServiceKey FROM Dimension.[Service] WHERE ServiceKey = 48),
   (SELECT LocationKey FROM Dimension.[Location] WHERE LocationKey = 48),
   (SELECT ServicePrice FROM Dimension.[Service] WHERE ServiceKey = 48));

INSERT INTO Fact.Accounts VALUES 
   ((SELECT DateKey FROM Dimension.[Date] WHERE DateKey = 49),
   (SELECT CustomerKey FROM Dimension.[Customer] WHERE CustomerKey = 49),
   (SELECT ServiceKey FROM Dimension.[Service] WHERE ServiceKey = 49),
   (SELECT LocationKey FROM Dimension.[Location] WHERE LocationKey = 49),
   (SELECT ServicePrice FROM Dimension.[Service] WHERE ServiceKey = 49));

INSERT INTO Fact.Accounts VALUES 
   ((SELECT DateKey FROM Dimension.[Date] WHERE DateKey = 50),
   (SELECT CustomerKey FROM Dimension.[Customer] WHERE CustomerKey = 50),
   (SELECT ServiceKey FROM Dimension.[Service] WHERE ServiceKey = 50),
   (SELECT LocationKey FROM Dimension.[Location] WHERE LocationKey = 50),
   (SELECT ServicePrice FROM Dimension.[Service] WHERE ServiceKey = 50));

