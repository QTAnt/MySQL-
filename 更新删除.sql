9.更新数据
将孙悟空同学的数学成绩变更为 80 分
查看原数据：select name,shuxue from score where name='孙悟空';
update score set shuxue=80 where name='孙悟空';
将曹孟德同学的数学成绩变更为 60 分，语文成绩变更为 70 分
查看原数据：select name,shuxue from score where name='曹孟德';
update score set shuxue=60,yuwen=70 where name='曹孟德';
将总成绩倒数前三的 3 位同学的数学成绩加上 30 分
查看原数据：select name,shuxue from score order by shuxue asc limit 3;
update score set shuxue=shuxue+30 order by shuxue asc limit 3;
按总成绩排序后查询前三个
select name,shuxue,yuwen+shuxue+yingyu 总分 from score order by 总分 desc limit 3;

将所有同学的语文成绩更新为原来的 2 倍
update score set yuwen=yuwen*2;

10.删除数据
删除孙悟空同学的考试成绩
delete from score where name='孙悟空';
删除整表数据（谨慎操作）
delete from score;