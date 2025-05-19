drop table if exists usertbl;

create table usertbl(
    userID char(8) not null primary key,
    name varchar(10) not null,
    birthyear int not null
);

drop table if exists buytbl;

create table buytbl(
    num int auto_increment not null primary key,
    userID varchar(8) not null,
    prodName varchar(6) not null
);

alter table buytbl add constraint fk_userID
foreign key (userID) references usertbl(userID);

drop table buytbl;
drop table usertbl;

create table userTBL (
    userID char(8) not null primary key,
    name varchar(10) not null,
    birthyear int not null,
    email char(30) unique
);

drop table userTBL;

create table userTBL (
    userID char(8) not null primary key,
    name varchar(10),
    birthYear int check(birthYear >= 1900 and birthYear <= 2023),
    mobile char(3) not null
);

drop table userTBL;

create table userTBL (
    userID char(8) not null primary key,
    name varchar(10) not null,
    birthYear int not null default -1,
    addr char(2),
    mobile1 char(3),
    mobile2 char(8),
    height smallint default 170,
    mDate date
);

insert into userTBL (userID, name, addr, mobile1, mobile2, mDate)
values ('1', '김규연', '서울', '010', '89973470', '2025-05-19');

select * from userTBL;

alter table userTBL drop column mobile1;

alter table userTBL rename column name to uName;

alter table userTBL drop primary key;





