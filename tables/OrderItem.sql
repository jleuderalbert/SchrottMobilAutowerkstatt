USE SchrottMobil;
DROP TABLE IF EXISTS OrderItem;

CREATE TABLE OrderItem
(
  ID            INT NOT NULL AUTO_INCREMENT,
  Task          VARCHAR(255),
  StatusID      INT NOT NULL,
  EmployeeID    INT,
  WorkstationID INT,
  RepairOrderID INT NOT NULL,
  PRIMARY KEY (ID),
  FOREIGN KEY (EmployeeID) REFERENCES Employee (ID),
  FOREIGN KEY (RepairOrderID) REFERENCES RepairOrder (ID),
  FOREIGN KEY (WorkstationID) REFERENCES Workstation (ID),
  FOREIGN KEY (StatusID) REFERENCES Status (ID)
);

INSERT INTO OrderItem
  (RepairOrderID, EmployeeID, WorkstationID, StatusID, Task)
VALUES (1, 1, 1, 1, 'Kolben wechseln');

INSERT INTO OrderItem
  (RepairOrderID, EmployeeID, WorkstationID, StatusID, Task)
VALUES (1, 2, 1, 3, 'Neue Sitze einbauen');

INSERT INTO OrderItem
  (RepairOrderID, EmployeeID, WorkstationID, StatusID, Task)
VALUES (2, 3, 4, 2, 'Aupuff wechseln');

INSERT INTO OrderItem
  (RepairOrderID, EmployeeID, WorkstationID, StatusID, Task)
VALUES (2, 3, 4, 3, 'Lenkrad Tauschen');

INSERT INTO OrderItem
  (RepairOrderID, EmployeeID, WorkstationID, StatusID, Task)
VALUES (3, 2, 2, 1, 'Neuen Sitz Montieren');

INSERT INTO OrderItem
  (RepairOrderID, EmployeeID, WorkstationID, StatusID, Task)
VALUES (3, 3, 2, 1, 'Reifen Wechseln');

INSERT INTO OrderItem
  (RepairOrderID, EmployeeID, WorkstationID, StatusID, Task)
VALUES (3, 2, 3, 3, 'Vergaser Tauschen');