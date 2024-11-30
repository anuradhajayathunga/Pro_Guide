<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="javax.security.auth.message.callback.PrivateKeyCallback.Request"%>    
<!DOCTYPE html>
<html lang="en">

<!-- Mirrored from brandio.io/envato/iofrm/html/forget12.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 13 Oct 2023 08:59:28 GMT -->
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>iofrm</title>
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
	String username=request.getParameter("user");
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
                        <h3>Delete Acc</h3>
                        <p>To reset your password, enter the email address you use to sign in to iofrm</p>
                       
						<form method="post" action="delete">
                        <div class="row clearfix">
                            <div class="form-group col-lg-12 col-md-12 col-sm-12">
                                <div class="f-label"> ID</div>
                                <div class="field-inner">
                                    <input type="text" name="id" value="<%=id %>" placeholder="" readonly>
                                </div>
                            </div>                        
                            <div class="form-group col-lg-12 col-md-12 col-sm-12">
                                <div class="f-label"> Name </div>
                                <div class="field-inner">
                                    <input type="text" name="name" value="<%=name %>" placeholder="" readonly>
                                </div>
                            </div>
                            <div class="form-group col-lg-12 col-md-12 col-sm-12">
                                <div class="f-label">Email Address </div>
                                <div class="field-inner">
                                    <input type="email" name="email" value="<%=email %>" placeholder="" readonly>
                                </div>
                            </div>
                            <div class="form-group col-lg-12 col-md-12 col-sm-12">
                                <div class="f-label">Phone Number</div>
                                <div class="field-inner">
                                    <input type="text" name="phone" value="<%=phone %>" placeholder="" readonly>
                                </div>
                            </div>
                            <div class="form-group col-lg-12 col-md-12 col-sm-12">
                                <div class="f-label">UserName</div>
                                <div class="field-inner">
                                    <input type="text" name="userName" value="<%=username %>" placeholder="" >
                                </div>
                            </div>                                                                                          
                            <div class="form-button full-width">
                                <button id="submit" type="submit" class="ibtn btn-forget">Conform</button>
                            </div>
                        </form>
                    </div>  
                </div>
            </div>
        </div>
    </div>

</body>

<!-- Mirrored from brandio.io/envato/iofrm/html/forget12.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 13 Oct 2023 08:59:28 GMT -->
</html>