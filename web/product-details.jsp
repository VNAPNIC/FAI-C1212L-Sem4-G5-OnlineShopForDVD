<%-- 
    Document   : product-details
    Created on : Aug 23, 2015, 11:46:22 AM
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
        <section>
            <div class="container">
                <div class="row">
                    <div class="col-sm-3">
                        <div class="left-sidebar">
                            <h2>Category</h2>
                            <div class="panel-group category-products" id="accordian"><!--category-productsr-->
                                <s:iterator value="categoriesList">
                                    <div class="panel panel-default">
                                        <div class="panel-heading">
                                            <h4 class="panel-title">
                                                <s:url action="Categories" var="url">
                                                    <s:param name="c_id">${c_id}</s:param>
                                                </s:url>
                                                <s:a href="%{url}"><s:text name="name" /></s:a>
                                                </h4>
                                            </div>
                                        </div>
                                </s:iterator>
                            </div><!--/category-products-->


                            <div class="shipping text-center"><!--shipping-->
                                <img src="images/home/shipping.jpg" alt="" />
                            </div><!--/shipping-->

                        </div>
                    </div>

                    <div class="col-sm-9 padding-right">
                        <div class="product-details"><!--product-details-->
                            <div class="col-sm-5">
                                <div class="view-product">
                                    <s:iterator value="productDetail">`
                                        <img src="<s:property value="img"/>" alt="" />
                                    </s:iterator>
                                </div>


                            </div>
                            <div class="col-sm-7">
                                <div class="product-information"><!--/product-information-->
                                    <s:iterator value="productDetail">
                                        <b><h1><s:property value="name"/></h1></b>
                                        <span>
                                            <span>$<s:property value="monney"/></span>
                                            <s:url action="AddCar" var="addcar">
                                                <s:param name="id">${p_id}</s:param>
                                            </s:url>

                                            <s:a href="%{addcar}" cssClass="btn btn-fefault cart" >
                                                <i class="fa fa-shopping-cart"></i>
                                                Add to cart
                                            </s:a>
                                        </span>
                                        <p><b>Description:</b> <s:property value="description"/></p>
                                        <p><b>Brand:</b> DVD-SHOPPER</p>
                                        <a href=""><img src="images/product-details/share.png" class="share img-responsive"  alt="" /></a>

                                    </s:iterator>
                                </div><!--/product-information-->
                            </div>
                        </div><!--/product-details-->
                        <div style="padding-left: 2%;">
                            <hr />
                            <s:iterator value="productDetail">
                                <h2 style="color: #FE980F;">Trailer film: <s:property value="name"/></h2>
                                <p><b>Description:</b> <s:property value="description"/></p>
                                <br />
                                <iframe width="560" height="315" src="<s:property value="url"/>" frameborder="0" allowfullscreen></iframe>
                            </s:iterator>
                            <br/>
                            <br/>
                            <br/>
                        </div>
                        <div class="recommended_items"><!--recommended_items-->
                            <h2 class="title text-center">recommended items</h2>

                            <div id="recommended-item-carousel" class="carousel slide" data-ride="carousel">
                                <div class="carousel-inner">
                                    <div class="item active">
                                        <s:iterator value="products">
                                            <div class="col-sm-4">
                                                <div class="product-image-wrapper">
                                                    <div class="single-products">
                                                        <div class="productinfo text-center">
                                                            <img height="200px"  src="<s:property value="img"/>" alt="" />
                                                            <h2>$<s:property value="monney" /></h2>
                                                            <s:url action="Details" var="detail">
                                                                <s:param name="id">${p_id}</s:param>
                                                                <s:param name="idct">${c_id}</s:param>
                                                            </s:url>
                                                            <s:a href="%{detail}" cssClass="btn btn-default add-to-cart fa fa-shopping-cart"><i class="fa fa-shopping-cart"></i>View Details</s:a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                        </s:iterator>
                                    </div>
                                    <div class="item">	
                                        <s:iterator value="products">
                                            <div class="col-sm-4">
                                                <div class="product-image-wrapper">
                                                    <div class="single-products">
                                                        <div class="productinfo text-center">
                                                            <img height="200px"  src="<s:property value="img"/>" alt="" />
                                                            <h2>$<s:property value="monney" /></h2>
                                                            <s:url action="Details" var="detail">
                                                                <s:param name="id">${p_id}</s:param>
                                                                <s:param name="idct">${c_id}</s:param>
                                                            </s:url>
                                                            <s:a href="%{detail}" cssClass="btn btn-default add-to-cart fa fa-shopping-cart"><i class="fa fa-shopping-cart"></i>Add to cart</s:a>

                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                        </s:iterator>
                                    </div>
                                </div>
                                <a class="left recommended-item-control" href="#recommended-item-carousel" data-slide="prev">
                                    <i class="fa fa-angle-left"></i>
                                </a>
                                <a class="right recommended-item-control" href="#recommended-item-carousel" data-slide="next">
                                    <i class="fa fa-angle-right"></i>
                                </a>			
                            </div>
                        </div><!--/recommended_items-->

                    </div>
                </div>
            </div>
        </section>

        <%@include file="footer.jsp" %>



        <script src="js/jquery.js"></script>
        <script src="js/price-range.js"></script>
        <script src="js/jquery.scrollUp.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/jquery.prettyPhoto.js"></script>
        <script src="js/main.js"></script>
    </body>
</html>