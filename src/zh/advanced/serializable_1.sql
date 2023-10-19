/*
本节文章
https://learnscript.net/zh/database/advanced/serializable/ 什么是串行化事务
*/

-- 设置事务的隔离级别为串行化
SET SESSION TRANSACTION ISOLATION LEVEL SERIALIZABLE;

-- 开启串行化事务
START TRANSACTION;

SELECT *
FROM `good`
WHERE `id` = 1;

-- 等待 7 秒钟，在此期间将执行另一段 SQL 代码
SELECT '等待 7 秒';
DO SLEEP(7);

COMMIT;
