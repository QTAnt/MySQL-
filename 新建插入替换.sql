1.�½�һ��ѧ����
create table students(
id int unsigned primary key auto_increment comment '����',
sn int not null unique key comment 'ѧ��',
name varchar(20) not null comment '����',
qq varchar(20) comment 'qq����'
);
2.��������
insert students values(1,10000,'�����','123456789');
insert students (id,sn,name,qq) values (2,10001,'��˽�',null);
insert students (sn,name,qq) values (10002,'ɳ����',null);
insert students (sn,name,qq) values (10003,'��ɮ',null);
insert students (sn,name) values (10004,'�ܲ�'),(10005,'��Ȩ');
3.�鿴������
select * from students;
4.�滻��replace��
replace students (sn,name) values (10004,'���ϵ�');
