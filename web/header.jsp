<%-- 
    Document   : header
    Created on : Aug 27, 2015, 4:24:16 PM
    Author     : hainam1421
--%>

<header id="header"><!--header-->
    <div class="header_top"><!--header_top-->
        <div class="container">
            <div class="row">
                <div class="col-sm-6">
                    <div class="contactinfo">
                        <ul class="nav nav-pills">
                            <li><a href="#"><i class="fa fa-phone"></i> +84 9888888</a></li>
                            <li><a href="#"><i class="fa fa-envelope"></i> DVD-shopper.contact@gmail.com</a></li>
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
                <div class="col-sm-3">
                    <div class="logo pull-left">
                        <div class="companyinfo">
                            <h2><span>DVD</span>-shopper</h2>

                        </div>
                    </div>
                </div>
                <div class="col-sm-12">
                    <div class="shop-menu pull-right">
                        <ul class="nav navbar-nav">
                            <li><a href="home.jsp" class="active"><i class="fa fa-home"> Home</i></a></li>
                            <li><a href="contact-us.jsp"><i class="fa fa-comment"> Contact</i></a></li>
                            <li><a href="#"><i class="fa fa-user"></i> Account</a></li>
                            <li><a href="cart.jsp"><i class="fa fa-shopping-cart"></i> Cart</a></li>

                            <c:choose> 
                                <c:when test="${!empty sessionScope['login']}">

                                    <li ><a href="#"><i class="fa fa-user">&nbsp;Hello: ${sessionScope.login} </i> </a></li>
                                    <li>
                                    <s:url action="logout.action" var="urlTag" >
                                        <s:param name="lo">1</s:param>
                                    </s:url>
                                    <s:a href="%{urlTag}"><i class="fa fa-unlock">&nbsp;Logout</i></s:a>
                                    </li>

                                </c:when>
                                <c:otherwise>
                                    <li><a href="login.jsp"><i class="fa fa-lock"></i> Login</a></li>
                                </c:otherwise>
                            </c:choose>

                        </ul>
                    </div>

                </div>

                <div class="search_box pull-right" style="margin-top: 2%;">
                    <section>
                        <s:form action="Search" cssStyle="float:right;">
                            <s:textfield id="tags" name="txtSearch" placeholder="Search" cssClass="tb5"></s:textfield>
                        </s:form>
                    </section>
                </div>

            </div>
        </div>
    </div><!--/header-middle-->


    <div class="header-bottom"><!--header-bottom-->
        <div class="container">
            <div class="row">
                <div class="col-sm-9">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                    </div>
                    <div class="mainmenu pull-left">
                        <ul class="nav navbar-nav collapse navbar-collapse">

                        </ul>
                    </div>
                </div>

            </div>
        </div>
    </div><!--/header-bottom-->
</header><!--/header-->