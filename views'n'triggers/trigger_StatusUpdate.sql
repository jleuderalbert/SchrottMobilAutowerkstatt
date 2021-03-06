USE SchrottMobil;
DROP TRIGGER IF EXISTS StatusUpdate;

CREATE TRIGGER StatusUpdate
  AFTER UPDATE
  ON OrderItem
  FOR EACH ROW
BEGIN
  DECLARE REPAIR_ORDER_ID INT DEFAULT 0;
  DECLARE MAIN_STATUS INT DEFAULT 0;

  SET REPAIR_ORDER_ID = NEW.RepairOrderID;

  SELECT StatusID
  FROM OrderItem
         LEFT JOIN Status on OrderItem.StatusID = Status.ID
  WHERE Priority = (
    SELECT MAX(Priority)
    FROM OrderItem
           LEFT JOIN Status S on OrderItem.StatusID = S.ID
    WHERE RepairOrderID = REPAIR_ORDER_ID)
    AND RepairOrderID = REPAIR_ORDER_ID INTO MAIN_STATUS;

  UPDATE RepairOrder SET StatusID = MAIN_STATUS WHERE ID = REPAIR_ORDER_ID;
END;
