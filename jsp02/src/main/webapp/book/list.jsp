<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import = "book.*" %>
    <%@ page import = "java.util.List" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
BookDAO dao = new BookDAO();
List<BookDTO> items = dao.list_book();
%>
<a href = "input.jsp">[새책 등록]</a>
<table border = "1">
<tr>
<th>idx</th>
<th>title</th>
<th>author</th>
<th>price</th>
<th>amount</th>
</tr>
		<!-- 개별값:리스트 -->
<% for (BookDTO dto : items) { %>
<tr>
<td><%=dto.getIdx() %></td>
<td><%=dto.getTitle() %></td>
<td><%=dto.getAuthor() %></td>
<td><%=dto.getPrice() %></td>
<td><%=dto.getAmount() %></td>
</tr>
<% } %>
</table>
</body>
</html>