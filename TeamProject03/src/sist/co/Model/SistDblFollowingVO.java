package sist.co.Model;

import java.sql.Timestamp;
import java.io.Serializable;

/*
--2. 서로 이웃 맺기 테이블(수락 여부에 따라 맺어짐)
drop table dblfollowing
cascade constraint;

drop sequence seq_dblfollowing;

create table dblfollowing(
	df_seq number primary key,		-- seq
	df_send varchar2(50) not null, 	-- 신청한 사람
	df_receive varchar2(50) not null, 	-- 신청 받은 사람
	df_date date not null, 		-- 신청일
	df_accept number default 0, 		-- 수락1 / 거절2 / 미확인0 여부
	df_acceptdate date 		-- 수락일
);
create sequence seq_dblfollowing 
start with 1 increment by 1; 

alter table dblfollowing
add constraint fk_df_send foreign key(df_send)
references member(m_id);

alter table dblfollowing
add constraint fk_df_receive foreign key(df_receive)
references member(m_id);

 */

public class SistDblFollowingVO {
	
	private int df_seq;              //seq
	private String df_send;          //신청한 사람
	private String df_receive;       //신청 받은 사람
	private String fnd_groupname;    //그룹명
	private Timestamp df_date;       //신청일
	private int df_accept;           //수락 / 거절 / 미확인 여부
	private Timestamp df_acceptdate; //수락일
	
	public SistDblFollowingVO() {
	}

	public int getDf_seq() {
		return df_seq;
	}

	public void setDf_seq(int df_seq) {
		this.df_seq = df_seq;
	}

	public String getDf_send() {
		return df_send;
	}

	public void setDf_send(String df_send) {
		this.df_send = df_send;
	}

	public String getDf_receive() {
		return df_receive;
	}

	public void setDf_receive(String df_receive) {
		this.df_receive = df_receive;
	}

	public Timestamp getDf_date() {
		return df_date;
	}

	public void setDf_date(Timestamp df_date) {
		this.df_date = df_date;
	}

	public int getDf_accept() {
		return df_accept;
	}

	public void setDf_accept(int df_accept) {
		this.df_accept = df_accept;
	}

	public Timestamp getDf_acceptdate() {
		return df_acceptdate;
	}

	public void setDf_acceptdate(Timestamp df_acceptdate) {
		this.df_acceptdate = df_acceptdate;
	}

	public String getFnd_groupname() {
		return fnd_groupname;
	}

	public void setFnd_groupname(String fnd_groupname) {
		this.fnd_groupname = fnd_groupname;
	}

	@Override
	public String toString() {
		return "SistDblFollowingVO [df_seq=" + df_seq + ", df_send=" + df_send + ", df_receive=" + df_receive
				+ ", fnd_groupname=" + fnd_groupname + ", df_date=" + df_date + ", df_accept=" + df_accept
				+ ", df_acceptdate=" + df_acceptdate + "]";
	}

	

}
