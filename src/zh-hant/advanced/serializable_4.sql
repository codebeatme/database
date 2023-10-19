/*
本節文章
https://learnscript.net/zh-hant/database/advanced/serializable/ 什麽是序列化交易
*/

-- 設定交易的隔離層級為序列化
SET SESSION TRANSACTION ISOLATION LEVEL SERIALIZABLE;

-- 開啟序列化交易
START TRANSACTION;

-- 無法讀取之前讀取未認可交易更新的記錄，查詢作業將陷入等待
SELECT *
FROM `good`
WHERE `id` = 1;

COMMIT;
