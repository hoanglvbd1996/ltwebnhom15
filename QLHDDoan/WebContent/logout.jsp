
<%@ include file ="connect.jsp" %>
<%@ page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<%  
int kq =  stat.executeUpdate("update login set timelogout = now() where ID = "+session.getAttribute("ID")+"");
request.getSession().invalidate(); 

response.sendRedirect("index.jsp");
%>