USE SchrottMobil;
DROP VIEW IF EXISTS AllData;

CREATE VIEW AllData AS (
  SELECT *
  FROM OrderOverview
         LEFT JOIN ResolveOrderItem OI ON OrderOverview.ID = OI.RepairOrderID
);