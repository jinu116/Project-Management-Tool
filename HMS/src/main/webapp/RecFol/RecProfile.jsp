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
                       String pidd=(String)session.getAttribute("pid") ;

                        String pid=request.getParameter("id");
                        Class.forName("com.mysql.jdbc.Driver");
                		Connection con = DriverManager.getConnection("jdbc:mysql://localhost/hms_db","root", "");
                		Statement st=con.createStatement();
                    	
                		ResultSet rs =st.executeQuery("select * from DocReg where did='"+ pidd +"'");
                       while(rs.next())
                       {
                    	    %>
                          <form action="RecUpdate.jsp" method="post">
                            <input type="hidden" name="did" id="did" required value="<%=rs.getString("did")%>">
                                <div class="col-12 col-md-6">
                                    <div class="group">
                                        <input type="text" name="name" id="name" required value="<%=rs.getString("name")%>">
                                        <span class="highlight"></span>
                                        <span class="bar"></span>
                                        <label>Enter your name</label>
                                    </div>
                                </div>
                                <div class="col-12 col-md-6">
                                    <div class="group">
                                        <input type="email" name="email" id="email" required value="<%=rs.getString("email")%>">
                                        <span class="highlight"></span>
                                        <span class="bar"></span>
                                        <label>Enter your email</label>
                                    </div>
                                </div>
                                </div>
                                
                                <div class="col-12 col-md-6">
                                    <div class="group">
                                        <input type="text" name="phone" id="phone" required value="<%=rs.getString("phone")%>">
                                        <span class="highlight"></span>
                                        <span class="bar"></span>
                                        <label>Phone</label>
                                    </div>
                                </div>
                                <div class="col-12 col-md-6">
                                    <div class="group">
                                        <input type="text" name="user" id="user" required value="<%=rs.getString("username")%>">
                                        <span class="highlight"></span>
                                        <span class="bar"></span>
                                        <label>username</label>
                                    </div>
                                </div>
                                <div class="col-12 col-md-6">
                                    <div class="group">
                                        <input type="password" name="pwd" id="pwd" required value="<%=rs.getString("password")%>">
                                        <span class="highlight"></span>
                                        <span class="bar"></span>
                                        <label>Enter your password</label>
                                    </div>
                                </div>
                                
                                
                             <div class="col-12 col-md-6">
                                    <div class="group">
                                        <input type="text" name="dob" id="dob" required value="<%=rs.getString("dob")%>">
                                        <span class="highlight"></span>
                                        <span class="bar"></span>
                                        <label></label>
                                    </div>
                                </div>
                                 
                                <div class="col-12">
                                    <button type="submit" class="btn world-btn">Edit</button>
                                </div>
                        </form>
						  
						     
                        <%
                        } %>
						    
                    </div>
                </div>
            </div>
        </div>
    
    					</div>
					</div>
				</div>
			</div>
		</div>
