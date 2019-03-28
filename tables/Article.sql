USE SchrottMobil;
DROP TABLE IF EXISTS Article;

CREATE TABLE Article
(
  ID          INT          NOT NULL AUTO_INCREMENT,
  Name        VARCHAR(255) NOT NULL,
  Color       VARCHAR(255),
  Type        VARCHAR(255),
  IsBooking   TINYINT(1)   NOT NULL,
  VehicleType VARCHAR(255) NOT NULL,
  PRIMARY KEY (ID)
);

INSERT INTO Article
  (Name, Color, Type, VehicleType, IsBooking)
VALUES ('Tür Rechts', 'rot', 'Karosserie', 'Golf2', 1);

INSERT INTO Article
  (Name, Color, Type, VehicleType, IsBooking)
VALUES ('OMP TRS', 'swarz', 'Sitz', 'Zubehör', 1);

INSERT INTO Article
  (Name, Color, Type, VehicleType, IsBooking)
VALUES ('Momo GT', 'schwarz', 'Lenkrad', 'Zubehör', 1);

INSERT INTO Article
  (Name, Color, Type, VehicleType, IsBooking)
VALUES ('OEM Standard', 'N/A', 'Auspuff', 'BMW3er', 1);

INSERT INTO Article
  (Name, Color, Type, VehicleType, IsBooking)
VALUES ('OEM Standard', 'Braun', 'Lenkrad', 'BMW3er', 1);

INSERT INTO Article
  (Name, Color, Type, VehicleType, IsBooking)
VALUES ('OEM Standard', 'N/A', 'Zylinderkopf', 'OpelKadett', 1);

INSERT INTO Article
  (Name, Color, Type, VehicleType, IsBooking)
VALUES ('Tuning Super Light', 'N/A', 'Kolben', 'Golf2', 1);

INSERT INTO Article
  (Name, Color, Type, VehicleType, IsBooking)
VALUES ('Kotflügel', 'rot', 'Karosserie', 'Golf2', 1);

INSERT INTO Article
  (Name, Color, Type, VehicleType, IsBooking)
VALUES ('Leuchte vorne links', 'N/A', 'Karosserie', 'BMWer', 1);