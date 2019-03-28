USE SchrottMobil;
DROP TABLE IF EXISTS Customer;

CREATE TABLE Customer
(
  ID        INT          NOT Null AUTO_INCREMENT,
  FirstName VARCHAR(255),
  LastName  VARCHAR(255) NOT NULL,
  AddressID INT,
  PRIMARY KEY (ID),
  FOREIGN KEY (AddressID) REFERENCES Address (ID)
);

INSERT INTO Customer
  (LastName, FirstName, AddressID)
VALUES ('Coholic', 'Al', 2);

INSERT INTO Customer
  (LastName, FirstName, AddressID)
VALUES ('Coholic', 'Al Jr.', 3);

INSERT INTO Customer
  (LastName, FirstName, AddressID)
VALUES ('Rakete-Gete', 'Magarete', 4);