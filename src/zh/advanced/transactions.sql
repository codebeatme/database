/*
本节文章
https://learnscript.net/zh/database/advanced/transactions-commit-rollback/ 什么是事务，提交，回滚
*/

-- 开启事务
START TRANSACTION;

-- 定义表示商品价格，数量的变量
SET @price = 0;
SET @count = 0;

-- 将商品的价格，数量赋值给变量 @price, @count
SELECT `price`, `count` INTO @price, @count
FROM `good`
WHERE `name` = '一亿甜甜圈';

-- 提前将商品的数量减 1，当然这在逻辑上显得非常不合理
UPDATE `good` SET `count` = `count` - 1
WHERE `name` = '一亿甜甜圈';

SELECT CONCAT('一亿甜甜圈数量从 ', @count, ' 减至 ', @count - 1);

-- 定义表示银行卡余额的变量
SET @balance = 0;

-- 获取 id 为 1 的银行卡的余额，并赋值给变量 @balance
SELECT `balance` INTO @balance
FROM `card`
WHERE `id` = 1;

SELECT IF(@balance < @price, '余额不足，事务回滚', '继续。。。');

-- 这里预知银行卡余额一定不足，所以回滚事务，商品的数量将恢复
ROLLBACK;

SELECT `name`, `count`
FROM `good`
WHERE `name` = '一亿甜甜圈';
