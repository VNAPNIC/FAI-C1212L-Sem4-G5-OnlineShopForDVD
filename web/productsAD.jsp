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
                                <div class="muted pull-left">Products Tables</div>
                            </div>
                            <div class="block-content collapse in">
                                <div class="span12">

                                    <table cellpadding="0" cellspacing="0" border="0" class="table table-striped table-bordered" id="example">
                                        <thead>
                                            <tr>
                                                <th>Name</th>
                                                <th>Description</th>
                                                <th>Money</th>
                                                <th>Trailer</th>
                                                <th>Images</th>
                                                <th></th>
                                                <th></th>
                                                <th></th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <s:iterator value="objs">
                                                <tr class="odd gradeX">
                                                    <td><s:property value="name"/></td>
                                                    <td><s:text name="description" /></td>
                                                    <td><s:property value="monney"/>$</td>
                                                    <td ><a style="font-size: 11px;"  href="<s:property value="url"/>"><s:property value="url"/></a></td>
                                                    <td class="center"><img width="50" height="100"  src="<s:property value="img"/>" alt="" /></td>
                                                    <td  class="center">
                                                        <s:if test="active">
                                                            <s:url action="eventActivePD" var="at">
                                                                <s:param name="stt">1</s:param>
                                                                <s:param name="p_id">${p_id}</s:param>
                                                            </s:url>
                                                            <s:a href="%{at}" >Active</s:a>
                                                        </s:if>
                                                        <s:else>
                                                            <s:url action="eventActivePD" var="at">
                                                                <s:param name="stt">2</s:param>
                                                                <s:param name="p_id">${p_id}</s:param>
                                                            </s:url>
                                                            <s:a href="%{at}" style="color: black;" >Deactive</s:a>
                                                        </s:else>
                                                    </td>

                                                    <td class="center"> 
                                                        <s:url action="eventUpdatePD" var="edit">
                                                            <s:param name="p_id">${p_id}</s:param>
                                                        </s:url>
                                                        <s:a href="%{edit}">Edit</s:a>
                                                        </td>

                                                        <td class="center">
                                                        <s:url action="eventPD" var="remove">
                                                            <s:param name="p_id">${p_id}</s:param>
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
                                <div class="muted pull-left">Action Form</div>
                            </div>
                            <div class="block-content collapse in">
                                <div class="span12">
                                    <s:if test="updatestt">

                                        <s:form action="createPr" class="form-horizontal" enctype="multipart/form-data">
                                            <s:iterator value="pro">
                                                <fieldset>

                                                    <s:textfield value="name" placeholder="Product Name" name="p.name" cssClass="input-xlarge focused" id="focusedInput" type="text"  />

                                                    <s:textfield value="monney" placeholder="Money" type="number" name="p.monney"  min="0" max="9999" step="0.01" size="4" cssClass="input-xlarge focused"/>

                                                    <s:textfield value="c_id" placeholder="Category ID" name="p.c_id" type="number" cssClass="input-xlarge focused"/>

                                                    <s:textfield value="url" placeholder="embed: youtube" name="p.url" cssClass="input-xlarge focused" id="focusedInput" type="text"  />

                                                    <s:file value="img"  cssClass="input-file uniform_on" id="fileInput" type="file" name="inputFile"   
                                                            title="Choose File to Upload"  
                                                            accept="image/png,image/gif,video/*"   
                                                            />  

                                                    <s:textarea value="description" name="p.description" cssClass="input-xlarge textarea" placeholder="Enter text ..." style="width: 810px; height: 200px" />

                                                    <s:submit type="submit" cssClass="btn btn-primary" value="Save Chages"></s:submit>

                                                    </fieldset>
                                            </s:iterator>
                                        </s:form>

                                    </s:if>
                                    <s:else>
                                        <s:form action="createPr" class="form-horizontal" enctype="multipart/form-data">
                                            <fieldset>

                                                <s:textfield placeholder="Product Name" name="p.name" cssClass="input-xlarge focused" id="focusedInput" type="text" value="" />

                                                <s:textfield placeholder="Money" type="number" name="p.monney"  min="0" max="9999" step="0.01" size="4" cssClass="input-xlarge focused"/>

                                                <s:textfield placeholder="Category ID" name="p.c_id" type="number" cssClass="input-xlarge focused"/>

                                                <s:textfield placeholder="embed: youtube" name="p.url" cssClass="input-xlarge focused" id="focusedInput" type="text" value="" />

                                                <s:file  cssClass="input-file uniform_on" id="fileInput" type="file" name="inputFile"   
                                                         title="Choose File to Upload"  
                                                         accept="image/png,image/gif,video/*"   
                                                         />  

                                                <s:textarea name="p.description" cssClass="input-xlarge textarea" placeholder="Enter text ..." style="width: 810px; height: 200px" />

                                                <s:submit type="submit" cssClass="btn btn-primary" value="Save Chages"></s:submit>

                                                </fieldset>
                                        </s:form>
                                    </s:else>
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
        <link href="vendors/datepicker.css" rel="stylesheet" media="screen">
        <link href="vendors/uniform.default.css" rel="stylesheet" media="screen">
        <link href="vendors/chosen.min.css" rel="stylesheet" media="screen">

        <link href="vendors/wysiwyg/bootstrap-wysihtml5.css" rel="stylesheet" media="screen">
        <script src="vendors/jquery.uniform.min.js"></script>
        <script src="vendors/chosen.jquery.min.js"></script>
        <script src="vendors/bootstrap-datepicker.js"></script>

        <script src="vendors/wysiwyg/wysihtml5-0.3.0.js"></script>
        <script src="vendors/wysiwyg/bootstrap-wysihtml5.js"></script>

        <script src="vendors/wizard/jquery.bootstrap.wizard.min.js"></script>

        <script type="text/javascript" src="vendors/jquery-validation/dist/jquery.validate.min.js"></script>
        <script src="assets/form-validation.js"></script>

        <script>

            jQuery(document).ready(function () {
                FormValidation.init();
            });


            $(function () {
                $(".datepicker").datepicker();
                $(".uniform_on").uniform();
                $(".chzn-select").chosen();
                $('.textarea').wysihtml5();

                $('#rootwizard').bootstrapWizard({onTabShow: function (tab, navigation, index) {
                        var $total = navigation.find('li').length;
                        var $current = index + 1;
                        var $percent = ($current / $total) * 100;
                        $('#rootwizard').find('.bar').css({width: $percent + '%'});
                        // If it's the last tab then hide the last button and show the finish instead
                        if ($current >= $total) {
                            $('#rootwizard').find('.pager .next').hide();
                            $('#rootwizard').find('.pager .finish').show();
                            $('#rootwizard').find('.pager .finish').removeClass('disabled');
                        } else {
                            $('#rootwizard').find('.pager .next').show();
                            $('#rootwizard').find('.pager .finish').hide();
                        }
                    }});
                $('#rootwizard .finish').click(function () {
                    alert('Finished!, Starting over!');
                    $('#rootwizard').find("a[href*='tab1']").trigger('click');
                });
            });
        </script>
    </body>

</html>