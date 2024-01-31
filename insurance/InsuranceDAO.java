package insurance;

import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.InputStreamReader;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;

public class InsuranceDAO {
	public Connection dbConn() {
		Connection conn = null;//db 접속 객체
		try {
			FileInputStream fis = new FileInputStream("c:/work/db.prop");
			Properties prop = new Properties();
			prop.load(fis);
			String url=prop.getProperty("url");
			String id=prop.getProperty("id");
			String password=prop.getProperty("password");
			conn=DriverManager.getConnection(url, id, password);
		} catch (Exception e) {
			e.printStackTrace();
			// TODO: handle exception
		}
		return conn;
	}
	public List<InsuranceDTO> list() {
						//참조변수: 내용x
		List<InsuranceDTO> items=new ArrayList<>();//리스트 생성
		Connection conn=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		try {
			conn=dbConn();//db 접속 정보 리턴
			String sql="select*from insurance";
			pstmt=conn.prepareStatement(sql);//sql 실행 객체 생성
			rs=pstmt.executeQuery();//sql 실행, rs 참조변수가 결과set의 시작번지값을 가리킴
			while(rs.next()) {//다음 레코드가 있으면 true, 없으면 false
				InsuranceDTO dto=new InsuranceDTO();//1개의 레코드를 저장할 dto생성
				dto.setAge(rs.getInt("age"));//get자료형("필드명")
				dto.setBmi(rs.getDouble("bmi"));
				dto.setCharges(rs.getDouble("charges"));
				dto.setChildren(rs.getInt("children"));
				dto.setRegion(rs.getString("region"));
				dto.setSex(rs.getString("sex"));
				dto.setSmoker(rs.getString("smoker"));
				items.add(dto);//리스트에 dto 추가
			}
		} catch (Exception e) {
			e.printStackTrace();
			// TODO: handle exception
		} finally {
			try {
				if(rs!=null)//안전하게 처리 가능
				rs.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			try {
				if(pstmt!=null)//안전하게 처리 가능
				pstmt.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			try {
				if(conn!=null)//안전하게 처리 가능
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return items;//호출한 곳으로 리스트의 시작번지값을 보냄
	}
	//자료가 2개 이상이면 list
	public List<InsuranceDTO> list2() {
		List<InsuranceDTO> items=new ArrayList<>();
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs=null;
		try {
			conn=dbConn();
			String sql="SELECT sex, AVG(age) age, AVG(bmi) bmi, AVG(charges) charges";
			sql+="FROM insurance";
			sql+="GROUP BY sex";
			pstmt=conn.prepareStatement(sql);
			rs=pstmt.executeQuery();
			while(rs.next()) {
				InsuranceDTO dto=new InsuranceDTO();
				dto.setAge(rs.getInt("age"));
				dto.setSex(rs.getString("sex"));
				dto.setBmi(rs.getDouble("bmi"));
				dto.setChildren(rs.getInt("children"));
				dto.setSmoker(rs.getString("smoker"));
				dto.setRegion(rs.getString("region"));
				dto.setCharges(rs.getDouble("charges"));
				items.add(dto);
			}
		} catch (Exception e) {
			e.printStackTrace();
			// TODO: handle exception
		}
		return items;//호출한 곳으로 리스트의 시작번지값을 보냄
	}
	public List<InsuranceDTO> list3(){
	BufferedReader br=null;
	List<InsuranceDTO> items = new ArrayList<>();
	try {
		br=new BufferedReader(new InputStreamReader(new FileInputStream("c:/data/insurance/insurance.csv")));			
		String str="";
		//한라인씩 읽음, 내용이 없으면 반복문 종료
		while((str=br.readLine())!=null) {
//			System.out.println(str);
		String [] arr=str.split(",");
		if(!arr[0].equals("age")) {
			InsuranceDTO dto = new InsuranceDTO();
			dto.setAge(Integer.parseInt(arr[0]));
			dto.setSex(arr[1]);
			dto.setBmi(Double.parseDouble(arr[2]));
			dto.setChildren(Integer.parseInt(arr[3]));
			dto.setSmoker(arr[4]);
			dto.setRegion(arr[5]);
			dto.setCharges(Double.parseDouble(arr[6]));
			items.add(dto);	
		}
		}
	} catch (Exception e) {
		e.printStackTrace();
		// TODO: handle exception
	} finally {
		try {
			if(br!=null) 
				br.close();//null이 아니면 버퍼 정리
		} catch(Exception e2) {
			e2.printStackTrace();
		}
	}
	return items;
}}
