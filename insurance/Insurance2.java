package insurance;

import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.List;

public class Insurance2 {
	public static void main(String[] args) {
		InsuranceDAO dao=new InsuranceDAO();//dao 객체 생성
		//dao의 list3() 함수를 호출하여 리스트의 시작 번지값을 받아서 items 변수에 연결
		List<InsuranceDTO> items = dao.list3();
		//반복 처리
		for(int i=0; i<items.size(); i++) {
			InsuranceDTO dto = items.get(i);
			System.out.println(dto);
		}
	}
}
