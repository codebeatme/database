/*
本节文章
https://learnscript.net/zh/database/junior/basic-data-types/ 基本数据类型有哪些
*/

SELECT id, name, vip
FROM `custom`
WHERE `vip` IS TRUE
LIMIT 1000;