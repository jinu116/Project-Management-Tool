<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <jsp:include page='header/header1.jsp'></jsp:include>
    <%@page import="java.sql.*" %>
<%@page import="javax.sql.*" %>

<div class="home_container">
			<div class="container">
				<div class="row">
					<div class="col">
						<div class="home_content">
							
							
							<div class="container-fluid">
            <div class="row justify-content-center">
                <!-- Contact Form Area -->
                <div class="col-lg-12">
                    <div class="contact-form">
                             
                        <!-- Contact Form -->
                        <%
                        String wname=request.getParameter("name");
                    	String wdob=request.getParameter("dob");
                    	String wgen=request.getParameter("radio1");
                    	String wphone=request.getParameter("phone");
                    	String wid=request.getParameter("id");
                    	String wage=request.getParameter("age");
                    	String wdept=request.getParameter("department");
                    	String waddr=request.getParameter("address");
                    	String wdate=request.getParameter("date");
                    	String wmedi=request.getParameter("medicines");
                    	
                    	
                        Class.forName("com.mysql.jdbc.Driver");
                		Connection con = DriverManager.getConnection("jdbc:mysql://localhost/hms_db","root", "");
                		Statement st=con.createStatement();
                    	
                		int i=st.executeUpdate("update patientreg set name='" + wname + "',age='" +wage + "',department='" +wdept+ "',dob='" +wdob + "',phone='"+wphone+"',date='" +wdate+ "' where id='"+ wid +"' ");
                	       
                    	if(i>0)
                    	{
                    		response.sendRedirect("../RecFol/ViewPat.jsp");
                    		//out.println("Succesfully Submitted!!!");
                    	}
                    	else{
                    		response.sendRedirect("../RecFol/ViewPat.jsp");
                    	}
                        %>
                         
                    </div>
                </div>
            </div>
        </div>
    
    					</div>
					</div>
				</div>
			</div>
		</div>
