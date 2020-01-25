1.新建一张学生表
create table students(
id int unsigned primary key auto_increment comment '主键',
sn int not null unique key comment '学号',
name varchar(20) not null comment '姓名',
qq varchar(20) comment 'qq号码'
);
2.插入数据
insert students values(1,10000,'孙悟空','123456789');
insert students (id,sn,name,qq) values (2,10001,'猪八戒',null);
insert students (sn,name,qq) values (10002,'沙和尚',null);
insert students (sn,name,qq) values (10003,'唐僧',null);
insert students (sn,name) values (10004,'曹操'),(10005,'孙权');
3.查看插入结果
select * from students;
4.替换（replace）
replace students (sn,name) values (10004,'曹孟德');
