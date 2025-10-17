package com.sist.manager;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;


@WebServlet("/FileUploadServlet")
@MultipartConfig(
  fileSizeThreshold = 1024*1024*100,
  maxFileSize = 1024*1024*500,
  maxRequestSize = 1024*1024*10
)
public class FileUploadServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String uploadPath="";
	}

}
