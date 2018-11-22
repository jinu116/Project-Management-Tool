<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
                <div class="signup-form">
                    <form action="RegAction.jsp" method="POST" class="register-form" id="register-form">
                        <div class="form-row">
                            <div class="form-group">
                                <div class="form-input">
                                    <label for="name" class="required">Name</label>
                                    <input type="text" name="name" id="name" />
                                </div>
                                <div class="form-input">
                                    <label for="age" class="required">Age</label>
                                    <input type="text" name="age" id="age" />
                                </div>
                                <div class="form-input">
                                    <label for="address" class="required">Address</label>
                                   <textarea name="address" id="address"></textarea>
                                   </div>
                                <div class="form-input">
                                    <label for="phone" class="required">Phone number</label>
                                    <input type="text" name="phone" id="phone" />
                                </div>
                                <div class="form-input">
                                    <label for="dob">Date Of Birth</label>
                                    <input type="text" name="dob" id="dob" />
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
                                            <input type="radio" name="radio1" id="male" checked>
                                            <label for="male">Male</label>
                                            <span class="check"></span>
                                        </div>
                                       <div class="form-radio-item">
                                            <input type="radio" name="radio1" id="female" checked>
                                            <label for="female">Female</label>
                                            <span class="check"></span>
                                        </div>
                                        <div class="form-radio-item">
                                            <input type="radio" name="radio1" id="other" checked>
                                            <label for="other">Other</label>
                                            <span class="check"></span>
                                        </div>
                                    </div>
                                </div>
                                
                                <div class="form-input">
                                    <label for="medicines" class="required">Prescription</label>
                                   <textarea name="medicines" id="medicines"></textarea>
                                   </div>
                                   <div class="form-input">
                                    <label for="date">Date</label>
                                    <input type="date" name="date" id="date" />
                                </div>
                            </div>
                            </div>
                        
                        <div class="form-submit">
                             <button type="submit" class="submit">Register</button>
                               <input type="button" class="submit" value="Home" onClick="javascript:window.location='../RecFol/RecHome.jsp';"> 
                                
                            </div>
                    </form>
                </div>
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