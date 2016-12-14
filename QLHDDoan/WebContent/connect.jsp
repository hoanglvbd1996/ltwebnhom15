
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="jdk.nashorn.internal.runtime.Undefined"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.net.URLEncoder"%>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.lang.String" %>
<%@ page import="java.sql.*" %>
<%
		Connection conn ;
		Statement stat;
		ResultSet rs ;
		conn= null;
		stat =null;
		String url= 
		"jdbc:mysql://localhost:3306/QLHDDoan";
		
		Class.forName("com.mysql.jdbc.Driver") ;
		conn =DriverManager.getConnection(url,"root","root");
		stat = conn.createStatement();
%>