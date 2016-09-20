DROP TABLE member
CASCADE CONSTRAINT;

create table member(
	m_id varchar2(50),			-- 아이디
	m_pw varchar2(2000),			-- 비밀번호
	m_name varchar2(50),
	m_gender varchar2(2),
	m_birthday varchar2(12),
	m_email varchar2(50),		-- 이메일
	m_phone varchar2(50),		-- 전화번호
	M_PHOTO VARCHAR2(1000),
  
	m_action number default 0,		-- 인증
  
	--m_logchk number default 0, 		-- 로그인 실패 카운트
	--m_logdate date,			-- 로그인 한 날
	--m_faildate date,			-- 로그인 실패했을 때, 시간 입력
	m_auth number
);

insert into member values('a','a','aaaaa','m','20190705','aa','10010101','no_image','0',3);
insert into member values('b','b','aaaaa','m','20190705','aa','10010101','no_image','1',3);
select * from member;

update member set m_action = 1 where m_id = 'aa1212';

SELECT M_ID,M_NAME, M_GENDER, M_BIRTHDAY, M_EMAIL, M_PHONE, M_ACTION, M_LOGCHK, M_LOGDATE, M_FAILDATE, M_AUTH
	 	FROM MEMBER 
	 	WHERE M_ID = 'a' AND M_PW = 'a'