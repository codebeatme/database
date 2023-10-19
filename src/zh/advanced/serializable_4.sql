/*
本节文章
https://learnscript.net/zh/database/advanced/serializable/ 什么是串行化事务
*/

-- 设置事务的隔离级别为串行化
SET SESSION TRANSACTION ISOLATION LEVEL SERIALIZABLE;

-- 开启串行化事务
START TRANSACTION;

-- 无法读取之前读未提交事务更新的记录，查询操作将陷入等待
SELECT *
FROM `good`
WHERE `id` = 1;

COMMIT;
