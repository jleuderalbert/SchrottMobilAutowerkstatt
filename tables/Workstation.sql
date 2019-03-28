USE SchrottMobil;
DROP TABLE IF EXISTS Workstation;

CREATE TABLE Workstation
(
  ID   INT NOT NULL Auto_Increment,
  Type VARCHAR(255),
  PRIMARY KEY (ID)
);

INSERT INTO Workstation
  (Type)
VALUES ('Stellplatz');

INSERT INTO Workstation
  (Type)
VALUES ('Stellplatz');

INSERT INTO Workstation
  (Type)
VALUES ('Hebebühne');

INSERT INTO Workstation
  (Type)
VALUES ('Stellplatz');

INSERT INTO Workstation
  (Type)
VALUES ('Stellplatz');

INSERT INTO Workstation
  (Type)
VALUES ('Lakierkabine');