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
                        <s:if test="#session.login == null">
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
                            <div class="col-sm-2">

                            </div>
                            <div class="col-sm-5">
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


                            <div class="col-sm-4">
                                <div class="order-message">

                                    <p>Receiver</p>
                                    <s:form action="toCar">
                                        <table>
                                            <tr>

                                                <td> <s:textfield label="Name receiver" type="text" placeholder="Name" name="nameShip"></s:textfield></td>
                                                </tr>
                                                <tr>

                                                    <td><s:textfield type="text" label="Address receiver" placeholder="Address" name="addressShip"></s:textfield></td>
                                                </tr>
                                                <tr>

                                                    <td> <s:textfield type="number" label="Phone receiver" placeholder="Phone" name="phoShip" ></s:textfield></td>
                                                </tr>
                                                <tr>
                                                    <td> 
                                                    <s:submit cssClass="btn btn-primary" value="Check Out"></s:submit>
                                                    </td>
                                                </tr>
                                            </table>
                                    </s:form>
                                </div>	
                            </div>					
                        </div>
                    </div>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <s:url action="CheckOut" var="cancelorders">
                        <s:param name="active">cancelorders</s:param>
                    </s:url>
                    <s:a cssClass="btn btn-primary" href="%{cancelorders}">Cancel Orders</s:a>
                </s:else>

                <div class="review-payment">

                    <hr />
                    <h2>Review & Payment</h2>
                </div>

                <div class="table-responsive cart_info">
                    <table class="table table-condensed">
                        <thead>
                            <tr class="cart_menu">
                                <td class="image">Item</td>
                                <td class="description">Description</td>
                                <td class="price">Price</td>
                                <td class="quantity">Quantity</td>
                                <td class="total">Total</td>
                            </tr>
                        </thead>
                        <tbody>
                            <s:if test="#session.car != null">    
                                <s:iterator value="#session.car" status="stat" var="ride">

                                    <tr>
                                        <td class="cart_product" style="margin-right: 10%;">
                                            <a href=""><img height="150" width="100" src="<s:property value="products.img"/>" alt="" /></a>
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
                                               
                                                <input readonly class="cart_quantity_input" type="text" name="quantity" value="<s:property value="number"/>" autocomplete="off" size="2">
                                             
                                                </div>
                                            </td>
                                            <td class="cart_total">
                                                <p class="cart_total_price">$<s:property value="price"/></p>
                                        </td>
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