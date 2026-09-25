USE TOY_STORE;

CREATE TABLE Seller
(
    SellerID INT PRIMARY KEY,
    SellerName VARCHAR(100),
    ContactNo VARCHAR(15),
    Email VARCHAR(100),
    Address VARCHAR(150)
);

INSERT INTO Seller VALUES
(201, "TOY WORLD", "9876500001", "toyworld@gmail.com", "Chennai"),
(202, "KIDS PLANET", "9876500002", "kidsplanet@gmail.com", "Madurai"),
(203, "FUN TOYS", "9876500003", "funtoys@gmail.com", "Coimbatore"),
(204, "PLAY HOUSE", "9876500004", "playhouse@gmail.com", "Salem"),
(205, "HAPPY KIDS", "9876500005", "happykids@gmail.com", "Trichy"),
(206, "TOY MART", "9876500006", "toymart@gmail.com", "Chennai"),
(207, "SMART TOYS", "9876500007", "smarttoys@gmail.com", "Madurai"),
(208, "KIDS WORLD", "9876500008", "kidsworld@gmail.com", "Coimbatore"),
(209, "FUN LAND", "9876500009", "funland@gmail.com", "Salem"),
(210, "PLAY ZONE", "9876500010", "playzone@gmail.com", "Trichy"),
(211, "LITTLE TOYS", "9876500011", "littletoys@gmail.com", "Chennai"),
(212, "KIDS CORNER", "9876500012", "kidscorner@gmail.com", "Madurai"),
(213, "TOY HOUSE", "9876500013", "toyhouse@gmail.com", "Coimbatore"),
(214, "FUN WORLD", "9876500014", "funworld@gmail.com", "Salem"),
(215, "PLAY WORLD", "9876500015", "playworld@gmail.com", "Trichy"),
(216, "KIDS MART", "9876500016", "kidsmart@gmail.com", "Chennai"),
(217, "TOY POINT", "9876500017", "toypoint@gmail.com", "Madurai"),
(218, "HAPPY TOYS", "9876500018", "happytoys@gmail.com", "Coimbatore"),
(219, "PLAY MART", "9876500019", "playmart@gmail.com", "Salem"),
(220, "CITY TOYS", "9876500020", "citytoys@gmail.com", "Trichy"),
(221, "GREEN TOYS", "9876500021", "greentoys@gmail.com", "Chennai"),
(222, "SAFE TOYS", "9876500022", "safetoys@gmail.com", "Madurai"),
(223, "TOY EXPRESS", "9876500023", "toyexpress@gmail.com", "Coimbatore"),
(224, "CARE TOYS", "9876500024", "caretoys@gmail.com", "Salem"),
(225, "BEST TOYS", "9876500025", "besttoys@gmail.com", "Trichy");

SELECT * FROM Seller;

CREATE TABLE Inventory
(
    InventoryID INT PRIMARY KEY,
    ProductID INT,
    SellerID INT,
    AvailabilityStatus VARCHAR(20),
    Stock INT,

    FOREIGN KEY (ProductID)
    REFERENCES Product(ProductID),

    FOREIGN KEY (SellerID)
    REFERENCES Seller(SellerID)
);

INSERT INTO Inventory VALUES
(301, 101, 201, "AVAILABLE", 25),
(302, 102, 202, "AVAILABLE", 15),
(303, 103, 203, "AVAILABLE", 10),
(304, 104, 204, "AVAILABLE", 12),
(305, 105, 205, "AVAILABLE", 30),
(306, 106, 206, "AVAILABLE", 20),
(307, 107, 207, "UNAVAILABLE", 0),
(309, 109, 209, "AVAILABLE", 18),
(310, 110, 210, "AVAILABLE", 15),
(311, 111, 211, "UNAVAILABLE", 0),
(312, 112, 212, "AVAILABLE", 25),
(313, 101, 213, "AVAILABLE", 40),
(314, 102, 214, "UNAVAILABLE", 0),
(315, 103, 215, "AVAILABLE", 20),
(316, 104, 216, "AVAILABLE", 15),
(317, 105, 217, "UNAVAILABLE", 0),
(318, 106, 218, "AVAILABLE", 35),
(319, 107, 219, "AVAILABLE", 10),
(321, 109, 221, "AVAILABLE", 25),
(322, 110, 222, "AVAILABLE", 20),
(323, 111, 223, "UNAVAILABLE", 0),
(324, 112, 224, "AVAILABLE", 30),
(325, 101, 225, "AVAILABLE", 50);

SELECT * FROM Inventory;

UPDATE Inventory
SET Stock = 20,
    AvailabilityStatus = "AVAILABLE"
WHERE InventoryID = 307;

SELECT * FROM Inventory
WHERE InventoryID = 307;

UPDATE Inventory
SET Stock = 0,
    AvailabilityStatus = "UNAVAILABLE"
WHERE InventoryID = 302;

SELECT * FROM Inventory
WHERE InventoryID = 302;

UPDATE Inventory
SET Stock = 50,
    AvailabilityStatus = "AVAILABLE"
WHERE InventoryID = 311;

SELECT * FROM Inventory
WHERE InventoryID = 311;

UPDATE Seller
SET ContactNo = "9876599999",
    Address = "Madurai"
WHERE SellerID = 201;

SELECT * FROM Seller
WHERE SellerID = 201;

DELETE FROM Inventory
WHERE InventoryID = 325;

SELECT * FROM Inventory;

SELECT * FROM Inventory
WHERE AvailabilityStatus = "AVAILABLE";

SELECT * FROM Inventory
WHERE AvailabilityStatus = "UNAVAILABLE";

SELECT COUNT(*) FROM Inventory
WHERE AvailabilityStatus = "AVAILABLE";

SELECT COUNT(*) FROM Inventory
WHERE AvailabilityStatus = "UNAVAILABLE";

SELECT * FROM Inventory
ORDER BY Stock DESC;

SELECT * FROM Inventory;
SELECT * FROM Seller;