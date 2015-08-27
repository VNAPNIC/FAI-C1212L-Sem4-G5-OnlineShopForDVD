<%-- 
    Document   : contact-us
    Created on : Aug 23, 2015, 11:45:48 AM
    Author     : hainam1421
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
    <%@include file="head.jsp" %>

    <body>
        <%@include file="header.jsp" %>

        <div id="contact-page" class="container">
            <div class="bg">
                <div class="row">    		

                    <div class="row">  	
                        <div class="col-sm-8">
                            <div class="contact-form">
                                <h2 class="title text-center">Get In Touch</h2>
                                <div class="status alert alert-success" style="display: none"></div>
                                <form id="main-contact-form" class="contact-form row" name="contact-form" method="post">
                                    <div class="form-group col-md-6">
                                        <input type="text" name="name" class="form-control" required="required" placeholder="Name">
                                    </div>
                                    <div class="form-group col-md-6">
                                        <input type="email" name="email" class="form-control" required="required" placeholder="Email">
                                    </div>
                                    <div class="form-group col-md-12">
                                        <input type="text" name="subject" class="form-control" required="required" placeholder="Subject">
                                    </div>
                                    <div class="form-group col-md-12">
                                        <textarea name="message" id="message" required="required" class="form-control" rows="8" placeholder="Your Message Here"></textarea>
                                    </div>                        
                                    <div class="form-group col-md-12">
                                        <input type="submit" name="submit" class="btn btn-primary pull-right" value="Submit">
                                    </div>
                                </form>
                            </div>
                        </div>
                        <div class="col-sm-4">
                            <div class="contact-info">
                                <h2 class="title text-center">Contact Info</h2>
                                <address>
                                    <p>Online shop DVD.</p>
                                    <p>Số 1 phạm văn đồng, cầu giấy, Hà nội</p>
                                    <p>Việt nam</p>
                                    <p>Mobile: +84 963190925</p>
                                    <p>Email: vn.apnic@gmail.com</p>
                                </address>

                            </div>
                        </div>    			
                    </div>  
                </div>	
            </div><!--/#contact-page-->

            <%@include file="footer.jsp" %>



            <script src="js/jquery.js"></script>
            <script src="js/bootstrap.min.js"></script>
            <script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=true"></script>
            <script type="text/javascript" src="js/gmaps.js"></script>
            <script src="js/contact.js"></script>
            <script src="js/price-range.js"></script>
            <script src="js/jquery.scrollUp.min.js"></script>
            <script src="js/jquery.prettyPhoto.js"></script>
            <script src="js/main.js"></script>
    </body>
</html>