package co.kh.dev.mvc.action;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.kh.dev.mvc.control.ActionForward;

public class IndexAction implements Action {

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response) 
			throws IOException {
		System.out.println("사용자정보를받고->데이터베이스조회->결과 request에 입력->화면 .jsp설정 리디렉트를 보내주는 IndexAction");
		return new ActionForward("index.jsp", false);
	}

}
