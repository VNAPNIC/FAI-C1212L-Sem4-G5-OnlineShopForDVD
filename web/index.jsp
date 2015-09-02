<%-- 
    Document   : index
    Created on : Aug 16, 2015, 11:28:16 PM
    Author     : hainam1421
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <%@include file="head.jsp" %>

    <body>
        <%@include file="header.jsp" %>

        <section id="slider"><!--slider-->
            <div class="container">
                <div class="row">
                    <div class="col-sm-12">
                        <div id="slider-carousel" class="carousel slide" data-ride="carousel">
                            <ol class="carousel-indicators">
                                <li data-target="#slider-carousel" data-slide-to="0" class="active"></li>
                                <li data-target="#slider-carousel" data-slide-to="1"></li>
                            </ol>

                            <div class="carousel-inner">

                                <div class="item active">

                                    <div class="col-sm-12">
                                        <img src="images/home/film-banner.jpg" class="girl img-responsive" alt="" />
                                    </div>
                                </div>

                                <div class="item">

                                    <div class="col-sm-12">
                                        <img src="images/home/wu3ytu69n3p6gqfah7p7.jpg" class="girl img-responsive" alt="" />
                                    </div>
                                </div>

                            </div>

                            <a href="#slider-carousel" class="left control-carousel hidden-xs" data-slide="prev">
                                <i class="fa fa-angle-left"></i>
                            </a>
                            <a href="#slider-carousel" class="right control-carousel hidden-xs" data-slide="next">
                                <i class="fa fa-angle-right"></i>
                            </a>
                        </div>

                    </div>
                </div>
            </div>
        </section><!--/slider-->

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
                            <div class="text-center" ><!--shipping-->
                                <h2>Hot Products</h2>
                                <s:iterator value="products">
                                    <div class="panel panel-default">
                                        <s:url action="Details" var="d">
                                            <s:param name="id">${p_id}</s:param>
                                            <s:param name="idct">${c_id}</s:param>
                                        </s:url>
                                        <s:a href="%{d}"><img style="margin: 5%;" height="200px" width="150px" src="<s:property value="img"/>" alt="" /></s:a>
                                        <h2 style="margin: 5%;"><s:property value="monney"/>$</h2>
                                        <p><s:property value="name"/></p>
                                    </div>

                                </s:iterator>
                            </div><!--/shipping-->

                        </div>
                    </div>
                    <div class="col-sm-9 padding-right">
                        <div class="features_items"><!--features_items-->
                            <h2 class="title text-center">PRODUCTS</h2>
                            <s:iterator value="productList">
                                <div class="col-sm-4">
                                    <div class="product-image-wrapper">
                                        <div class="single-products">
                                            <div class="productinfo text-center">
                                                <img height="300px" width="240px" src="<s:property value="img"/>" alt="" />
                                                <h2><s:property value="monney"/>$</h2>
                                                <p><s:property value="name"/></p>
                                            </div>
                                            <div class="product-overlay">
                                                <div class="overlay-content">
                                                    <p><s:property value="description"/></p>
                                                    <s:url action="Details" var="detail">
                                                        <s:param name="id">${p_id}</s:param>
                                                        <s:param name="idct">${c_id}</s:param>
                                                    </s:url>
                                                    <s:a href="%{detail}" cssClass="btn btn-default add-to-cart">View Details</s:a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                            </s:iterator>
                        </div>
                        <!--features_items-->
                    </div>
                </div>
            </div>
        </section>

        <%@include file="footer.jsp" %>


        <script src="js/jquery.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/jquery.scrollUp.min.js"></script>
        <script src="js/price-range.js"></script>
        <script src="js/jquery.prettyPhoto.js"></script>
        <script src="js/main.js"></script>
    </body></html>
