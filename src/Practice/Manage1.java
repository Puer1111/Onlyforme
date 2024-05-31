package Practice;

public class Manage1 {

	Info[] infos;
	int index;
public Manage1() {
	infos = new Info[4];
	index = 0;
}

public Info[] getAllenquires() {
	return infos;
}
public void insertenquire(Info info) {
	if (index < infos.length) {
		infos[index] = info;
		index++;
	}
}
public void printAllenquires(Info[] infos) {
	System.out.println("===문의 결과 출력===");
	for(Info enquire: infos) {
		if(enquire != null) {
			System.out.println(enquire.toString());
		}
	}
}
}

