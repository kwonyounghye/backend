package member;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class MemberController
 */
@WebServlet("/member_servlet/*")//member_servlet+뒤에 아무거나 와도 됨
public class MemberController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MemberController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String url = request.getRequestURI();//사용자가 요청한 주소
		String context = request.getContextPath();//컨텍스트패스(프로젝트의 이름)
		MemberDAO dao =new MemberDAO();
		if(url.indexOf("list.do")!=-1) {//주소에 list.do가 포함되어 있으면
			Map<String, Object> map = new HashMap<>();
			List<MemberDTO> list = dao.list();//회원 레코드셋
			map.put("list", list);//map에 자료 추가
			map.put("count", list.size());//리스트.size() 자료수
			request.setAttribute("map", map);//변수명 map에 자료 저장
			String page = "/member/list.jsp";//출력 페이지
			RequestDispatcher rd = request.getRequestDispatcher(page);
			rd.forward(request, response);//출력 페이지로 이동
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
