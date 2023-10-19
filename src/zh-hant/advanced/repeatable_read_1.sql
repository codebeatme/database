/*
本節文章
https://learnscript.net/zh-hant/database/advanced/repeatable-read/ 什麽是可重複讀取交易？可重複讀取和序列化交易有何不同
*/

-- 設定交易的隔離層級為可重複讀取
SET SESSION TRANSACTION ISOLATION LEVEL REPEATABLE READ;

-- 開啟可重複讀取交易
START TRANSACTION;

SELECT `count`
FROM `good`
WHERE `id` = 1;

-- 等待 7 秒鐘，在此期間將執行另一段 SQL 程式碼
DO SLEEP(7);

-- 第二次讀取的商品數量和第一次是一樣的，即便該商品數量已經在讀取未認可交易中更改
SELECT `count`
FROM `good`
WHERE `id` = 1;

COMMIT;