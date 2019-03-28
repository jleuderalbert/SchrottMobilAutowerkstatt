USE SchrottMobil;
DROP VIEW IF EXISTS ArticleStock;

CREATE VIEW ArticleStock AS (
  SELECT Article.ID          AS 'ID',
         Article.VehicleType AS 'VehicleType',
         Article.Color       AS 'Color',
         Article.Name        AS 'Name',
         Article.IsBooking   AS 'IsBooking',
         Article.Type        AS 'Type',
         Stock.ItemCount     AS 'Stock',
         StorageArea.Label   AS 'StorageLabel'
  FROM Stock
         LEFT JOIN Article ON Stock.ArticleID = Article.ID
         LEFT JOIN StorageArea ON Stock.StorageAreaID = StorageArea.ID
);