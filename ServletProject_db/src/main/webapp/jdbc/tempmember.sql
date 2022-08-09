select * from tempmember;

create table tempmember(
id varchar2(20) not null,
passwd varchar2(20),
name varchar2(20),
mem_num1 varchar2(6),
mem_num2 varchar2(7),
e_mail varchar2(50),
phone varchar2(30),
zipcode varchar2(7),
address varchar2(80),
job varchar2(30),
primary key(id)
);

insert into tempmember values('aaaa','1111','홍길동','123456','7654321','hong@naver.com','010-1234-1234','100-100','서울특별시 영등포구 영종로 56 신한빌딩 4층','프로그래머'); 
insert into tempmember values('bbbb','2222','손오공','234567','6543210','hong2@naver.com','010-2234-1234','200-100','서울특별시 영등포구 영종로 56 신한빌딩 5층','프로게이머'); 
insert into tempmember values('cccc','3333','강감찬','345678','8765432','hong3@naver.com','010-3234-1234','300-100','서울특별시 영등포구 영종로 56 신한빌딩 6층','프로야구선수'); 