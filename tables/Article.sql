USE SchrottMobil;
DROP TABLE IF EXISTS Article;

CREATE TABLE Article
(
  ID          INT          NOT NULL AUTO_INCREMENT,
  Name        VARCHAR(255) NOT NULL,
  Color       VARCHAR(255),
  Type        VARCHAR(255),
  IsBooking   TINYINT(1)   NOT NULL DEFAULT 1,
  VehicleType VARCHAR(255) NOT NULL,
  PRIMARY KEY (ID)
);

INSERT INTO Article
  (Name, Color, Type, VehicleType)
VALUES ('Tür Rechts', 'rot', 'Karosserie', 'Golf2');

INSERT INTO Article
  (Name, Color, Type, VehicleType)
VALUES ('OMP TRS', 'schwarz', 'Sitz', 'Zubehör');

INSERT INTO Article
  (Name, Color, Type, VehicleType)
VALUES ('Momo GT', 'schwarz', 'Lenkrad', 'Zubehör');

INSERT INTO Article
  (Name, Color, Type, VehicleType)
VALUES ('OEM Standard', 'N/A', 'Auspuff', 'BMW3er');

INSERT INTO Article
  (Name, Color, Type, VehicleType)
VALUES ('OEM Standard', 'Braun', 'Lenkrad', 'BMW3er');

INSERT INTO Article
  (Name, Color, Type, VehicleType)
VALUES ('OEM Standard', 'N/A', 'Zylinderkopf', 'OpelKadett');

INSERT INTO Article
  (Name, Color, Type, VehicleType)
VALUES ('Tuning Super Light', 'N/A', 'Kolben', 'Golf2');

INSERT INTO Article
  (Name, Color, Type, VehicleType)
VALUES ('Kotflügel', 'rot', 'Karosserie', 'Golf2');

INSERT INTO Article
  (Name, Color, Type, VehicleType)
VALUES ('Leuchte vorne links', 'N/A', 'Karosserie', 'BMWer');
