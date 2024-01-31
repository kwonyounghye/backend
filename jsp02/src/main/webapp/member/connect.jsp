<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
Connection conn = null;
try {
String url = "jdbc:oracle:thin:@localhost:1521:xe";//오라클 연결 문자열
String id = "java";//아이디
String pass = "java1234";//비번
Class.forName("oracle.jdbc.driver.OracleDriver");//드라이버 로딩
conn = DriverManager.getConnection(url, id, pass);//오라클 서버에 접속
out.println("오라클에 접속되었습니다.");
} catch (Exception e) {
out.println("오라클 접속 에러...");
e.printStackTrace();
}
%>
</body>
</html>