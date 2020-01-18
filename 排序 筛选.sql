7.关于排序的查询
同学及数学成绩，按数学成绩升序显示
select name,shuxue from score order by shuxue asc;
同学及 qq 号，按 qq 号排序显示
select name,qq from students order by qq asc;
（空视为最小）
查询同学各门成绩，依次按 数学降序，英语升序，语文升序的方式显示
select name,yuwen,shuxue,yingyu from score order by shuxue desc,yuwen asc,yingyu asc;
查询同学及总分，由高到低
select name,yuwen+shuxue+yingyu as 总分 from score order by 总分 desc;
查询姓孙的同学或者姓曹的同学数学成绩，结果按数学成绩由高到低显示
select name,shuxue from score where name like '孙%' or name like '曹%' order by shuxue desc;

8.筛选分页结果
查找数学成绩最高的前三名同学
select name,shuxue from score order by shuxue desc limit 3;