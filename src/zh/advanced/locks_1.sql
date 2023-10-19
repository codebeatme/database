/*
本节文章
https://learnscript.net/zh/database/advanced/read-and-write-locks/ 什么是读锁，写锁
*/

LOCK TABLE `card` READ;
UNLOCK TABLES;

LOCK TABLE `card` WRITE;
UNLOCK TABLES;