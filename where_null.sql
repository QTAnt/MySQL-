5.带where的查询
查询英语成绩小于60的同学
select name,yingyu from score where yingyu<60;
语文成绩在 [80, 90] 分的同学
select name,yuwen from score where yuwen>=80 and yuwen<=90;
select name,yuwen from score where yuwen between 80 and 90;
数学成绩是 58 或者 59 或者 98 或者 99 分的同学及数学成绩
select name,shuxue from score where shuxue=58 or shuxue=59 or shuxue=98 or shuxue=99;
select name,shuxue from score where shuxue in (58,59,98,99);
姓孙的同学(%匹配多个字符，_匹配一个字符)
select name from score where name like '孙%';
select name from score where name like '孙_';
语文成绩好于英语成绩的同学
select id,name from score where yuwen>yingyu;
总分在 200 分以下的同学
select id,name,yuwen+shuxue+yingyu as '总分' from score where yuwen+shuxue+yingyu<200;
语文成绩>80 并且不姓孙的同学
select id,name from score where yuwen>80 and name not like '孙%';
孙某同学，否则要求总成绩 > 200 并且 语文成绩 < 数学成绩 并且 英语成绩 > 80
select id,name,yuwen,shuxue,yingyu,yuwen+shuxue+yingyu from score where name like '孙_' or (yuwen+shuxue+yingyu>200 and yuwen<shuxue and yingyu>80);

6.关于null的查询
查询 qq 号不为空的同学姓名
select name,qq from students where qq is not null;
NULL 和 NULL 的比较，= 和 <=> 的区别
使用=时，null和谁比都是空
使用<=>时，则判断等号两边的值相不相等，相等则为1，不相等则为0