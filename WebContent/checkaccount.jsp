<%@page import="java.io.ObjectInputStream.GetField"%>
<%@page import="java.util.*"%>
<%@page import="java.sql.*"%>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.lang.*" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ include file ="connect.jsp" %>
<!doctype html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <%
        String username=request.getParameter("user");
        String password=request.getParameter("password");
        String chucvu=request.getParameter("chucvu");
       String query = "Select * from TaiKhoan where username='" + username + "' and pass='" + password +"' and chucvu='" + chucvu +  "'";
    	rs = stat.executeQuery(query);
    	if (rs.next()){
            session.setAttribute("username", username);
            session.setAttribute("chucvu",chucvu);
           response.sendRedirect("index.jsp?username="+username);
        } else {
            out.println("Invalid password try again</a>");
        }
    	rs.close();
    	%> 
    </body>
</html>


