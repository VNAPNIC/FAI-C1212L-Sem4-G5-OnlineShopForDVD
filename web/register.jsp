<%-- 
    Document   : register
    Created on : Aug 26, 2015, 2:40:49 PM
    Author     : hainam1421
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html >
    <head>
        <meta charset="UTF-8">
        <title>Calm breeze login screen</title>




        <link rel="stylesheet" href="css/style.css">




    </head>

    <body>
        
        <header id="header"><!--header-->
            <div class="header_top"><!--header_top-->
                <div class="container">
                    <div class="row">
                        <div class="col-sm-6">
                            <div class="contactinfo">
                                <ul class="nav nav-pills">
                                    <li><a href="#"><i class="fa fa-phone"></i> +84 963190925</a></li>
                                    <li><a href="#"><i class="fa fa-envelope"></i> nambh_a05320@fpt.aptech.ac.vn</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="social-icons pull-right">
                                <ul class="nav navbar-nav">
                                    <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                    <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                    <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                                    <li><a href="#"><i class="fa fa-dribbble"></i></a></li>
                                    <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div><!--/header_top-->

            <div class="header-middle"><!--header-middle-->
                <div class="container">
                    <div class="row">
                        <div class="col-sm-2">
                            <div class="logo pull-left">
                                <div class="companyinfo">
                                    <h2><span>e</span>-shopper</h2>

                                </div>
                            </div>
                        </div>
                        <div class="col-sm-11">
                            <div class="shop-menu pull-right">
                                <ul class="nav navbar-nav">
                                    <li><a href="#"><i class="fa fa-user"></i> Account</a></li>
                                    <li><a href="checkout.jsp"><i class="fa fa-crosshairs"></i> Checkout</a></li>
                                    <li><a href="cart.jsp"><i class="fa fa-shopping-cart"></i> Cart</a></li>

                                    <c:choose> 
                                        <c:when test="${!empty sessionScope['login']}">
                                            <li><%
                                                response.sendRedirect("index.jsp");
                                                %> </li>
                                            </c:when>
                                            <c:otherwise>
                                            <li><a href="login.jsp"><i class="fa fa-lock"></i> Login</a></li>
                                            </c:otherwise>
                                        </c:choose>

                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div><!--/header-middle-->

        <div class="wrapper">
            <div class="container">
                <h1>SIGN UP</h1>
                <Center>
                    <s:set name="resultRS" value="rs"></s:set>
                    <s:if test="%{#resultRS == 'success'}">
                        <s:form cssClass="form" action="rsud" method="Post">
                            <table>
                                <td><tr><s:textfield name="ud.name" placeholder="Name"></s:textfield></tr></td>
                                <td><tr><s:textfield name="ud.address" placeholder="Address"></s:textfield></tr></td>
                                <td><tr><s:textfield name="ud.phone" type="number" placeholder="Phone"></s:textfield></tr></td>
                                <td><tr><s:textfield name="ud.email" placeholder="Email"></s:textfield></tr></td>
                                <td><tr><s:textfield name="ud.bod" type="date"></s:textfield></tr></td>
                                <td><tr><s:textfield name="identityCard"  placeholder="Identity Card"></s:textfield></tr></td>
                                <td><tr> <s:submit id="login-button"  value="Sign up" ></s:submit></tr></td>
                                <td><tr><s:label name="error"></s:label></tr></td>
                                </table>
                        </s:form>
                    </s:if>
                    <s:else>
                        <s:form cssClass="form" action="rsl" method="Post">
                            <table>
                                <td><tr><s:textfield name="user" placeholder="Username"></s:textfield></tr></td>
                                <td><tr><s:password name="pass" placeholder="Password"></s:password></tr></td>
                                <td><tr> <s:submit id="login-button"  value="Sign up" ></s:submit></tr></td>
                                <td><tr><s:label name="error"></s:label></tr></td>
                                </table>
                        </s:form>
                    </s:else>
                </Center>

            </div>

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
        <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

        <script src="js/index.js"></script>




    </body>
</html>

