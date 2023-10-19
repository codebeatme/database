/*
本節文章
https://learnscript.net/zh-hant/database/junior/indexes-and-performance/ 什麽是索引？索引的效率
*/

CREATE INDEX `i_math`
ON `student`
(`math` DESC);

SELECT *
FROM `student`
WHERE `math` = 90
LIMIT 1000;