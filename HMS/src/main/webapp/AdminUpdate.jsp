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
                        String wid=request.getParameter("did");
                    	String wname=request.getParameter("name");
                    	String wmail=request.getParameter("email");
                    	String wpass=request.getParameter("pwd");
                    	String wdob=request.getParameter("dob");
                    	String wphone=request.getParameter("phone");
                    	String wdept=request.getParameter("dept");
                    	String wage=request.getParameter("age");
                    	
                    	
                        Class.forName("com.mysql.jdbc.Driver");
                		Connection con = DriverManager.getConnection("jdbc:mysql://localhost/hms_db","root", "");
                		Statement st=con.createStatement();
                    	
                		int i=st.executeUpdate("update DocReg set name='" + wname + "',dob='" +wdob + "',phone='"+wphone+"',password='"+ wpass +"' ,email='"+ wmail +"' where did='"+ wid +"' ");
                	       
                    	if(i>0)
                    	{
                    		response.sendRedirect("AdminReg.jsp");
                    		//out.println("Succesfully Submitted!!!");
                    	}
                    	else{
                    		response.sendRedirect("AdminReg.jsp");
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
