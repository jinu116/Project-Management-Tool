<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*" %>
<%@page import="javax.sql.*" %>

<%
String usern=request.getParameter("uname");
String pass=request.getParameter("pswd");
//System.out.println(usern);
//System.out.println(pass);

try
{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost/hms_db","root",""); 
	PreparedStatement ps=con.prepareStatement("select * from docreg where username='"+usern+"' and password='"+pass+"' ");
	ResultSet rs=ps.executeQuery();
	if(rs.next())
	{
		String cat=rs.getString("category");
		session.setAttribute("user",usern);
		//System.out.println(cat);
		String id=rs.getString("did");
		session.setAttribute("pid",id);
		String rname=rs.getString("name");
		session.setAttribute("Recep",rname);
			//System.out.println(rcep);
			
		if(cat.equals("admin"))
		{
			response.sendRedirect("AdminHome.jsp");
		}
		else if(cat.equals("doctor"))
		{
			response.sendRedirect("DocFol/DocHome.jsp");
		}
		else if(cat.equals("reception"))
		{
			response.sendRedirect("RecFol/RecHome.jsp");
			
		}
		else
		{
			response.sendRedirect("index.jsp");
		}
		
	}
}
catch(Exception e){
	System.out.print(e);
}
%>