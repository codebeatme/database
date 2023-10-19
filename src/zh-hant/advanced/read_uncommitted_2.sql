/*
本節文章
https://learnscript.net/zh-hant/database/advanced/read-uncommitted/ 什麽是讀取未認可交易
*/

-- 設定交易的隔離層級為讀取未認可
SET SESSION TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;

-- 開啟讀取未認可交易
START TRANSACTION;

-- 可以讀取到第一個交易尚未認可的更改
SELECT `count`
FROM `good`
WHERE `id` = 1;

COMMIT;