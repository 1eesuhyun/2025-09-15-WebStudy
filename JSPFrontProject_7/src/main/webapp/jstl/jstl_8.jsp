<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="fn" uri="jakarta.tags.functions" %>

<%
   String msg="Hello JSTL";
   // 자바 내장 메서드 테스트용 변수
%>

<c:set var="msg" value="Hello JSTL"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL vs Java 문자열 처리</title>
</head>
<body>
 <h1>자바의 String 클래스의 메소드</h1>
 <%=msg.length() %><br>
 <%=msg.substring(0,5) %><br>
 <%=msg.replace("l","k") %><br>

 <h1>JSTL 함수(fn) 사용</h1>
 ${fn:length(msg)}<br>
 ${fn:substring(msg,0,5)}<br>
 ${fn:replace(msg,'l','k')}
</body>
</html>
