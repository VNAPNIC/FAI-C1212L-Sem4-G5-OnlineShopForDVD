<%-- 
    Document   : headerLR
    Created on : Aug 27, 2015, 4:45:11 PM
    Author     : hainam1421
--%>


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
                <div class="col-sm-12">
                    <div class="shop-menu pull-right">
                        <ul class="nav navbar-nav">
                            <li><a href="index.jsp" class="active"><i class="fa fa-home"> Home</i></a></li>
                            <li><a href="contact-us.jsp"><i class="fa fa-comment"> Contact</i></a></li>
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
</header><!--/header-->