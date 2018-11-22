<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
<%@page import="javax.sql.*" %>
    
<!DOCTYPE html>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>HMS</title>

    <!-- Font Icon -->
    <link rel="stylesheet" href="fonts/material-icon/css/material-design-iconic-font.min.css">
    <link rel="stylesheet" href="vendor/nouislider/nouislider.min.css">

    <!-- Main css -->
    <link rel="stylesheet" href="css/style.css">
</head>
<body>

    <div class="main">

        <div class="container">
        
            <div class="signup-content">
            
                <div class="signup-img">
                    <img src="images/Reg.jpg" alt="">
                    <div class="signup-img-content">
                       </div>
                </div>
                <%
                        String pid=request.getParameter("id");
                        Class.forName("com.mysql.jdbc.Driver");
                		Connection con = DriverManager.getConnection("jdbc:mysql://localhost/hms_db","root", "");
                		Statement st=con.createStatement();
                    	
                		ResultSet rs =st.executeQuery("select * from patientreg where id='"+ pid +"'");
                       while(rs.next())
                       {
                        %>
                <div class="signup-form">
                    <form action="EditActionDoc.jsp" method="POST" class="register-form" id="register-form">
                        <div class="form-row">
                            <div class="form-group">
                            <div class="form-input">
                            <input type="hidden" name="id" id="id" required value="<%=rs.getString("id")%>">
                                </div>
                                <div class="form-input">
                                    <label for="name" class="required" >Name</label>
                                    <input type="text" name="name" id="name" required value="<%=rs.getString("name")%>"/>
                                </div>
                                <div class="form-input">
                                    <label for="age" class="required">Age</label>
                                    <input type="text" name="age" id="age" required value="<%=rs.getString("age")%>"/>
                                </div>
                                <div class="form-input">
                                    <label for="address" class="required">Address</label>
                                   <textarea name="address" id="address" ><%=rs.getString("address")%></textarea>
                                   </div>
                                <div class="form-input">
                                    <label for="phone" class="required">Phone number</label>
                                    <input type="text" name="phone" id="phone" required value=<%=rs.getString("phone") %> />
                                </div>
                                <div class="form-input">
                                    <label for="dob">Date Of Birth</label>
                                    <input type="text" name="dob" id="dob" required value=<%=rs.getString("dob") %> />
                                </div>
                                
                            </div>
                            <div class="form-group">
                                <div class="form-select">
                                    
                                    <div class="form-select">
                                    <div class="label-flex">
                                        <label for="department">Select Department</label>
                                    </div>
                                    <div class="select-list">
                                        <select name="department" id="department" >
                                            <option value="cardiac" >Cardiac</option>
                                            <option value="pediatric">Pediatric</option>
                                            <option value="cardiac">Cardiac</option>
                                            <option value="physician">Physician</option>
                                            <option value="gynaec">Gynaec</option>
                                        </select>
                                    </div>
                                </div>
                                </div>
                                <div class="form-radio">
                                    <div class="label-flex">
                                        <label for="gender">Gender</label>
                                    </div>
                                    <div class="form-radio-group">   
                                    <div class="form-radio-item">
                                            <input type="radio" name="radio1" id="other" checked>
                                            <label for="other">Other</label>
                                            <span class="check"></span>
                                        </div>         
                                        <div class="form-radio-item">
                                            <input type="radio" name="radio1" id="male" checked>
                                            <label for="male">Male</label>
                                            <span class="check"></span>
                                        </div>
                                       <div class="form-radio-item">
                                            <input type="radio" name="radio1" id="female" checked>
                                            <label for="female">Female</label>
                                            <span class="check"></span>
                                        </div>
                                        
                                    </div>
                                </div>
                                
                                <div class="form-input">
                                    <label for="medicines" class="required">Prescription</label>
                                   <textarea name="medicines" id="medicines"><%=rs.getString("medicine")%></textarea>
                                   </div>
                                   <div class="form-input">
                                    <label for="date">Date</label>
                                    <input type="date" name="date" id="date" required value="<%=rs.getString("date") %>" />
                                </div>
                            </div>
                            </div>
                        
                        <div class="form-submit">
                             <button type="submit" class="submit">Edit</button>
                               <input type="button" class="submit" value="Home" onClick="javascript:window.location='../DocFol/DocHome.jsp';"> 
                                
                            </div>
                    </form>
                </div>
                
                <%} %>
            </div>
        </div>

    </div>

    <!-- JS -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/nouislider/nouislider.min.js"></script>
    <script src="vendor/wnumb/wNumb.js"></script>
    <script src="vendor/jquery-validation/dist/jquery.validate.min.js"></script>
    <script src="vendor/jquery-validation/dist/additional-methods.min.js"></script>
    <script src="js/main.js"></script>
</body><!-- This templates was made by Colorlib (https://colorlib.com) -->
</html>