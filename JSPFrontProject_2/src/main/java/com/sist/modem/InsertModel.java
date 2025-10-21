package com.sist.modem;

import jakarta.servlet.http.HttpServletRequest;

public class InsertModel {
	public void execute(HttpServletRequest request)
	{
		// request에 값을 담는다
		request.setAttribute("msg", "게시판 작성");
	}
}
