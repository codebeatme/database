/*
本節文章
https://learnscript.net/zh-hant/database/advanced/read-committed/ 什麽是讀取認可交易？讀取認可和可重複讀取交易有何不同
*/

-- 設定交易的隔離層級為讀取未認可
SET SESSION TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;

-- 開啟讀取未認可交易
START TRANSACTION;

UPDATE `good`
SET `name` = '兩億甜甜圈'
WHERE `id` = 1;

SELECT '已經修改了商品名稱';

-- 等待 7 秒鐘，在此期間將執行另一段 SQL 程式碼
DO SLEEP(7);

COMMIT;