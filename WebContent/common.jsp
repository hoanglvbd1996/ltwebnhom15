<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="jdk.nashorn.internal.runtime.Undefined"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.*"%>
<%@page import="java.net.URLEncoder"%>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.lang.String" %>
<%@ page import="java.lang.*" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<%!
static final int adText =1;
static final int adDate =2;
static final int adNumber =3;
static final int adSearch =4;
static final int ad_Search =5;
String toHTML (String value)
{
	if(value == null) return "";
	value = value.replace("&","&amp;");
	value = value.replace("<","&lt;");
	value = value.replace(">","&gt;");
	value = value.replace("\\","&;" +"quot;");
	return value;
}
String toURL (String strValue)
{
	if(strValue == null) return "";
	if(strValue.compareTo("") ==0)return strValue;
	return URLEncoder.encode(strValue);
}
String getValueHTML (ResultSet rs, String fieldName)
{
	try {
		String value = rs.getString(fieldName);
		if(value == null)
			return toHTML(value);
	}
	catch(SQLException sqle){}
	return "";
}
boolean isNumber (String param)
{
	boolean result;
	if(param ==null || param.equals("")) return true;
	param = param.replace('d','_').replace('f','_');
		try{
			Double dbl = new Double(param);
			result = true;
		}
		catch(NumberFormatException nfe)
		{
			result = false;
		}
	return result;
}
String toSQL(String value , int type)
{
	if(value ==null) return "null";
	String param = value;
	if("".equals(param) && (type == adText || type == adDate))
	{
		return "null";
	}
	switch(type)
	{
	case adText:{
		param = param.replace("'","''");
		param = param.replace("&amp;","&");
		param = "'" + param +"'";
		break;
	}
	case adSearch:{
		param = param.replace("'","''");
	}
	 case ad_Search:{
		 param = param.replace("'","''");
	 }
	 case adNumber:{
		 try{
			 if(!isNumber(value) || "".equals(param))
				 param ="null";
			 else 
				 param = value;
		 }
		 catch(NumberFormatException nfa){
			 param = "null";
		 }
		 break;
	 }
	 case adDate:{
		 param =	"'" + param +"'";
		 break;
	 }
	}
	 return param;
}

String getOptions(Connection conn, String sql , boolean isSearch , boolean isRequired ,String selectedValue)
{
	String sOptions ="";
	String sSel ="";
	if(isSearch)
	{
		sOptions+= "<option value=\"\">All</option>";
	}
	else{
		if(!isRequired){
			sOptions += "<option value=\"\"></option>";
		}
	}
	try{
		Statement stat = conn.createStatement();
		ResultSet rs = null;
		rs = stat.executeQuery(sql);
		while(rs.next()){
			String id = toHTML(rs.getString(1));
			String val = toHTML(rs.getString(2));
			if(id.compareTo(selectedValue)==0){
				sSel ="SELECTED";
			}
			else{
				sSel ="";
			}
			sOptions += "<option value =\""+id+"\"" +sSel+">" +val +"</option>";
		}
		
		rs.close();
		stat.close();
	}
	catch(Exception e){}
	return sOptions;
}
String checkSecurity(int iLevel,HttpSession session,HttpServletResponse response, HttpServletRequest request)
{
	try{
		Object o1 = session.getAttribute("UserID");
		Object o2 = session.getAttribute("UserRights");
		boolean bRedirect =false;
		if(o1 == null || o2 == null){bRedirect = true;}
		if(!bRedirect){
			if((o1.toString()).equals("")){
				bRedirect =true;
			}
			else if(new Integer(o2.toString()).intValue() <iLevel)
			{
				bRedirect =true;
			}
		}
		if(bRedirect){
			response.sendRedirect("login.jsp?querystring="+toURL(request.getQueryString()) + "&ret_page" + toURL(request.getRequestURI()));
			return "sendRedirect";
		}
	}
	catch(Exception e){};
	return "";
}
%>
