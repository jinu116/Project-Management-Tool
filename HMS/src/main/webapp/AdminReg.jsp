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
                        <h3 align="center">Admin List</h3>
                        <a class="nav-link" href="AdminProAdd.jsp" align="center">Add Admin</a>
						     
                        <!-- Contact Form -->
                        <%
                        Class.forName("com.mysql.jdbc.Driver");
                		Connection con = DriverManager.getConnection("jdbc:mysql://localhost/hms_db","root", "");
                		Statement st=con.createStatement();
                    	
                		ResultSet rs =st.executeQuery("select did,name,phone,email from DocReg where category='admin'");
                       
                        %>
                         <table class="table">
						    <thead>
						      <tr>
						        <th>Sl no.</th>
						        <th>Name</th>
						        <th>Phone</th>
						        <th>Email</th>
						        
						      </tr>
						    </thead>
						    <tbody>
						    <%
						    while(rs.next())
						    {
						    %>
						      <tr>
						        <td><%=rs.getInt("did") %></td>
						        <td><%=rs.getString("name") %></td>
						        <td><%=rs.getString("phone") %></td>
						        <td><%=rs.getString("email") %></td>
						   
						        <td><a class="nav-link" href="AdminEdit.jsp?id=<%=rs.getString("did") %>">Edit</a></td>
						        </tr>
                            <%
                            }
                            %>
						    </tbody>
						      
						  </table>
                    </div>
                </div>
            </div>
        </div>
    
    					</div>
					</div>
				</div>
			</div>
		</div>
