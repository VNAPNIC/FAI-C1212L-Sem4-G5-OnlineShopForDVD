<%-- 
    Document   : login.jsp
    Created on : Aug 23, 2015, 11:41:48 AM
    Author     : hainam1421
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html >
    <head>
        <meta charset="UTF-8">
        <title>Login/Sign-In</title>


        <link rel="stylesheet" href="css/normalize.css">

        <link rel='stylesheet prefetch' href='http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css'>

        <link rel="stylesheet" href="css/style.css">




    </head>

    <body >

        <div class="logmod">
            <div class="logmod__wrapper">
                <span class="logmod__close">Close</span>
                <div class="logmod__container">
                    <ul class="logmod__tabs">
                        <li data-tabtar="lgm-2"><a href="#">Login</a></li>
                        <li data-tabtar="lgm-1"><a href="#">Sign Up</a></li>
                    </ul>
                    <div class="logmod__tab-wrapper">
                        <div class="logmod__tab lgm-1">

                            <div class="logmod__form">
                                <br/>
                                <br/>
                                <center>
                                    <s:form action="register" method="Post">
                                        <table>
                                            <tr><td>
                                                    <br/><s:textfield label="User" name="l.user"></s:textfield>
                                                    </td></tr>
                                                <tr><td>
                                                        <br/><s:password label="Password" name="l.pass"></s:password>
                                                    </td></tr>
                                                <tr><td>
                                                        <br/><s:textfield label="Name" name="ud.name"></s:textfield>
                                                    </td></tr>
                                                <tr><td>
                                                        <br/><s:textfield label="Address" name="ud.address"></s:textfield>
                                                    </td></tr>
                                                <tr><td>
                                                        <br/><s:textfield label="Phone" name="ud.phone"></s:textfield>
                                                    </td></tr>
                                                <tr><td>
                                                        <br/><s:textfield label="Email" name="ud.email"></s:textfield>
                                                    </td></tr>
                                                <tr><td>
                                                        <br/><s:textfield label="Birth of day" name="ud.bod"></s:textfield>
                                                    </td></tr>
                                                <tr><td>
                                                        <br/><s:textfield label="Identity Card" name="ud.identity_card"></s:textfield>
                                                    </td></tr>
                                                <tr><td> 
                                                        <br/><s:submit value="Register"></s:submit>
                                                    </td></tr>


                                            </table>



                                    </s:form>
                                </center>
                                <br/>
                                <br/>
                            </div> 

                        </div>
                        <div class="logmod__tab lgm-2">
                            <div class="logmod__form">
                                <br/>
                                <br/>
                                <center>
                                    <s:form action="login" method="Post">
                                        <table>
                                            <tr><td><s:label name="error"></s:label></td></tr>
                                            <tr><td>
                                                    <br/><s:textfield label="User" name="l.user"></s:textfield></td></tr>
                                                <tr><td>
                                                        <br/><s:password label="Password" name="l.pass"></s:password></td></tr>
                                                <tr><td> 
                                                        <br/><s:submit value="Login"></s:submit></td></tr>
                                            </table>
                                    </s:form>
                                </center>
                                <br/>
                                <br/>
                            </div> 
                        </div>
                        
                    </div>
                </div>
            </div>
        </div>
        <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

        <script src="js/index.js"></script>




    </body>
</html>
