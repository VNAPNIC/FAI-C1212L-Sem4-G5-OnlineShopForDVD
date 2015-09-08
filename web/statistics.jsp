<%-- 
    Document   : statistics
    Created on : Sep 6, 2015, 8:59:29 PM
    Author     : hainam1421
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="headad.jsp" %>
    </head>
    <body>
        <%@include file="headerad.jsp" %>
        <div class="container-fluid">
            <div class="row-fluid">
                <%@include file="sidebarleftad.jsp" %>

                <!--/span-->
                <div class="span9" id="content">

                    <div class="row-fluid">
                        <!-- block -->
                        <div class="block">
                            <div class="navbar navbar-inner block-header">
                                <div class="muted pull-left">Statistics</div>
                                <div class="pull-right"><span class="badge badge-warning">View More</span>

                                </div>
                            </div>
                            <div class="block-content collapse in">
                                <div class="span6">
                                    <div class="chart-bottom-heading"><span style="padding: 2%;" class="label label-info"><h3>Page views</h3> <h1><s:property value="sumView" /></h1></span>

                                    </div>
                                </div>
                                <div class="span6">

                                    <div class="chart-bottom-heading"><span  style="padding: 2%;" class="label label-info"><h3>Total</h3><h1><s:property value="totalSUM" />$</h1></span>

                                    </div>
                                </div>

                            </div>
                        </div>
                        <!-- /block -->
                    </div>

                    <div class="row-fluid">
                        <!-- block -->
                        <div class="block">
                            <div class="navbar navbar-inner block-header">
                                <div class="muted pull-left">Orders Tables</div>
                            </div>
                            <div class="block-content collapse in">
                                <div class="span12">

                                    <table cellpadding="0" cellspacing="0" border="0" class="table table-striped table-bordered" id="example">
                                        <thead>
                                            <tr>
                                                <th>Date</th>
                                                <th>User</th>
                                                <th>Amount</th>
                                                <th>Ship</th>
                                                <th>Total</th>
                                                <th>Receiver name</th>
                                                <th>Receiver address</th>
                                                <th>Receiver phone</th>
                                                <th></th>
                                                <th></th>
                                                <th></th>

                                            </tr>
                                        </thead>
                                        <tbody>
                                            <s:iterator value="objs">
                                                <tr class="odd gradeX">
                                                    <td><s:property value="dateoder" /></td>
                                                    <td><s:property value="user" /></td>
                                                    <td><s:property value="amount" /></td>
                                                    <td><s:property value="ship" /></td>
                                                    <td><s:property value="monney" /></td>
                                                    <td><s:property value="nameship" /></td>
                                                    <td><s:property value="addressship" /></td>
                                                    <td><s:property value="phoneship" /></td>
                                                    <td class="center"> 
                                                        <s:url action="ViewOrderDetail" var="viewdt">
                                                            <s:param name="ho_id">${ho_id}</s:param>
                                                        </s:url>
                                                        <s:a href="%{viewdt}">View Detail</s:a>
                                                        </td>

                                                        <td  class="center">
                                                        <s:if test="active">
                                                            <b>Confirmed</b>
                                                        </s:if>
                                                        <s:else>
                                                            <s:url action="Confirm" var="cf">
                                                                <s:param name="ho_id">${ho_id}</s:param>
                                                            </s:url>
                                                            <s:a href="%{cf}">Confirm</s:a>
                                                        </s:else>
                                                    </td>

                                                    <td class="center">
                                                        <s:url action="removeOrderDetail" var="remove">
                                                            <s:param name="ho_id">${ho_id}</s:param>
                                                        </s:url>
                                                        <s:a href="%{remove}">Remove</s:a>
                                                        </td>
                                                    </tr>
                                            </s:iterator>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="row-fluid">
                        <!-- block -->
                        <div class="block">
                            <div class="navbar navbar-inner block-header">
                                <div class="muted pull-left">Order Detail Tables</div>
                            </div>
                            <div class="block-content collapse in">
                                <div class="span12">

                                    <table cellpadding="0" cellspacing="0" border="0" class="table table-striped table-bordered" id="example">
                                        <thead>
                                            <tr>
                                                <th>User</th>
                                                <th>Name</th>
                                                <th>Address</th>
                                                <th>Phone</th>
                                                <th>Email</th>
                                                <th>Product Name</th>
                                                <th>Amount</th>
                                                <th>Total</th>


                                            </tr>
                                        </thead>
                                        <tbody>
                                            <s:iterator value="quantitys">
                                                <tr class="odd gradeX">
                                                    <td><s:property value="ho.getUser()" /></td>
                                                    <td><s:property value="ud.getName()" /></td>
                                                    <td><s:property value="ud.getAddress()" /></td>
                                                    <td><s:property value="ud.getPhone()" /></td>
                                                    <td><s:property value="ud.getEmail()" /></td>
                                                    <td><s:property value="products.getName()" /></td>
                                                    <td><s:property value="number" /></td>
                                                    <td><s:property value="price" /></td>
                                                </tr>
                                            </s:iterator>
                                        </tbody>
                                    </table>

                                </div>
                            </div>
                            <!-- /block -->
                        </div>
                    </div>

                    <div class="row-fluid">
                        <!-- block -->
                        <div class="block">
                            <div class="navbar navbar-inner block-header">
                                <div class="muted pull-left">Bootstrap dataTables with Toolbar</div>
                            </div>
                            <div class="block-content collapse in">
                                <div class="span12">


                                    <table cellpadding="0" cellspacing="0" border="0" class="table table-striped table-bordered" id="example2">
                                        <thead>
                                            <tr>
                                                <th>Name</th>
                                                <th>money</th>
                                                <th>youtobe</th>
                                                <th>imges</th>
                                                <th>views</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <s:iterator value="managers">
                                                <tr class="odd gradeX">
                                                    <td><s:property value="p.name"/></td>
                                                    <td><s:property value="p.monney"/>$</td>
                                                    <td ><a href="<s:property value="p.url"/>"><s:property value="p.url"/></a></td>
                                                    <td class="center"><img width="50" height="100"  src="<s:property value="p.img"/>" alt="" /></td>
                                                    <td class="center"><s:property value="couunt"/> view</td>
                                                </tr>
                                            </s:iterator>
                                        </tbody>
                                    </table>

                                   
                                </div>
                            </div>
                        </div>
                        <!-- /block -->
                    </div>


                </div>
            </div>
            <hr>
            <footer>
                <p>&copy; G5</p>
            </footer>
        </div>
        <!--/.fluid-container-->

        <script src="vendors/jquery-1.9.1.js"></script>
        <script src="bootstrap/js/bootstrap.min.js"></script>
        <script src="vendors/datatables/js/jquery.dataTables.min.js"></script>


        <script src="assets/scripts.js"></script>
        <script src="assets/DT_bootstrap.js"></script>
        <script>
            $(function () {

            });
        </script>
    </body>
</html>
