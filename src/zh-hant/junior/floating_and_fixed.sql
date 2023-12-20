/*
本節文章
https://learnscript.net/zh-hant/database/junior/basic-data-types/floating-and-fixed-point-numeric-types/ 什麽是浮點數型別，定點數型別？什麽是有效位數
*/

-- 請在 SQL Server 中執行下面的陳述式
SELECT CAST(123456789 AS REAL), CAST(1234.56789 AS REAL);

-- 請在 SQL Server 中執行下面的陳述式
SELECT CAST(12345.6789 AS NUMERIC(5, 2));

-- 請在 MySQL 中執行下面的陳述式
SELECT FORMAT(CAST(0.9 AS FLOAT), 10);

-- 請在 MySQL 中執行下面的陳述式，3.699675e-1 表示浮點數 0.3699675
SELECT
3.699675e-1 = CAST(0.3699675 AS DOUBLE),
FORMAT(CAST(0.3699675 AS DOUBLE), 30);

-- 請在 MySQL 中執行下面的陳述式，9.e-1 表示浮點數 0.9
SELECT
9.e-1 = CAST(0.9 AS FLOAT),
FORMAT(CAST(0.9 AS FLOAT), 30);