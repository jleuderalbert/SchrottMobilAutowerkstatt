USE SchrottMobil;
DROP TABLE IF EXISTS Address;

CREATE TABLE Address
(
  ID      INT          NOT NULL AUTO_INCREMENT,
  ZipCode INT          NOT NULL,
  City    VARCHAR(255) NOT NULL,
  Address VARCHAR(255) NOT NULL,
  PRIMARY KEY (ID)
);

INSERT INTO Address
  (Address, ZipCode, City)
VALUES ('Humpelweg 4', 48123, 'Teststadt');

INSERT INTO Address
  (Address, ZipCode, City)
VALUES ('Popelweg', 48933, 'Nießen');

INSERT INTO Address
  (Address, ZipCode, City)
VALUES ('Teststraße 1', 48123, 'Teststadt');

INSERT INTO Address
  (Address, ZipCode, City)
VALUES ('Teststraße 99', 48123, 'Teststadt');