USE SchrottMobil;
DROP VIEW IF EXISTS OrderOverview;

CREATE VIEW OrderOverview AS (
  SELECT RepairOrder.ID                                 AS 'OrderNumber',
         S.Name                                         AS 'OrderStatus',
         MV.Model                                       AS 'VehicleModel',
         MV.VIN                                         AS 'VehicleVIN',
         MV.LicencePlate                                AS 'VehicleLicencePlate',
         CONCAT(C.FirstName, ' ', C.LastName)           AS 'Costumer',
         CONCAT(A.Address, ' ', A.ZipCode, ' ', A.City) AS 'CostumerAddress'
  FROM RepairOrder
         LEFT JOIN MotorVehicle MV ON RepairOrder.MotorVehicleID = MV.ID
         LEFT JOIN Customer C ON RepairOrder.CustomerID = C.ID
         LEFT JOIN Address A ON C.AddressID = A.ID
         LEFT JOIN Status S ON RepairOrder.StatusID = S.ID
);
