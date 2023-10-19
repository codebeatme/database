/*
本节文章
https://learnscript.net/zh/database/advanced/serializable/ 什么是串行化事务
*/

-- 设置事务的隔离级别为读未提交
SET SESSION TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;

-- 开启读未提交事务
START TRANSACTION;

UPDATE `good`
SET `count` = 95
WHERE `id` = 1;

-- 等待 7 秒钟，在此期间将执行另一段 SQL 代码
SELECT '已经将商品数量设置为 95';
DO SLEEP(7);

COMMIT;
