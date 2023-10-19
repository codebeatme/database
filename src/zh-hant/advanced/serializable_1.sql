/*
本節文章
https://learnscript.net/zh-hant/database/advanced/serializable/ 什麽是序列化交易
*/

-- 設定交易的隔離層級為序列化
SET SESSION TRANSACTION ISOLATION LEVEL SERIALIZABLE;

-- 開啟序列化交易
START TRANSACTION;

SELECT *
FROM `good`
WHERE `id` = 1;

-- 等待 7 秒鐘，在此期間將執行另一段 SQL 程式碼
SELECT '等待 7 秒';
DO SLEEP(7);

COMMIT;
