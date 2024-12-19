package com.kh.dev.student.action;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.kh.dev.student.control.ActionForward;
import com.kh.dev.student.model.StudentDAO;
import com.kh.dev.student.model.StudentVO;

public class DeleteProcAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws IOException {
		request.setCharacterEncoding("UTF-8");
		StudentDAO dao = StudentDAO.getInstance();
		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("id");
		String pass = request.getParameter("pass");
		StudentVO vo = new StudentVO();
		vo.setId(id);
		vo.setPass(pass);
		boolean flag = dao.deleteDB(vo);
		if (flag == true) {
			session.invalidate();
		}
		request.setAttribute("flag", flag);
		return new ActionForward("/mvcmem/deleteProc.jsp", false);
	}

}
