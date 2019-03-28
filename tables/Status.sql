USE SchrottMobil;
DROP TABLE IF EXISTS Status;

CREATE TABLE Status
(
  ID       INT         NOT NULL AUTO_INCREMENT,
  Name     VARCHAR(63) NOT NULL,
  Priority int         NOT NULL,
  PRIMARY KEY (ID)
);

INSERT INTO Status
  (Name, Priority)
VALUES ('In Arbeit', 40);

INSERT INTO Status
  (Name, Priority)
VALUES ('Erledigt', 10);

INSERT INTO Status
  (Name, Priority)
VALUES ('Zurückgestellt', 30);