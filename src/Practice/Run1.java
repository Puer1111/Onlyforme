package Practice;

import java.util.Scanner;

public class Run1 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);

		View view = new View();
		Manage msg = new Manage();
		
			end: 
			while (true) {
			Info info =view.menu1(); 
			int menu = view.menu();
			switch (menu) {
			case 1:
				view.enquire();
				int num = sc.nextInt();
				if (num == 1) {
					view.purchase();
					int num1 = sc.nextInt();
					if (num1 == 1) {
						view.purchase1();
						view.printMessage("문의 접수 되었습니다.");
					}
					else{
					view.purchase2();
					System.out.println();
					}
					break;
				}
				else if(num ==2) {
					view.error();
					int num2 = sc.nextInt();
						if(num2 == 1) {
						view.error1();
						}
						else {
						view.error2();
						}
				}
			case 2:
				view.control();
				int num3 = sc.nextInt();
				if(num3 == 1) {
					info = view.control1();
					msg.insertenquire(info);
					view.printMessage("문의 접수 되었습니다.");
					
				}
				break;
			case 3:
				Info[] infos = msg.getAllenquires();
				msg.printAllenquires(infos);
				break;
			case 4:	
				view.printMessage("종료 되었습니다");
				break end;
			default: 
				view.printMessage("잘못 입력하셨습니다");

			}

		}

	}

}
