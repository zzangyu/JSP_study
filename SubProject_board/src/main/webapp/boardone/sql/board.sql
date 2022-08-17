create table board (
	num number(7) not null,
	writer varchar2(15) not null,
	email varchar2(30) not null,
	subject varchar2(50) not null,
	pass varchar2(10) not null,
	readCount number(5) default 0 not null,
	ref number(5) default 0 not null,
	step number(3) default 0 not null,
	depth number(3) default 0 not null,
	regdate timestamp(6) default sysdate not null,
	content varchar2(4000) not null,
	ip varchar2(20) not null,
	constraint board_pk primary key(num)
);
num 글 번호 | writer 작성자 | email 이메일 | subject 제목 | pass 비번 | readCount 조회수 
ref number(5) 어느글을 참조 하겠는가 | step number(3) 어떤 글에 답변글이 달릴 때 사용 | depth number(3) step의 깊이

create sequence board_seq start with 1 increment by 1 nomaxvalue nocache nocycle;
drop sequence board_seq;
drop table board;
select * from board;