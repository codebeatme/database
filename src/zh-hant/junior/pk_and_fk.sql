/*
本節文章
https://learnscript.net/zh-hant/database/junior/primary-and-foreign-keys/ 什麽是主索引鍵，外部索引鍵？有何不同
*/

SELECT *
FROM `employee`
LIMIT 1000;

DELETE
FROM `employee`
WHERE `id` = 10;

ALTER TABLE `task`
ADD CONSTRAINT `fk_task_employee_id`
FOREIGN KEY (`employee_id`)
REFERENCES `employee` (`id`);

INSERT INTO `task`
(`employee_id`, `issue_date`, `description`)
VALUES
(100, '2023-3-18', '這是一個測試的任務');
