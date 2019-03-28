USE SchrottMobil;
DROP TABLE IF EXISTS MotorVehicle;

CREATE TABLE MotorVehicle
(
  ID           INT NOT Null AUTO_INCREMENT,
  VIN          VARCHAR(17),
  LicencePlate VARCHAR(255),
  Model        VARCHAR(255),
  PRIMARY KEY (ID)
);

INSERT INTO MotorVehicle
  (Vin, Licenceplate, Model)
VALUES (1212121212, 'LIP-PE-666', 'BMWM3er');

INSERT INTO MotorVehicle
  (Vin, Licenceplate, Model)
VALUES (33333333333, 'HH-AA-222', 'FordFocus');

INSERT INTO MotorVehicle
  (Vin, Licenceplate, Model)
VALUES (667748385, 'PB-BP-89', 'OpelKadett');

INSERT INTO MotorVehicle
  (Vin, Licenceplate, Model)
VALUES (5847458734, 'HB-II-11', 'GlofGTI');