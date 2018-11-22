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
                    	String wmail=request.getParameter("email");
                    	String wpass=request.getParameter("pwd");
                    	String wdob=request.getParameter("dob");
                    	String wgen=request.getParameter("radio1");
                    	//String wqual=request.getParameter("qual");
                    	String wphone=request.getParameter("phone");
                    	//String wdept=request.getParameter("dept");
                    	//String wage=request.getParameter("age");
                    	String wcat=request.getParameter("cat");
                    	String wuser=request.getParameter("user");
                    	String unwanted="null";
                    	
                        Class.forName("com.mysql.jdbc.Driver");
                		Connection con = DriverManager.getConnection("jdbc:mysql://localhost/hms_db","root", "");
                		Statement st=con.createStatement();
                    	
                		int i=st.executeUpdate("insert into DocReg (name,age,dob,gender,Qualification,email,phone,department,username,password,category) values ('"+ wname +"','"+ unwanted +"', '"+ wdob +"','"+ wgen +"', '"+ unwanted +"' , '"+ wmail +"' ,'"+ wphone +"','"+ unwanted +"','"+ wuser +"','"+ wpass +"','"+ wcat +"')");
             	       
                    	if(i>0)
                    	{
                    		response.sendRedirect("RecReg.jsp");
                    		//out.println("Succesfully Submitted!!!");
                    	}
                    	else{
                    		response.sendRedirect("RecReg.jsp");
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
</body>
</html>