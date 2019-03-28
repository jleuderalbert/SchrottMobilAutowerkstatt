USE SchrottMobil;
DROP VIEW IF EXISTS Tasks;

CREATE VIEW Tasks AS (
  SELECT TaskNumber,
         Task,
         Status,
         Employee,
         Workstation,
         GROUP_CONCAT(CONCAT(ArticleType, ': ', ArticleName) SEPARATOR ', ') AS NeededArticles
  FROM ResolveOrderItem
  GROUP BY TaskNumber, Task, Status, Employee, Workstation
);