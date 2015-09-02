<%-- 
    Document   : cart.jsp
    Created on : Aug 23, 2015, 11:43:57 AM
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
                        <li><a href="home.jsp">Home</a></li>
                        <li class="active">Shopping Cart</li>
                    </ol>
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
                                <td>Remove</td>
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
                                            <s:url action="Quantity" var="down">
                                                <s:param name="id">${products.p_id}</s:param>
                                                <s:param name="active">down</s:param>
                                            </s:url>
                                            <s:url action="Quantity" var="up">
                                                <s:param name="id">${products.p_id}</s:param>
                                                <s:param name="active">up</s:param>
                                            </s:url>

                                            <div class="cart_quantity_button">
                                                <s:a cssClass="cart_quantity_up" href="%{up}"> + </s:a>
                                                <input readonly class="cart_quantity_input" type="text" name="quantity" value="<s:property value="number"/>" autocomplete="off" size="2">
                                                <s:a cssClass="cart_quantity_down" href="%{down}"> - </s:a >
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
                                            <s:a cssClass="cart_quantity_delete" href="%{remove}"><i class="fa fa-times"></i></s:a>
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

        <section id="do_action">
            <div class="container">
                <div class="row" >

                    <div class="col-sm-6" style="float: right;">
                            <div class="total_area">

                                <ul>
                                    <li>Shipping Cost <span>Free</span></li>
                                        <s:if test="#session.total != null"> 
                                        <li>Total <span>$<s:property value="#session.total"></s:property></span></li>
                                        </s:if>
                                        <s:else>
                                        <li>Total <span>$0</span></li>
                                        </s:else>
                                </ul>

                                <s:url action="CheckOut" var="mco">
                                    <s:param name="active">mco</s:param>
                                </s:url>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <s:a cssClass="btn btn-default check_out" href="%{mco}">Check Out</s:a>
                                </div>
                            </div>
                    </div>
                </div>
            </section><!--/#do_action-->

        <%@include file="footer.jsp" %>



        <script src="js/jquery.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/jquery.scrollUp.min.js"></script>
        <script src="js/jquery.prettyPhoto.js"></script>
        <script src="js/main.js"></script>
    </body>
</html>
