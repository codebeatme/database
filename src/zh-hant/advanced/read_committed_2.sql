/*
本節文章
https://learnscript.net/zh-hant/database/advanced/read-committed/ 什麽是讀取認可交易？讀取認可和可重複讀取交易有何不同
*/

-- 設定交易的隔離層級為讀取認可
SET SESSION TRANSACTION ISOLATION LEVEL READ COMMITTED;

-- 開啟讀取認可交易
START TRANSACTION;

-- 無法讀取到讀取未認可交易尚未認可的更改
SELECT `name`
FROM `good`
WHERE `id` = 1;

COMMIT;