USE SchrottMobil;
DROP VIEW IF EXISTS ResolveOrderItem;

CREATE VIEW ResolveOrderItem AS (
  SELECT OrderItem.ID                         AS 'TaskNumber',
         OrderItem.Task                       AS 'Task',
         OrderItem.RepairOrderID              AS 'RepairOrderID',
         S.Name                               AS 'Status',
         CONCAT(E.FirstName, ' ', E.LastName) AS 'Employee',
         W.Type                               AS 'Workstation',
         A.Name                               AS 'ArticleName',
         A.Type                               AS 'ArticleType',
         A.VehicleType                        AS 'ArticleVehicleType',
         A.Color                              AS 'ArticleColor',
         A.IsBooking                          AS 'IsBooking',
         A.Stock                              AS 'ArticleStock',
         A.StorageLabel                       AS 'ArticleStorageLabel'
  FROM OrderItem
         LEFT JOIN Employee E on OrderItem.EmployeeID = E.ID
         LEFT JOIN Workstation W on OrderItem.WorkstationID = W.ID
         LEFT JOIN OrderItem_X_Article OIXA on OrderItem.ID = OIXA.OrderItemID
         LEFT JOIN ArticleStock A ON OIXA.ArticleID = A.ID
         LEFT JOIN Status S ON OrderItem.StatusID = S.ID
);