<%-- 
    Document   : LoginAdmin
    Created on : Aug 16, 2015, 11:29:29 PM
    Author     : hainam1421
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Admin Login</title>
        <!-- Bootstrap -->
        <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen">
        <link href="bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet" media="screen">
        <link href="assets/styles.css" rel="stylesheet" media="screen">
        <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
        <!--[if lt IE 9]>
          <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->
        <script src="js/vendor/modernizr-2.6.2-respond-1.1.0.min.js"></script>
    </head>
    <body id="login">
          <c:choose> 
                                <c:when test="${!empty sessionScope['loginad']}">
                                    <li><%
                                        response.sendRedirect("mainadmin.jsp");
                                        %> </li>
                                </c:when>
                                <c:otherwise>
                                </c:otherwise>
                            </c:choose>

        <div class="container">
            <s:form cssClass="form-signin" action="adlogin" method="Post">
                <h2 class="form-signin-heading">Please sign in</h2>
                <s:textfield name="la.user" placeholder="Username" ></s:textfield>
                <s:password name="la.pass"  placeholder="Password"></s:password>
                <s:submit cssClass="btn btn-large btn-primary"  value="Sign in" ></s:submit>
                <s:label name="adError"></s:label>
            </s:form>

        </div> <!-- /container -->

        <script src="vendors/jquery-1.9.1.min.js"></script>
        <script src="bootstrap/js/bootstrap.min.js"></script>
    </body>
</html>
