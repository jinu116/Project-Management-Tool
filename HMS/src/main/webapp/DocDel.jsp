<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*"%>
<% 
	String wid=request.getParameter("id");
	
	try{
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost/hms_db","root", "");
		Statement st=con.createStatement();
    	//ResultSet rs; 
    	int i=st.executeUpdate("delete from DocReg where did='"+ wid +"' ");
       
    	if(i>0)
    	{
    		response.sendRedirect("DocReg.jsp");
    		//out.println("Succesfully Submitted!!!");
    	}
    	else{
    		response.sendRedirect("DocReg.jsp");
    	}
	}
	catch(Exception e)
    {
        System.out.println(e);
    }
	
%>