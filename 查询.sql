1.创建一张成绩表
create table score(
id int unsigned primary key auto_increment comment '主键',
name varchar(20) not null comment '学生姓名',
yuwen float default 0.0 not null comment '语文成绩',
shuxue float default 0.0 not null comment '数学成绩',
yingyu float default 0.0 not null comment '英语成绩'
);
2.插入测试数据
insert score (name, yuwen, shuxue, yingyu) values
('唐三藏', 67, 98, 56),
('孙悟空', 87, 78, 77),
('猪悟能', 88, 98, 90),
('曹孟德', 82, 84, 67),
('刘玄德', 55, 85, 45),
('孙权', 70, 73, 78),
('宋公明', 75, 65, 30);
3.全列查询
select * from score;
4.指定列查询
查询每个学生的英语成绩
select id,name,yingyu from score;
查询字段包含表达式
select id,name,yingyu+10 from score;
查询每位同学的总成绩
select id,name,yuwen+shuxue+yingyu from score;
重命名总成绩
select id,name,yuwen+shuxue+yingyu as 总分 from score;
查询结果去重
select distinct shuxue from score;