<%-- 
    Document   : testData
    Created on : Sep 1, 2015, 9:04:28 PM
    Author     : hainam1421
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <s:iterator value="item">
            <s:property value="ho_id"></s:property>
            <s:property value="user"></s:property>
            <s:property value="amount"></s:property>
            <s:property value="monney"></s:property>
            <s:property value="nameship"></s:property>
            <s:property value="addressship"></s:property>
            <s:property value="phoneship"></s:property>
            <s:property value="ship"></s:property>
        </s:iterator>
    </body>
</html>
