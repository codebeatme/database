/*
本节文章
https://learnscript.net/zh/database/junior/basic-data-types/floating-and-fixed-point-numeric-types/ 什么是浮点数类型，定点数类型？什么是精度
*/

-- 请在 SQL Server 中运行下面的语句
SELECT CAST(123456789 AS REAL), CAST(1234.56789 AS REAL);

-- 请在 SQL Server 中运行下面的语句
SELECT CAST(12345.6789 AS NUMERIC(5, 2));

-- 请在 MySQL 中运行下面的语句
SELECT FORMAT(CAST(0.9 AS FLOAT), 10);

-- 请在 MySQL 中运行下面的语句，3.699675e-1 表示浮点数 0.3699675
SELECT
3.699675e-1 = CAST(0.3699675 AS DOUBLE),
FORMAT(CAST(0.3699675 AS DOUBLE), 30);

-- 请在 MySQL 中运行下面的语句，9.e-1 表示浮点数 0.9
SELECT
9.e-1 = CAST(0.9 AS FLOAT),
FORMAT(CAST(0.9 AS FLOAT), 30);