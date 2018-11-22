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
                        <h3 align="center">Patient List</h3>
                        <a class="nav-link" href="../regform/indexReg.jsp" align="center">Add Patient</a>
						     
                        <!-- Contact Form -->
                        <%
                        String pid=request.getParameter("id");
                        Class.forName("com.mysql.jdbc.Driver");
                		Connection con = DriverManager.getConnection("jdbc:mysql://localhost/hms_db","root", "");
                		Statement st=con.createStatement();
                    	
                		ResultSet rs =st.executeQuery("select * from patientreg where id='"+ pid +"'");
                       
                        %>
                         <table class="table">
						    <thead>
						      <tr>
						        <th style="color:black; ">Sl no.</th>
						        <th style="color:black;">Name</th>
						        <th style="color:black;">Age</th>
						        <th style="color:black;">Department</th>
						        <th style="color:black;">Phone</th>
						        <th style="color:black;">Gender</th>
						        <th style="color:black;">DOB</th>
						        <th style="color:black;">Address</th>
						        <th style="color:black;">Date</th>
						        <th style="color:black;">Medicine</th>
						        
						      </tr>
						    </thead>
						    <tbody>
						    <%
						    while(rs.next())
						    {
						    %>
						      <tr style="color:black;">
						        <td><%=rs.getInt("id") %></td>
						        <td><%=rs.getString("name") %></td>
						        <td><%=rs.getString("age") %></td>
						        <td><%=rs.getString("department") %></td>
						        <td><%=rs.getString("phone") %></td>
						        <td><%=rs.getString("gender") %></td>
						        <td><%=rs.getString("dob") %></td>
						        <td><%=rs.getString("address") %></td>
						        <td><%=rs.getString("date") %></td>
						        <td><%=rs.getString("medicine") %></td>
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
