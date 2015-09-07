
<div class="navbar navbar-fixed-top">
    <div class="navbar-inner">
        <div class="container-fluid">
            <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse"> <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </a>
            <a class="brand" href="#">Admin Panel</a>
            <div class="nav-collapse collapse">
                <c:choose> 
                    <c:when test="${!empty sessionScope['loginad']}">
                        <ul class="nav pull-right">
                            <li class="dropdown">
                                <a href="#" role="button" class="dropdown-toggle" data-toggle="dropdown"> <i class="icon-user"></i> ${sessionScope.loginad} <i class="caret"></i>
                                </a>
                            </li>
                            <li>
                                 <s:url action="logout.action" var="urlTag" >
                                     <s:param name="lo">2</s:param>
                                    </s:url>
                                    <s:a href="%{urlTag}">&nbsp;Logout</s:a>
                            </li>
                        </ul>
                    </c:when>
                    <c:otherwise>
                        <%
                            response.sendRedirect("loginadmin.jsp");
                        %>
                    </c:otherwise>
                </c:choose>

                <ul class="nav">
                    <li class="active">
                        <a href="#">Control Panel</a>
                    </li>
                </ul>
            </div>
            <!--/.nav-collapse -->
        </div>
    </div>
</div>