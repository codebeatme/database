/*
本节文章
https://learnscript.net/zh/database/advanced/read-committed/ 什么是读已提交事务？读已提交和可重复读事务有何不同
*/

-- 设置事务的隔离级别为读已提交
SET SESSION TRANSACTION ISOLATION LEVEL READ COMMITTED;

-- 开启读已提交事务
START TRANSACTION;

-- 无法读取到读未提交事务尚未提交的更改
SELECT `name`
FROM `good`
WHERE `id` = 1;

COMMIT;