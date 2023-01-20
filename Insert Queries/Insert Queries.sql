INSERT INTO Dimension.Customer VALUES 
    (01, 'Christopher', 'Guerrero', 'Herrera, Garcia and Whitehead'),
    (02, 'Natalie', 'David', 'Drake Group'),
    (03, 'Sean', 'Stevens', 'Foley-Mills'),
    (04, 'Eric', 'Callahan', 'Ross LLC'),
    (05, 'Mary', 'Smith', 'Acosta, Ramirez and Fernandez'),
    (06, 'Beth', 'Jenkins', 'Meyer-Contreras'),
    (07, 'Laura', 'Burton', 'Reyes Inc'),
    (08, 'Melissa', 'Bell', 'Brown-Burke'),
    (09, 'Jennifer', 'Everett', 'Allen Ltd'),
    (1010, 'Shannon', 'Harrington', 'Hines-Good');

    SELECT *
    FROM Dimension.Customer;

    INSERT INTO Dimension.Service VALUES 
    ('account management', 926),
    ('account management', 629),
    ('account management', 438),
    ('account management', 946),
    ('account management', 587),
    ('account management', 669),
    ('account management', 555),
    ('account management', 541),
    ('account management', 224),
    ('account management', 882);

    SELECt * FROM Dimension.Service;

    INSERT INTO Dimension.Location VALUES 
    ( 'New York', 'NY', 'New York', 10013, 'North America'),
    ( 'New York', 'NY', 'New York', 10013, 'North America'),
    ( 'New York', 'NY', 'New York', 10013, 'North America'),
    ( 'New York', 'NY', 'New York', 10013, 'North America'),
    ( 'New York', 'NY', 'New York', 10013, 'North America'),
    ( 'New York', 'NY', 'New York', 10013, 'North America'),
    ( 'New York', 'NY', 'New York', 10013, 'North America'),
    ( 'New York', 'NY', 'New York', 10013, 'North America'),
    ( 'New York', 'NY', 'New York', 10013, 'North America'),
    ( 'New York', 'NY', 'New York', 10013, 'North America')
    ;

    SELECT * FROM Dimension.[Location];

    INSERT INTO Dimension.Date VALUES 
   (2022-01-19, 'Thursday', 19, 'January', 01, 22),
   (2022-01-19, 'Thursday', 19, 'January', 01, 22),
   (2022-01-19, 'Thursday', 19, 'January', 01, 22),
   (2022-01-19, 'Thursday', 19, 'January', 01, 22),
   (2022-01-19, 'Thursday', 19, 'January', 01, 22),
   (2022-01-19, 'Thursday', 19, 'January', 01, 22),
   (2022-01-19, 'Thursday', 19, 'January', 01, 22),
   (2022-01-19, 'Thursday', 19, 'January', 01, 22),
   (2022-01-19, 'Thursday', 19, 'January', 01, 22),
   (2022-01-19, 'Thursday', 19, 'January', 01, 22)
;