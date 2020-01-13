11.插入查询结果
删除表中的的重复复记录，重复的数据只能有一份
创建原数据表
CREATE TABLE duplicate_table (id int, name varchar(20));
插入测试数据
INSERT INTO duplicate_table VALUES
(100, 'aaa'),
(100, 'aaa'),
(200, 'bbb'),
(200, 'bbb'),
(200, 'bbb'),
(300, 'ccc');
创建一张空表 no_duplicate_table，结构和 duplicate_table 一样
CREATE TABLE no_duplicate_table LIKE duplicate_table;
将 duplicate_table 的去重数据插入到 no_duplicate_table
INSERT INTO no_duplicate_table SELECT DISTINCT * FROM duplicate_table;
通过重命名表，实现原子的去重操作
RENAME TABLE duplicate_table TO old_duplicate_table,no_duplicate_table TO duplicate_table;
查看最终结果
SELECT * FROM duplicate_table;