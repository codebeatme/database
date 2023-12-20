/*
本節文章
https://learnscript.net/zh-hant/database/junior/basic-data-types/ 基本資料型別有哪些
*/

SELECT id, name, vip
FROM `custom`
WHERE `vip` IS TRUE
LIMIT 1000;