<%-- 
    Document   : checkout.jsp
    Created on : Aug 23, 2015, 11:44:29 AM
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

        <section id="cart_items">
            <div class="container">
                <div class="breadcrumbs">
                    <ol class="breadcrumb">
                        <s:if test="#session.car == null || #session.login == null">
                            <p><h1>Please sign in to make a payment -> &nbsp;&nbsp;&nbsp;<a href="login.jsp"><li class="fa fa-lock"></li> Sign in</a></h1></p>
                                    </s:if>
                                    <s:else>
                            <li><a href="home.jsp">Home</a></li>
                            <li class="active">Check out</li>
                        </ol>
                    </div><!--/breadcrums-->

                    <div class="register-req">
                        <p>Note that if you send to others in the house of information, not the empty</p>
                    </div><!--/register-req-->

                    <div class="shopper-informations">
                        <div class="row">
                            <div class="col-sm-3">
                                <div class="shopper-info">
                                    <p>Receiver</p>
                                    <form>
                                        <s:textfield type="text" placeholder="Name"></s:textfield>
                                        </form>
                                    <s:url action="CheckOut" var="cancelorders">
                                        <s:param name="active">cancelorders</s:param>
                                    </s:url>
                                    <s:a cssClass="btn btn-primary" href="%{cancelorders}">Cancel Orders</s:a>

                                    <s:url action="CheckOut" var="checkout">
                                        <s:param name="active">checkout</s:param>
                                    </s:url>    
                                    <s:a cssClass="btn btn-primary" href="%{checkout}">Check Out</s:a>
                                    </div>
                                </div>

                                <div class="col-sm-5 clearfix">

                                    <div class="bill-to">
                                        <p>&nbsp;</p>
                                        <div class="form-one">
                                            <form>
                                            <s:textfield type="text" placeholder="Address"></s:textfield>
                                            </form>
                                        </div>
                                        <div class="form-two">
                                            <form>
                                            <s:textfield type="number" placeholder="Phone" ></s:textfield>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-4">
                                    <div class="order-message">
                                        <p>Account</p>
                                        <table>
                                        <s:iterator value="ud">
                                            <tr>
                                                <td><b>Name:</b> </td>
                                                <td><s:property value="name"></s:property></td>
                                                </tr>
                                                <tr>
                                                    <td><b>phone:</b></td>
                                                    <td><s:property value="phone"></s:property></td>
                                                </tr>
                                                <tr>
                                                    <td><b>address:</b></td>
                                                    <td><s:property value="address"></s:property></td>
                                                </tr>
                                                <tr>
                                                    <td><b>bod:</b></td>
                                                    <td><s:property value="bod"></s:property></td>
                                                </tr>
                                                <tr>
                                                    <td><b>email:</b></td>
                                                    <td><s:property value="email"></s:property></td>
                                                </tr>
                                                <tr>
                                                    <td><b>identity_card: &nbsp;&nbsp;&nbsp;</b></td>
                                                    <td><s:property value="identity_card"></s:property></td>
                                                </tr>
                                        </s:iterator>
                                    </table>
                                </div>	
                            </div>					
                        </div>
                    </div>
                </s:else>

                <div class="review-payment">
                    <h2>Review & Payment</h2>
                </div>

                <div class="table-responsive cart_info">
                    <table class="table table-condensed">
                        <thead>
                            <tr class="cart_menu">
                                <td class="image">Item</td>
                                <td class="description"></td>
                                <td class="price">Price</td>
                                <td class="quantity">Quantity</td>
                                <td class="total">Total</td>
                                <td></td>
                            </tr>
                        </thead>
                        <tbody>
                            <s:if test="#session.car != null">    
                                <s:iterator value="#session.car" status="stat" var="ride">

                                    <tr>
                                        <td class="cart_product">
                                            <a href=""><img src="<s:property value="products.img"/>" alt="" /></a>
                                        </td>
                                        <td class="cart_description">
                                            <h4><a href=""><s:property value="products.name"/></a></h4>
                                            <p>Web ID: <s:property value="q_id"/></p>
                                        </td>
                                        <td class="cart_price">
                                            <p>$<s:property value="products.monney"/></p>
                                        </td>
                                        <td class="cart_quantity">
                                            <div class="cart_quantity_button">
                                                <s:a cssClass="cart_quantity_up" href="#"> + </s:a>
                                                <input readonly class="cart_quantity_input" type="text" name="quantity" value="<s:property value="number"/>" autocomplete="off" size="2">
                                                <s:a cssClass="cart_quantity_down" href="#"> - </s:a >
                                                </div>
                                            </td>
                                            <td class="cart_total">
                                                <p class="cart_total_price">$<s:property value="price"/></p>
                                        </td>
                                        <td class="cart_delete">
                                            <s:a cssClass="cart_quantity_delete" href="#"><i class="fa fa-times"></i></s:a>
                                            </td>
                                        </tr>
                                </s:iterator>
                            </s:if> 
                            <s:else>
                                <tr>
                                    <td class="cart_product">

                                    </td>
                                    <td class="cart_description">

                                    </td>
                                    <td class="cart_price">

                                    </td>
                                    <td class="cart_quantity">

                                    </td>
                                    <td class="cart_total">

                                    </td>
                                    <td class="cart_delete">

                                    </td>
                                </tr>
                            </s:else>

                        </tbody>
                    </table>
                </div>

            </div>
        </section> <!--/#cart_items-->


        <%@include file="footer.jsp" %>


        <script src="js/jquery.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/jquery.scrollUp.min.js"></script>
        <script src="js/jquery.prettyPhoto.js"></script>
        <script src="js/main.js"></script>
    </body>
</html>