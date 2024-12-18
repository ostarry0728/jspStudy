package co.kh.dev.mvc.action;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.kh.dev.mvc.control.ActionForward;

public interface Action {
	// 추상메소드
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response) 
			throws IOException;
	
}
