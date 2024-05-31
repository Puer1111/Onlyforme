package Practice;

import java.util.Random;

public class Info {
	private String date;
	private String phone;
	private	String Memberid;
	private String Memberpw;
	private String Membercard;
	private String MemberEmail;
public Info() {}
	public String getMemberEmail() {
		return MemberEmail;
	}
	public void setMemberEmail(String MemberEmail) {
		this.MemberEmail = MemberEmail;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getMemberid() {
		return Memberid;
	}
	public void setMemberid(String memberid) {
		Memberid = memberid;
	}
	public String getMemberpw() {
		return Memberpw;
	}
	public void setMemberpw(String memberpw) {
		Memberpw = memberpw;
	}
	public String getMembercard() {
		return Membercard;
	}
	public void setMembercard(String membercard) {
		Membercard = membercard;
	}
	public String toString() {
		return "신청 날짜 : " + date +"\t"+ " 문의 이메일 : " + MemberEmail;
	}
}
