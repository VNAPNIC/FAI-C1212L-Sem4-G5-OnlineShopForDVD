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
                        <c:choose> 
                            <c:when test="${empty sessionScope['login']}">
                                <li><%
                                    response.sendRedirect("login.jsp");
                                    %> </li>
                                </c:when>
                                <c:otherwise>
                                <li><a href="home.jsp">Home</a></li>
                                </c:otherwise>
                            </c:choose>
                        <li class="active">Check out</li>
                    </ol>
                </div><!--/breadcrums-->

                <div class="step-one">
                    <h2 class="heading">Step1</h2>
                </div>
                <div class="checkout-options">
                    <h3>New User</h3>
                    <p>Checkout options</p>
                    <ul class="nav">
                        <li>
                            <label><input type="checkbox"> Register Account</label>
                        </li>
                        <li>
                            <label><input type="checkbox"> Guest Checkout</label>
                        </li>
                        <li>
                            <a href=""><i class="fa fa-times"></i>Cancel</a>
                        </li>
                    </ul>
                </div><!--/checkout-options-->

                <div class="register-req">
                    <p>Please use Register And Checkout to easily get access to your order history, or use Checkout as Guest</p>
                </div><!--/register-req-->

                <div class="shopper-informations">
                    <div class="row">
                        <div class="col-sm-3">
                            <div class="shopper-info">
                                <p>Shopper Information</p>
                                <form>
                                    <input type="text" placeholder="Display Name">
                                    <input type="text" placeholder="User Name">
                                    <input type="password" placeholder="Password">
                                    <input type="password" placeholder="Confirm password">
                                </form>
                                <a class="btn btn-primary" href="">Get Quotes</a>
                                <a class="btn btn-primary" href="">Continue</a>
                            </div>
                        </div>
                        <div class="col-sm-5 clearfix">
                            <div class="bill-to">
                                <p>Bill To</p>
                                <div class="form-one">
                                    <form>
                                        <input type="text" placeholder="Company Name">
                                        <input type="text" placeholder="Email*">
                                        <input type="text" placeholder="Title">
                                        <input type="text" placeholder="First Name *">
                                        <input type="text" placeholder="Middle Name">
                                        <input type="text" placeholder="Last Name *">
                                        <input type="text" placeholder="Address 1 *">
                                        <input type="text" placeholder="Address 2">
                                    </form>
                                </div>
                                <div class="form-two">
                                    <form>
                                        <input type="text" placeholder="Zip / Postal Code *">
                                        <select>
                                            <option>-- Country --</option>
                                            <option>United States</option>
                                            <option>Bangladesh</option>
                                            <option>UK</option>
                                            <option>India</option>
                                            <option>Pakistan</option>
                                            <option>Ucrane</option>
                                            <option>Canada</option>
                                            <option>Dubai</option>
                                        </select>
                                        <select>
                                            <option>-- State / Province / Region --</option>
                                            <option>United States</option>
                                            <option>Bangladesh</option>
                                            <option>UK</option>
                                            <option>India</option>
                                            <option>Pakistan</option>
                                            <option>Ucrane</option>
                                            <option>Canada</option>
                                            <option>Dubai</option>
                                        </select>
                                        <input type="password" placeholder="Confirm password">
                                        <input type="text" placeholder="Phone *">
                                        <input type="text" placeholder="Mobile Phone">
                                        <input type="text" placeholder="Fax">
                                    </form>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-4">
                            <div class="order-message">
                                <p>Shipping Order</p>
                                <textarea name="message"  placeholder="Notes about your order, Special Notes for Delivery" rows="16"></textarea>
                                <label><input type="checkbox"> Shipping to bill address</label>
                            </div>	
                        </div>					
                    </div>
                </div>
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
                                            <s:url action="Quantity" var="down">
                                                <s:param name="id">${products.p_id}</s:param>
                                                <s:param name="active">down</s:param>
                                            </s:url>
                                            <s:url action="Quantity" var="up">
                                                <s:param name="id">${products.p_id}</s:param>
                                                <s:param name="active">up</s:param>
                                            </s:url>

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
                                            <s:url action="Quantity" var="remove">
                                                <s:param name="id">${products.p_id}</s:param>
                                                <s:param name="active">remove</s:param>
                                            </s:url>
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