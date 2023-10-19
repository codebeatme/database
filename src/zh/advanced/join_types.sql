/*
本节文章
https://learnscript.net/zh/database/advanced/join-types/ 连接类型有哪些
*/

SELECT
    `card`.`id` AS `卡 ID`, `saver_id` AS `储户 ID`,
    `name` AS `姓名`, `phone` AS `电话号码`,
    `address` AS `地址`
FROM `card` INNER JOIN `saver`
ON `card`.`saver_id` = `saver`.`id`;

SELECT
    `card`.`id` AS `卡 ID`, `saver_id` AS `储户 ID`,
    `name` AS `姓名`, `phone` AS `电话号码`,
    `address` AS `地址`
FROM `card` LEFT JOIN `saver`
ON `card`.`saver_id` = `saver`.`id`;

SELECT
    `card`.`id` AS `卡 ID`, `saver_id` AS `储户 ID`,
    `name` AS `姓名`, `phone` AS `电话号码`,
    `address` AS `地址`
FROM `card` RIGHT JOIN `saver`
ON `card`.`saver_id` = `saver`.`id`;

SELECT
    `card`.`id` AS `卡 ID`, `saver_id` AS `储户 ID`,
    `name` AS `姓名`, `phone` AS `电话号码`,
    `address` AS `地址`
FROM `card` LEFT JOIN `saver`
ON `card`.`saver_id` = `saver`.`id`
UNION
SELECT
    `card`.`id` AS `卡 ID`, `saver_id` AS `储户 ID`,
    `name` AS `姓名`, `phone` AS `电话号码`,
    `address` AS `地址`
FROM `card` RIGHT JOIN `saver`
ON `card`.`saver_id` = `saver`.`id`;