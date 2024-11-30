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
                        <h3>Create Acc</h3>
                        <p>To reset your password, enter the email address you use to sign in to iofrm</p>
                       
						<form method="post" action="insert2">
                        <div class="row clearfix">
                             
                                                 
                            <div class="form-group col-lg-12 col-md-12 col-sm-12">
                                <div class="f-label"> Name </div>
                                <div class="field-inner">
                                    <input type="text" name="name" value="" placeholder="" >
                                </div>
                            </div>
                            <div class="form-group col-lg-12 col-md-12 col-sm-12">
                                <div class="f-label"> NIC </div>
                                <div class="field-inner">
                                    <input type="text" name="nic" value="" placeholder="" >
                                </div>
                            </div>
                            <div class="form-group col-lg-12 col-md-12 col-sm-12">
                                <div class="f-label">Email Address </div>
                                <div class="field-inner">
                                    <input type="email" name="email" value="" placeholder="" >
                                </div>
                            </div>
                            <div class="form-group col-lg-12 col-md-12 col-sm-12">
                                <div class="f-label">Phone Number</div>
                                <div class="field-inner">
                                    <input type="text" name="phone" value="" placeholder="" >
                                </div>
                            </div>
                            <div class="form-group col-lg-12 col-md-12 col-sm-12">
                                <div class="f-label">Country</div>
                                <div class="field-inner">
                                    <input type="text" name="country" value="" placeholder="" >
                                </div>
                            </div>
                            <div class="form-group col-lg-12 col-md-12 col-sm-12">
                                <div class="f-label">UserName</div>
                                <div class="field-inner">
                                    <input type="text" name="username" value="" placeholder="" >
                                </div>
                            </div>
                            
                             <div class="form-group col-lg-12 col-md-12 col-sm-12">
                                <div class="f-label">Password</div>
                                <div class="field-inner">
                                    <input type="password" name="password" value="" placeholder="" >
                                </div>
                            </div>                           
                            
                            <div class="form-button full-width">
                                <button id="submit" type="submit" class="ibtn btn-forget">CREATE</button>
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