/*
本節文章
https://learnscript.net/zh-hant/database/advanced/repeatable-read/ 什麽是可重複讀取交易？可重複讀取和序列化交易有何不同
*/

-- 設定交易的隔離層級為讀取未認可
SET SESSION TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;

-- 開啟讀取未認可交易
START TRANSACTION;

-- 更新商品的數量為 50，此更新作業對於可重複讀取交易是不可見的
UPDATE `good`
SET `count` = 50
WHERE `id` = 1;

SELECT '已經將商品數量設定為 50';

COMMIT;