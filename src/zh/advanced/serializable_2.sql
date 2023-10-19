/*
本节文章
https://learnscript.net/zh/database/advanced/serializable/ 什么是串行化事务
*/

-- 设置事务的隔离级别为读未提交
SET SESSION TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;

-- 开启读未提交事务
START TRANSACTION;

-- 可以读取之前串行化事务读取过的记录
SELECT *
FROM `good`
WHERE `id` = 1;

-- 无法更新之前串行化事务读取过的记录，更新操作将陷入等待
UPDATE `good`
SET `count` = 95
WHERE `id` = 1;

SELECT '已经将商品数量设置为 95';

COMMIT;
