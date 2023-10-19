/*
本节文章
https://learnscript.net/zh/database/advanced/read-uncommitted/ 什么是读未提交事务
*/

-- 设置事务的隔离级别为读未提交
SET SESSION TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;

-- 开启读未提交事务
START TRANSACTION;

UPDATE `good`
SET `count` = 0
WHERE `id` = 1;

SELECT '已经将商品数量设置为 0';

-- 等待 7 秒钟，在此期间将执行另一段 SQL 代码
DO SLEEP(7);

ROLLBACK;