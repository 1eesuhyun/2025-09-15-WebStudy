<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%--
    reponse : HttpServletResponse
    => 전송 방식
       response.setContentType("text/html;charset=UTF-8")
       = 쿠키 전송
         response.addCookie(쿠키명)
       = JSP한개 파일에서 1개만 전송
    => 다른 파일로 이동
       response.sendRedirect("파일명") => get방식만 사용
    => 헤더 설정
       다운로드시에 사용
       setHeader()
 --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>