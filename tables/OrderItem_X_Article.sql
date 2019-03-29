USE SchrottMobil;
DROP TABLE IF EXISTS OrderItem_X_Article;

CREATE TABLE OrderItem_X_Article
(
  ID          INT NOT NULL AUTO_INCREMENT,
  OrderItemID INT NOT NULL,
  ArticleID   INT NOT NULL,
  PRIMARY KEY (ID),
  FOREIGN KEY (OrderItemID) REFERENCES OrderItem (ID),
  FOREIGN KEY (ArticleID) REFERENCES Article (ID)
);

INSERT INTO OrderItem_X_Article
  (OrderItemID, ArticleID)
VALUES (1, 9);

INSERT INTO OrderItem_X_Article
  (OrderItemID, ArticleID)
VALUES (2, 8);

INSERT INTO OrderItem_X_Article
  (OrderItemID, ArticleID)
VALUES (3, 3);

INSERT INTO OrderItem_X_Article
  (OrderItemID, ArticleID)
VALUES (4, 5);

INSERT INTO OrderItem_X_Article
  (OrderItemID, ArticleID)
VALUES (5, 6);

INSERT INTO OrderItem_X_Article
  (OrderItemID, ArticleID)
VALUES (6, 3);

INSERT INTO OrderItem_X_Article
  (OrderItemID, ArticleID)
VALUES (7, 1);