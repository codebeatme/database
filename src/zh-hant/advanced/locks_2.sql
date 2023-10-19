/*
本節文章
https://learnscript.net/zh-hant/database/advanced/read-and-write-locks/ 什麽是讀鎖定，寫鎖定
*/

SELECT `id`
FROM `card`
LIMIT 1000;

UPDATE `card`
SET `password` = '039482'
WHERE `id` = 1;