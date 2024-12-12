package co.kh.dev.bbs;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class VisitInsert
 */
@WebServlet(name = "visitInsert", urlPatterns = { "/visitInsert" })
public class VisitInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public VisitInsert() {
		super();
		System.out.println("생성자 작동");
	}

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//1.1 전송된값을 utf-8셋팅하기
		request.setCharacterEncoding("UTF-8");
		//1.1 정보가져오기
		String writer = request.getParameter("writer");
		String memo = request.getParameter("memo");
		
		//2. visit table에 저장한다(프로토콜: 약속)
		Connection con = null;
		PreparedStatement pstmt = null;     //오라클에서 작업할 쿼리문 사용할게 하는 명령문
		boolean successFlag = false;
		String url = "jdbc:oracle:thin:@127.0.0.1:1521/xe";
		String VISIT_INSERT ="INSERT INTO VISIT VALUES(visit_seq.NEXTVAL, ?, ?) ";
		try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
            con = DriverManager.getConnection(url, "webuser", "123456");
            pstmt = con.prepareStatement(VISIT_INSERT);
            pstmt.setString(1, writer);
            pstmt.setString(2, memo); 
            
            int count = pstmt.executeUpdate();
            successFlag = (count != 0)?(true):(false); 
        } catch (ClassNotFoundException e) {
            System.out.println(e.toString());
        } catch (SQLException e) {
            System.out.println(e.toString());
        }finally {
        	if (con != null) {
                try {
                    con.close();

                } catch (SQLException e) {
                    System.out.println(e.toString());
                }
            }
            if (pstmt != null) {
                try {
                    pstmt.close();

                } catch (SQLException e) {
                    System.out.println(e.toString());
                }
            }
        }
		
		//3.화면출력
		if(successFlag == true) {
			System.out.println("입력성공");
			//샌드리디렉트 visitList요청을 하면 다시한번 url http://localhost8080/jspStudy/VisitList
			response.sendRedirect("visitList");
		}else {
			System.out.println("입력실패");
		}
	}

}
