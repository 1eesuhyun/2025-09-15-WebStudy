<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*,com.sist.dao.*"%>
    <%
      String cno=request.getParameter("cno");
      if(cno==null)
    	  cno="1";
      // main에서 코딩
      MusicDAO dao=MusicDAO.newInstance();
      List<String> list=dao.MusicListData(Integer.parseInt(cno));
      
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 <h1>지니뮤직 Top100</h1>
 <a href="music.jsp?cno=1">Top 100</a>
 <a href="music.jsp?cno=2">가요</a>
 <a href="music.jsp?cno=3">POP</a>
 <a href="music.jsp?cno=4">OST</a>
 <a href="music.jsp?cno=6">클래식</a><p> <!--  p태그는 br태그 2개랑 같음 -->
 <%
   int i=1;
   for(String title:list)
   {
 %> 
	   <%=i %>.<%=title%><br>
 <% 
 	   if(i==50)
 	   {
 %>
          <hr>
 <% 
 	   }
	   i++;
   }
 %>
</body>
</html>