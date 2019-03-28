USE SchrottMobil;
DROP TABLE IF EXISTS Stock;

CREATE TABLE Stock
(
  ID            INT NOT NULL AUTO_INCREMENT,
  StorageAreaID INT,
  ArticleID     INT,
  ItemCount     INT,
  PRIMARY KEY (ID),
  FOREIGN KEY (ArticleID) REFERENCES Article (ID),
  FOREIGN KEY (StorageAreaID) REFERENCES StorageArea (ID)
);

INSERT INTO Stock
  (ArticleID, StorageAreaID, ItemCount)
VALUES (2, 2, 2);

INSERT INTO Stock
  (ArticleID, StorageAreaID, ItemCount)
VALUES (3, 7, 1);

INSERT INTO Stock
  (ArticleID, StorageAreaID, ItemCount)
VALUES (4, 7, 8);

INSERT INTO Stock
  (ArticleID, StorageAreaID, Itemcount)
VALUES (5, 5, 5);

INSERT INTO Stock
  (ArticleID, StorageAreaID, ItemCount)
VALUES (6, 7, 10);

INSERT INTO Stock
  (ArticleID, StorageAreaID, ItemCount)
VALUES (7, 6, 5);

INSERT INTO Stock
  (ArticleID, StorageAreaID, ItemCount)
VALUES (8, 6, 5);

INSERT INTO Stock
  (ArticleID, StorageAreaID, ItemCount)
VALUES (9, 7, 2);

INSERT INTO Stock
  (ArticleID, StorageAreaID, ItemCount)
VALUES (10, 8, 4);