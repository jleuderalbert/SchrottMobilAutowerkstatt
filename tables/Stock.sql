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
VALUES (1, 2, 2);

INSERT INTO Stock
  (ArticleID, StorageAreaID, ItemCount)
VALUES (2, 7, 1);

INSERT INTO Stock
  (ArticleID, StorageAreaID, ItemCount)
VALUES (3, 7, 8);

INSERT INTO Stock
  (ArticleID, StorageAreaID, Itemcount)
VALUES (4, 5, 5);

INSERT INTO Stock
  (ArticleID, StorageAreaID, ItemCount)
VALUES (5, 7, 10);

INSERT INTO Stock
  (ArticleID, StorageAreaID, ItemCount)
VALUES (6, 6, 5);

INSERT INTO Stock
  (ArticleID, StorageAreaID, ItemCount)
VALUES (7, 6, 5);

INSERT INTO Stock
  (ArticleID, StorageAreaID, ItemCount)
VALUES (8, 7, 2);

INSERT INTO Stock
  (ArticleID, StorageAreaID, ItemCount)
VALUES (9, 8, 4);