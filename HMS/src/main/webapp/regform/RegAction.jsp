<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
<%@page import="javax.sql.*" %>



                        <%
                        
                    	String wname=request.getParameter("name");
                    	String wdob=request.getParameter("dob");
                    	String wgen=request.getParameter("radio1");
                    	String wphone=request.getParameter("phone");
                    	
                    	String wage=request.getParameter("age");
                    	String wdept=request.getParameter("department");
                    	String waddr=request.getParameter("address");
                    	String wdate=request.getParameter("date");
                    	String wmedi=request.getParameter("medicines");
                    	
                    	
                        Class.forName("com.mysql.jdbc.Driver");
                		Connection con = DriverManager.getConnection("jdbc:mysql://localhost/hms_db","root", "");
                		Statement st=con.createStatement();
                    	
                		int i=st.executeUpdate("insert into patientreg (name,age,department,phone,gender,dob,address,date,medicine) values ('"+ wname +"','"+ wage +"','"+ wdept +"','"+ wphone +"','"+ wgen +"' ,'"+ wdob +"','"+ waddr +"','"+ wdate +"','"+ wmedi +"')");
             	       
                    	if(i>0)
                    	{
                    		response.sendRedirect("../RecFol/RecHome.jsp");
                    		//out.println("Succesfully Submitted!!!");
                    	}
                    	else{
                    		response.sendRedirect("../RecFol/RecHome.jsp");
                    	}
                        %>
                         
                   
</body>
</html>