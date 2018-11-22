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
                <div class="col-sm-12">
                    <div class="contact-form">
                            
                        <!-- Contact Form -->
                       <h3>Add Admin</h3>
                          <form action="AdminProAct.jsp" method="post">
                            
                            
                                <div class="col-12 col-md-6">
                                    <div class="group">
                                        <input type="text" name="name" id="name" >
                                        <span class="highlight"></span>
                                        <span class="bar"></span>
                                        <label>Name</label>
                                    </div>
                                </div>
                                <div class="col-12 col-md-6">
                                    <div class="group">
                                        <input type="email" name="email" id="email" >
                                        <span class="highlight"></span>
                                        <span class="bar"></span>
                                        <label>Email</label>
                                    </div>
                                </div>
                               
                                
                                </div>
                                <div class="col-12 col-md-6">
                                    <div class="group">
                                        <input type="text" name="phone" id="phone" >
                                        <span class="highlight"></span>
                                        <span class="bar"></span>
                                        <label>Phone</label>
                                    </div>
                                </div>
                                <div class="col-12 col-md-6">
                                    <div class="group">
                                        <input type="text" name="user" id="user">
                                        <span class="highlight"></span>
                                        <span class="bar"></span>
                                        <label>Username</label>
                                    </div>
                                </div>
                                <div class="col-12 col-md-6">
                                    <div class="group">
                                        <input type="password" name="pwd" id="pwd" >
                                        <span class="highlight"></span>
                                        <span class="bar"></span>
                                        <label>Password</label>
                                    </div>
                                </div>
                                
                                 
  									<div class="col-12 col-md-6">
                                    	<div class="group">
										<input type="date" name="dob" required="">
										<label>Date of Birth :</label></td>
										</div>
								</div>
								
		
									<div class="col-12 col-md-6">
                                    <div class="group">
                                    <input type="radio" name="radio1" value="male">MALE
									<input type="radio" name="radio1" value="female">FEMALE
									</div>
									</div>
		
									
									<div class="col-12 col-md-6">
                                    <div class="group">
									<input type="text" name="cat" >
									<label>Category</label>
									</div>
									</div>
									
									<div class="col-12">
                                    <button type="submit" class="btn world-btn">Register</button>
                                </div>
                        </form>
						     
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
