/*
本节文章
https://learnscript.net/zh/database/advanced/repeatable-read/ 什么是可重复读事务？可重复读和串行化事务有何不同
*/

-- 设置事务的隔离级别为读未提交
SET SESSION TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;

-- 开启读未提交事务
START TRANSACTION;

-- 更新商品的数量为 50，此更新操作对于可重复读事务是不可见的
UPDATE `good`
SET `count` = 50
WHERE `id` = 1;

SELECT '已经将商品数量设置为 50';

COMMIT;