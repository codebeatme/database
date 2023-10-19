/*
本節文章
https://learnscript.net/zh-hant/database/advanced/read-and-write-locks/ 什麽是讀鎖定，寫鎖定
*/

LOCK TABLE `card` READ;
UNLOCK TABLES;

LOCK TABLE `card` WRITE;
UNLOCK TABLES;