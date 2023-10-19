/*
本节文章
https://learnscript.net/zh/database/advanced/read-uncommitted/ 什么是读未提交事务
*/

-- 设置事务的隔离级别为读未提交
SET SESSION TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;

-- 开启读未提交事务
START TRANSACTION;

-- 可以读取到第一个事务尚未提交的更改
SELECT `count`
FROM `good`
WHERE `id` = 1;

COMMIT;