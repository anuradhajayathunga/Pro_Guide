<%@page import="javax.security.auth.message.callback.PrivateKeyCallback.Request"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>UpDate</title>
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="css/fontawesome-all.min.css">
    <link rel="stylesheet" type="text/css" href="css/iofrm-style.css">
    <link rel="stylesheet" type="text/css" href="css/iofrm-theme12.css">
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
        <div class="form-body">
        <div class="row">
            <div class="form-holder">
                <div class="form-content">
                    <div class="form-items">
                        <div class="website-logo-inside">
                            <a href="index.html">
                                <div class="logo">
                                    <img class="logo-size" src="images/logo-light.svg" alt="">
                                </div>
                            </a>
                        </div>
                        <h3>Update Acc</h3>
                        <p>To reset your password, enter the email address you use to sign in to iofrm</p>
                       
						<form method="post" action="update">
                        <div class="row clearfix">
                            <div class="form-group col-lg-12 col-md-12 col-sm-12">
                                <div class="f-label"> ID </div>
                                <div class="field-inner">
                                    <input type="text" name="id" value="<%=id %>" placeholder="<%=id %>" readonly>
                                </div>
                            </div>                        
                            <div class="form-group col-lg-12 col-md-12 col-sm-12">
                                <div class="f-label"> Name </div>
                                <div class="field-inner">
                                    <input type="text" name="name" value="<%=name %>" placeholder="<%=name %>" >
                                </div>
                            </div>
                            <div class="form-group col-lg-12 col-md-12 col-sm-12">
                                <div class="f-label">Email Address </div>
                                <div class="field-inner">
                                    <input type="email" name="email" value="<%=email %>" placeholder="<%=email %>" >
                                </div>
                            </div>
                            <div class="form-group col-lg-12 col-md-12 col-sm-12">
                                <div class="f-label">Phone Number</div>
                                <div class="field-inner">
                                    <input type="text" name="phone" value="<%=phone %>" placeholder="<%=phone %>" >
                                </div>
                            </div>
                            <div class="form-group col-lg-12 col-md-12 col-sm-12">
                                <div class="f-label">UserName</div>
                                <div class="field-inner">
                                    <input type="text" name="userName" value="<%=userName %>" placeholder="<%=userName %>" >
                                </div>
                            </div>
                            
                             <div class="form-group col-lg-12 col-md-12 col-sm-12">
                                <div class="f-label">Password</div>
                                <div class="field-inner">
                                    <input type="password" name="password" value="<%=password %>" placeholder="" >
                                </div>
                            </div>                           
                            
                            <div class="form-button full-width">
                                <button id="submit" type="submit" class="ibtn btn-forget">Update</button>
                            </div>
                        </div>
                        	
                    </form>
                    </div>  
                </div>
            </div>
        </div>
 </div>

</body>
</html>