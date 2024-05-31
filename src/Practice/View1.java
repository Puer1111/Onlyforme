package Practice;

import java.util.Scanner;

public class View1 {
	Scanner sc = new Scanner(System.in);

	public Info menu1() {
		System.out.println("===로그인===");
		System.out.print("ID: ");
		String Memberid = sc.next();
		System.out.println("PW: ");
		String Memberpw = sc.next();
		
		Info info = new Info();
		info.setMemberid(Memberid);
		info.setMemberpw(Memberpw);
		return info;
	}
	
	public int menu() {

		System.out.println("====메뉴 선택====");
		System.out.println("1. 문의 관련");
		System.out.println("2. 원격 제어");
		System.out.println("3. 문의 조회");
		System.out.println("4. 종료");

		System.out.println("메뉴 선택(1~3): ");
		int select = sc.nextInt();
		return select;
	}


	public void enquire() { // 문의
		System.out.println("1. 구매관련문의");
		System.out.println("2. 오류관련문의");
		System.out.println();
		System.out.println("메뉴 선택(1~2): ");
//		int input = sc.nextInt();
//		return input;

	}
	public void purchase() { // 1-1번 구매
		System.out.println("1.결제가 됬으나 미구매 상태");
		System.out.println("2.결제 시 구매 창 진행 안됨");
		System.out.println();
		System.out.println("메뉴 선택 (1~2): ");
//		int purchase = sc.nextInt();
//		return purchase;
	}
	public Info purchase1() {
		System.out.print("결제 카드 번호 입력: ");
		String Membercard = sc.next();
		System.out.print("이메일 입력: ");
		String MemberEmail = sc.next();
	
		Info info = new Info();
		info.setMembercard(Membercard);
		info.setMemberEmail(MemberEmail);
		return info;
	}
	public void purchase2() {
		System.out.println("호환성 추가 및 새로고침 진행 권장");
	}
	
	public void error() { // 1-2번 오류

		System.out.println("1.사이트 접속 안됨");
		System.out.println("2.로그인이 안됨");
		System.out.println();
		System.out.println("메뉴 선택 (1~2): ");
//		int error = sc.nextInt();
//		return error;
	}

	public void error1() {
		System.out.println("호환성 추가 및 새로고침 권장");
	}

	public void error2() {
		System.out.println("키보드 관련 보안 프로그램 재설치 권장");
	}
	
	public void control() {// 2번 원격

		System.out.println("1. 원격 제어 신청");
//		int num = sc.nextInt();
//		return num;
	}
	
	public Info control1() {
		System.out.print("날짜 입력: ");
		String date  = sc.next();
		System.out.println("이메일 입력: ");
		String MemberEmail = sc.next();
		
		Info info = new Info();
		info.setDate(date);
		info.setMemberEmail(MemberEmail);
		return info;
	}
	
	public void printMessage(String msg) {
		System.out.println(msg);
	}

	
}
