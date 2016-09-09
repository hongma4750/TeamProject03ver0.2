package sist.co.Model;

import java.sql.Timestamp;
import java.util.Date;



/*DROP TABLE member
CASCADE CONSTRAINT;

create table member(
	m_id varchar2(50),			-- 아이디
	m_pw varchar2(50),			-- 비밀번호
	m_name varchar2(50),
	m_gender varchar2(2),
	m_birthday varchar2(12),
	m_email varchar2(50),		-- 이메일
	m_phone varchar2(50),		-- 전화번호
	
	m_action number default 0,		-- 인증
	m_logchk number default 0, 		-- 로그인 실패 카운트
	m_logdate date,			-- 로그인 한 날
	m_faildate date			-- 로그인 실패했을 때, 시간 입력
);
*/


public class SistMemberVO {
	
	private String m_id;
	private String m_pw;
	private String m_name;
	private String m_gender;
	private String m_birthday;
	private String m_email;
	private String m_phone;
	
	private int action;
	private int m_logchk;
	private Timestamp m_logdate;
	private Timestamp m_faildate;
	private int auth;
	
	public SistMemberVO() {
		// TODO Auto-generated constructor stub
	}

	public String getM_id() {
		return m_id;
	}

	public void setM_id(String m_id) {
		this.m_id = m_id;
	}

	public String getM_pw() {
		return m_pw;
	}

	public void setM_pw(String m_pw) {
		this.m_pw = m_pw;
	}

	public String getM_name() {
		return m_name;
	}

	public void setM_name(String m_name) {
		this.m_name = m_name;
	}

	public String getM_gender() {
		return m_gender;
	}

	public void setM_gender(String m_gender) {
		this.m_gender = m_gender;
	}

	public String getM_birthday() {
		return m_birthday;
	}

	public void setM_birthday(String m_birthday) {
		this.m_birthday = m_birthday;
	}

	public String getM_email() {
		return m_email;
	}

	public void setM_email(String m_email) {
		this.m_email = m_email;
	}

	public String getM_phone() {
		return m_phone;
	}

	public void setM_phone(String m_phone) {
		this.m_phone = m_phone;
	}

	public int getAction() {
		return action;
	}

	public void setAction(int action) {
		this.action = action;
	}

	public int getM_logchk() {
		return m_logchk;
	}

	public void setM_logchk(int m_logchk) {
		this.m_logchk = m_logchk;
	}

	public Timestamp getM_logdate() {
		return m_logdate;
	}

	public void setM_logdate(Timestamp m_logdate) {
		this.m_logdate = m_logdate;
	}

	public Timestamp getM_faildate() {
		return m_faildate;
	}

	public void setM_faildate(Timestamp m_faildate) {
		this.m_faildate = m_faildate;
	}

	public int getAuth() {
		return auth;
	}

	public void setAuth(int auth) {
		this.auth = auth;
	}

	@Override
	public String toString() {
		return "SistMemberVO [m_id=" + m_id + ", m_pw=" + m_pw + ", m_name=" + m_name + ", m_gender=" + m_gender
				+ ", m_birthday=" + m_birthday + ", m_email=" + m_email + ", m_phone=" + m_phone + ", action=" + action
				+ ", m_logchk=" + m_logchk + ", m_logdate=" + m_logdate + ", m_faildate=" + m_faildate + ", auth="
				+ auth + "]";
	}

	
	
	
	
	
	
	
	
}
