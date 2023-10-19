/*
本节文章
https://learnscript.net/zh/database/advanced/repeatable-read/ 什么是可重复读事务？可重复读和串行化事务有何不同
*/

-- 设置事务的隔离级别为可重复读
SET SESSION TRANSACTION ISOLATION LEVEL REPEATABLE READ;

-- 开启可重复读事务
START TRANSACTION;

SELECT `count`
FROM `good`
WHERE `id` = 1;

-- 等待 7 秒钟，在此期间将执行另一段 SQL 代码
DO SLEEP(7);

-- 第二次读取的商品数量和第一次是一样的，即便该商品数量已经在读未提交事务中更改
SELECT `count`
FROM `good`
WHERE `id` = 1;

COMMIT;