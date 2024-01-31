package member;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import common.DB;

public class MemberDAO {
	public List<MemberDTO> list() {
		List<MemberDTO> items = new ArrayList<MemberDTO>();
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = DB.dbConn();
			//to_char(날짜 필드, '출력형식') 날짜를 스트링으로 바꾸는 함수
			String sql = "select userid, passwd, name, to_char(reg_date, 'yyyy-mm-dd') reg_date, address, tel from member order by name";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				String userid = rs.getString("userid");
				String passwd = rs.getString("passwd");
				String name = rs.getString("name");
				String reg_date = rs.getString("reg_date");
				String address = rs.getString("address");
				String tel = rs.getString("tel");
				//레코드 내용을 dto에 담아서
				MemberDTO dto = new MemberDTO(userid, passwd, name, reg_date, address, tel);
				//리스트에 dto 추가
				items.add(dto);
			}
		} catch (Exception e) {
			e.printStackTrace();
			// TODO: handle exception
		} finally {
			try {
				if(rs!=null)
				rs.close();
			} catch (Exception e2) {
				e2.printStackTrace();
				// TODO: handle exception
			}
			try {
				if(pstmt!=null)
					pstmt.close();
			} catch (Exception e2) {
				e2.printStackTrace();
				// TODO: handle exception
			}
			try {
				if(conn!=null)
					conn.close();
			} catch (Exception e2) {
				e2.printStackTrace();
				// TODO: handle exception
			}
		}
		return items;
	}
}
