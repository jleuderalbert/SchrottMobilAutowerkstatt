USE SchrottMobil;
DROP TABLE IF EXISTS StorageArea;

CREATE TABLE StorageArea
(
  ID    INT NOT NULL AUTO_INCREMENT,
  Label VARCHAR(255),
  PRIMARY KEY (ID)
);

INSERT INTO StorageArea
  (Label)
VALUES ('A2');

INSERT INTO StorageArea
  (Label)
VALUES ('B1');

INSERT INTO StorageArea
  (Label)
VALUES ('B2');

INSERT INTO StorageArea
  (Label)
VALUES ('C1');

INSERT INTO StorageArea
  (Label)
VALUES ('C2');

INSERT INTO StorageArea
  (Label)
VALUES ('D1');

INSERT INTO StorageArea
  (Label)
VALUES ('D2');

INSERT INTO StorageArea
  (Label)
VALUES ('E1');

INSERT INTO StorageArea
  (Label)
VALUES ('E2');