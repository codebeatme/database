/*
本節文章
https://learnscript.net/zh-hant/database/advanced/read-uncommitted/ 什麽是讀取未認可交易
*/

-- 設定交易的隔離層級為讀取未認可
SET SESSION TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;

-- 開啟讀取未認可交易
START TRANSACTION;

UPDATE `good`
SET `count` = 0
WHERE `id` = 1;

SELECT '已經將商品數量設定為 0';

-- 等待 7 秒鐘，在此期間將執行另一段 SQL 程式碼
DO SLEEP(7);

ROLLBACK;