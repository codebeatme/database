/*
本節文章
https://learnscript.net/zh-hant/database/advanced/serializable/ 什麽是序列化交易
*/

-- 設定交易的隔離層級為讀取未認可
SET SESSION TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;

-- 開啟讀取未認可交易
START TRANSACTION;

-- 可以讀取之前序列化交易讀取過的記錄
SELECT *
FROM `good`
WHERE `id` = 1;

-- 無法更新之前序列化交易讀取過的記錄，更新作業將陷入等待
UPDATE `good`
SET `count` = 95
WHERE `id` = 1;

SELECT '已經將商品數量設定為 95';

COMMIT;
