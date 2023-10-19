/*
本节文章
https://learnscript.net/zh/database/advanced/read-committed/ 什么是读已提交事务？读已提交和可重复读事务有何不同
*/

-- 设置事务的隔离级别为读未提交
SET SESSION TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;

-- 开启读未提交事务
START TRANSACTION;

UPDATE `good`
SET `name` = '两亿甜甜圈'
WHERE `id` = 1;

SELECT '已经修改了商品名称';

-- 等待 7 秒钟，在此期间将执行另一段 SQL 代码
DO SLEEP(7);

COMMIT;