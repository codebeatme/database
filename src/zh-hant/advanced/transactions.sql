/*
本節文章
https://learnscript.net/zh-hant/database/advanced/transactions-commit-rollback/ 什麽是交易，認可，回復
*/

-- 開啟交易
START TRANSACTION;

-- 定義表示商品價格，數量的變數
SET @price = 0;
SET @count = 0;

-- 將商品的價格，數量指派給變數 @price, @count
SELECT `price`, `count` INTO @price, @count
FROM `good`
WHERE `name` = '一億甜甜圈';

-- 提前將商品的數量減 1，當然這在邏輯上顯得非常不合理
UPDATE `good` SET `count` = `count` - 1
WHERE `name` = '一億甜甜圈';

SELECT CONCAT('一億甜甜圈數量從 ', @count, ' 減至 ', @count - 1);

-- 定義表示銀行卡余額的變數
SET @balance = 0;

-- 取得 id 為 1 的銀行卡的余額，並指派給變數 @balance
SELECT `balance` INTO @balance
FROM `card`
WHERE `id` = 1;

SELECT IF(@balance < @price, '余額不足，交易回復', '繼續。。。');

-- 這裏預知銀行卡余額一定不足，所以回復交易，商品的數量將恢復
ROLLBACK;

SELECT `name`, `count`
FROM `good`
WHERE `name` = '一億甜甜圈';
