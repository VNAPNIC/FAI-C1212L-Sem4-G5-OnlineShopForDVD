<%-- 
    Document   : register
    Created on : Aug 26, 2015, 2:40:49 PM
    Author     : hainam1421
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html >
    <head>
        <meta charset="UTF-8">
        <title>Calm breeze login screen</title>

        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/font-awesome.min.css" rel="stylesheet">
        <link href="css/main.css" rel="stylesheet">
        <link href="css/responsive.css" rel="stylesheet">
        <!--[if lt IE 9]>
        <script src="js/html5shiv.js"></script>
        <script src="js/respond.min.js"></script>
        <![endif]-->       
        <link rel="shortcut icon" href="images/ico/favicon.ico">
        <link rel="apple-touch-icon-precomposed" sizes="144x144" href="images/ico/apple-touch-icon-144-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="114x114" href="images/ico/apple-touch-icon-114-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="72x72" href="images/ico/apple-touch-icon-72-precomposed.png">
        <link rel="apple-touch-icon-precomposed" href="images/ico/apple-touch-icon-57-precomposed.png">
        <link rel="stylesheet" href="css/style.css">

    </head>

    <body>
        <%@include file="headerLR.jsp" %>
         

        <section>
            <div class="wrapper">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-12">
                           <h1>SIGN UP</h1>
                            <Center>
                                <s:form cssClass="form" action="rslogin" method="Post">
                                    <table>
                                        <td><tr><s:textfield name="ruser" placeholder="Username"></s:textfield></tr></td>
                                        <td><tr><s:password name="rpass" placeholder="Password"></s:password></tr></td>
                                        <td><tr> <s:submit id="login-button"  value="Sign up" ></s:submit></tr></td>
                                        <td><tr><s:label name="rerror"></s:label></tr></td>
                                        </table>
                                </s:form>

                            </Center>
                            <ul class="bg-bubbles">
                                <li></li>
                                <li></li>
                                <li></li>
                                <li></li>
                                <li></li>
                                <li></li>
                                <li></li>
                                <li></li>
                                <li></li>
                                <li></li>
                            </ul>

                        </div>
                    </div>
                </div>
        </section>
        <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

        <script src="js/index.js"></script>




    </body>
</html>

