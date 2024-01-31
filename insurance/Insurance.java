package insurance;

import java.util.List;

public class Insurance {
	public static void main(String[] args) {
		InsuranceDAO dao = new InsuranceDAO();//클래스를 쓰려면 new로 메모리에 올려야 함, dao 객체 생성
		//dao의 list 함수를 호출하여 ArrayList의 시작번지값을 items(참조변수) 변수에 연결시킴 
//		List<InsuranceDTO> items = dao.list();
		List<InsuranceDTO> items = dao.list2();
		//ArrayList의 사이즈 만큼 반복 처리
		for(int i=0; i<items.size(); i++) {//리스트.size() 자료개수
			InsuranceDTO dto=items.get(i);//리스트.get(i) i번째 자료
			//System.out.println(dto);// toString출력
			System.out.println(dto.getAge()+"\t"+dto.getSex()+"\t"+dto.getBmi()+"\t"+dto.getChildren()+"\t"+dto.getSmoker()+"\t"+dto.getRegion()+"\t"+dto.getCharges());
		}
	}
}
