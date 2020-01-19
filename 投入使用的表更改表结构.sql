12.有一张表，已经在生产环境使用，需要更改表结构，添加一列（操作很慢），操作过程中无法使用该表
可以使用如下方法：
1.根据老表结构，创建一张新表
  create table new_table like table;
2.直接修改新表结构，里面没有数据，所以很快就可以改好了
3.insert...select...从老表中把数据导入到新表
4.补一下期间漏掉的数据
5.rename table old_table to backup_20190527，new_table to table；

create table source_table(
    id int,
    name varchar(30)
);

create table dest_table(
    id int,
    name varchar(30),
    gender char(1)
);

insert into source_table(id,name) values (1,'aaa'),(2,'bbb'),(3,'ccc');
把id大于2的数据，插入到dest_table
insert into dest_table(id,name,gender) select id,name,'男' from source_table where id>=2;
