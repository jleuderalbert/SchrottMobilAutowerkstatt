USE SchrottMobil;
DROP TABLE IF EXISTS Employee;

CREATE TABLE Employee
(
  ID        INT          NOT NULL AUTO_INCREMENT,
  LastName  VARCHAR(255) NOT NULL,
  FirstName VARCHAR(255),
  PRIMARY KEY (ID)
);

INSERT INTO Employee
  (LastName, FirstName)
VALUES ('Senna', 'Ayraton');

INSERT INTO Employee
  (LastName, FirstName)
VALUES ('McRae', 'Collin');

INSERT INTO Employee
  (LastName, FirstName)
VALUES ('Bellhof', 'Stefan');