package common;

import java.sql.Connection;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class DB {
	public static Connection dbConn() {
		DataSource ds = null;
		Connection conn = null;
		try {
			Context ctx = new InitialContext();//context.xml 파일을 분석하는 객체
			//java: comp.env/Resource태그의 Name
			//데이터소스 정보를 찾아서 연결시킴
			ds = (DataSource)ctx.lookup("java:comp/env/oraDB");
			conn = ds.getConnection();//오라클 서버에 접속, 커넥션 리턴

		} catch (Exception e) {
			e.printStackTrace();
			// TODO: handle exception
		}
		return conn;//호출한 곳으로 커넥션 정보를 보냄
	}
}
