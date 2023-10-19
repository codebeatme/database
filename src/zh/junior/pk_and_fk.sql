/*
本节文章
https://learnscript.net/zh/database/junior/primary-and-foreign-keys/ 什么是主键，外键？有何不同
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
(100, '2023-3-18', '这是一个测试的任务');
