/*
本节文章
https://learnscript.net/zh/database/advanced/transaction-isolation-levels/ 什么是事务的隔离级别
*/

SET SESSION TRANSACTION ISOLATION LEVEL SERIALIZABLE;
START TRANSACTION;

SELECT *
FROM `good`
WHERE id = 1;
-- SELECT '等待7秒';
-- DO SLEEP(7);

COMMIT;
