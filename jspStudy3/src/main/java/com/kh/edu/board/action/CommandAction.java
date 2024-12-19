package com.kh.edu.board.action;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.edu.board.control.ActionForward;

public interface CommandAction {
	// 추상메소드
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws IOException;
}
