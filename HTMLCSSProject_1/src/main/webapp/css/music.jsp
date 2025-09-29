<%@page import="com.sist.vo.MusicVO"%>
<%@page import="java.util.List"%>
<%@page import="com.sist.dao.MusicDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
     MusicDAO dao=MusicDAO.newInstance();
    List<MusicVO> list=dao.musicListData(1);
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 <table border=1 bordercolor=black width=800>
  <tr>
   <th>순위</th>
   <th></th>
   <th>곡명</th>
   <th>가수명</th>  
  </tr>
  <%
  	for(MusicVO vo:list)
  	{
  %>
  	<tr>
   		<td><%=vo.getNo() %></td>
   		<td>
   		 <img src="<%=vo.getPoster() %>"
   		  width="35" height="35">
   		</td>
   		<td><%=vo.getTitle() %></td>
   		<td><%=vo.getSinger() %></td>  
 	 </tr>
  <% 
  	}
  %>
 
 </table>
</body>
</html>