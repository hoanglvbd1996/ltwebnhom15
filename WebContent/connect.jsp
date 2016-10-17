<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="jdk.nashorn.internal.runtime.Undefined"%>
<%@page import="java.sql.*"%>
<%@page import="java.net.URLEncoder"%>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.lang.String" %>
<%@ page import="java.lang.*" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<%
Connection conn ;
Statement stat;
ResultSet rs ;
conn= null;
stat =null;
String url= 
"jdbc:sqlserver://localhost:1433;" + "databaseName=QLHDDoan;setUnicode=true&characterEncoding=UTF-8";

Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
conn =DriverManager.getConnection(url,"h","123");
stat = conn.createStatement();
%>
	 