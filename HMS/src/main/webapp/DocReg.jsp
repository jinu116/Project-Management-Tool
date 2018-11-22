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
                        <h3 align="center">Doctors List</h3>
                        <a class="nav-link" href="DocAdd.jsp" align="center">Add Doctor</a>
						     
                        <!-- Contact Form -->
                        <%
                        Class.forName("com.mysql.jdbc.Driver");
                		Connection con = DriverManager.getConnection("jdbc:mysql://localhost/hms_db","root", "");
                		Statement st=con.createStatement();
                    	
                		ResultSet rs =st.executeQuery("select did,name,department from DocReg where category='doctor'");
                       
                        %>
                         <table class="table">
						    <thead>
						      <tr>
						        <th>Sl no.</th>
						        <th>Name</th>
						        <th>Department</th>
						        
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
						        <td><%=rs.getString("department") %></td>
						   
						        <td><a class="nav-link" href="DocEdit.jsp?id=<%=rs.getString("did") %>">Edit</a></td>
						        <td><a class="nav-link" href="DocDel.jsp?id=<%=rs.getString("did")%>">Delete</a></td>
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
