USE SchrottMobil;
DROP TABLE IF EXISTS RepairOrder;

CREATE TABLE RepairOrder
(
  ID             INT NOT NULL AUTO_INCREMENT,
  StatusID       INT NOT NULL,
  MotorVehicleID INT NOT NULL,
  CustomerID     INT NOT NULL,
  PRIMARY KEY (ID),
  FOREIGN KEY (MotorVehicleID) REFERENCES MotorVehicle (ID),
  FOREIGN KEY (CustomerID) REFERENCES Customer (ID),
  FOREIGN KEY (StatusID) REFERENCES Status (ID)
);

INSERT INTO RepairOrder
  (MotorVehicleID, CustomerID, StatusID)
VALUES (2, 1, 1);

INSERT INTO RepairOrder
  (MotorVehicleID, CustomerID, StatusID)
VALUES (3, 2, 1);

INSERT INTO RepairOrder
  (MotorVehicleID, CustomerID, StatusID)
VALUES (4, 3, 1);