drop database if exists sampledb_kaiya;
create database sampledb_kaiya;
use sampledb_kaiya;

create table sample_table(
No int,
user_name varchar(50),
age int,
Mail varchar(50)
);

insert into sample_table values(1,"Yamada","21","xxx@yahoo.co.jp");
insert into sample_table values(2,"Sato","39","yyy@google.com");
insert into sample_table values(3,"Harada","44","zzz@tyahoo.co.jp");