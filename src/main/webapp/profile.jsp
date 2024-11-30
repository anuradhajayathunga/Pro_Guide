<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<!-- Mirrored from brandio.io/envato/iofrm/html/login16.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 13 Oct 2023 09:09:44 GMT -->
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>iofrm</title>
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="css/fontawesome-all.min.css">
    <link rel="stylesheet" type="text/css" href="css/iofrm-style.css">
    <link rel="stylesheet" type="text/css" href="css/iofrm-theme16.css">
</head>
<body>
	<%
	String id=request.getParameter("id");
	String name=request.getParameter("name");
	String email=request.getParameter("email");
	String phone=request.getParameter("phone");
	String userName=request.getParameter("user");
	String password=request.getParameter("pwd");

	%>



    <div class="form-body without-side">
        <div class="website-logo">
            <a href="index.html">
                <div class="logo">
                    <img class="logo-size" src="images/logo-light.svg" alt="">
                </div>
            </a>
        </div>
        <div class="row">
            <div class="img-holder">
                <div class="bg"></div>
                <div class="info-holder">
                    <img src="images/graphic3.svg" alt="">
                </div>
            </div>
            <div class="form-holder">
                <div class="form-content">
                    <div class="form-items">
                        <h3>Admin Profile</h3>
                        <!-- <p>Access to the most powerfull tool in the entire design and web industry.</p> -->
                        <form>
                            ID<input class="form-control" type="text" name="id" value="<%=id %>" placeholder="" readonly>
                            Name<input class="form-control" type="text" name="name" value="<%=name %>" placeholder="" readonly>
                            Email<input class="form-control" type="email" name="email" value="<%=email %>" placeholder="" readonly>
                            Phone Number<input class="form-control" type="text" name="phone" value="<%=phone %>" placeholder="" readonly>
                            username<input class="form-control" type="text" name="username" value="<%=userName %>" placeholder="" readonly>
                            Password<input class="form-control" type="password" name="password" value="<%=password %>" placeholder="" readonly>
                            <div class="form-button">
                            	
                            
                                <a href="updateguide.jsp?id=<%=id%>&name=<%=name%>&email=<%=email%>&phone=<%=phone%>&user=<%=userName%>&pwd=<%=password%>" class="ibtn">Update</a>
                                <a href="deletemessage.jsp?id=<%=id%>&name=<%=name%>&email=<%=email%>&phone=<%=phone%>&user=<%=userName%>&pwd=<%=password%>"  class="ibtn">Delete</a>
</body> 
                                
                           </div>     
                        </form>
                        <div class="other-links">
                            <!-- <div class="text">Or login with</div> -->
                            <a href="#"><i class="fab fa-facebook-f"></i>Facebook</a><a href="#"><i class="fab fa-google"></i>Google</a><a href="#"><i class="fab fa-linkedin-in"></i>Linkedin</a>
                        </div>
                        <div class="page-links">
                            <!-- <a href="register16.html">Register new account</a> -->
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
<script src="js/jquery.min.js"></script>
<script src="js/popper.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/main.js"></script>
</body>

<!-- Mirrored from brandio.io/envato/iofrm/html/login16.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 13 Oct 2023 09:09:45 GMT -->
</html>