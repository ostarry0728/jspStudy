package com.kh.dev.student.action;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.dev.student.control.ActionForward;
import com.kh.dev.student.model.StudentDAO;
import com.kh.dev.student.model.StudentVO;

public class RegProcAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws IOException {
		request.setCharacterEncoding("utf-8");
		StudentDAO dao = StudentDAO.getInstance();
		StudentVO vo = new StudentVO(request.getParameter("id"), request.getParameter("pass"),
				request.getParameter("name"), request.getParameter("phone1"), request.getParameter("phone2"),
				request.getParameter("phone3"), request.getParameter("email"), request.getParameter("zipcode"),
				request.getParameter("address1"), request.getParameter("address2"));
		boolean flag = dao.insertDB(vo);
		request.setAttribute("flag", flag);
		return new ActionForward("/mvcmem/regProc.jsp", false);
	}

}
