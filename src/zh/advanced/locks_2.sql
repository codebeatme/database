/*
本节文章
https://learnscript.net/zh/database/advanced/read-and-write-locks/ 什么是读锁，写锁
*/

SELECT `id`
FROM `card`
LIMIT 1000;

UPDATE `card`
SET `password` = '039482'
WHERE `id` = 1;