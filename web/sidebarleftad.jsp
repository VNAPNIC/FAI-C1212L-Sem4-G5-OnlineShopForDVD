
<div class="span3" id="sidebar">
    <ul class="nav nav-list bs-docs-sidenav nav-collapse collapse">
        <li class="active">
            <a href="mainadmin.jsp"><i class="icon-chevron-right"></i>Statistics</a>
        </li>
        <li>
            <a href="productsAD.jsp"><i class="icon-chevron-right"></i> Products</a>
        </li>
        <li>
            <a href="#"><i class="icon-chevron-right"></i> Categories</a>
        </li>
        <li>
            <a href="#"><i class="icon-chevron-right"></i>Users</a>
        </li>
        <li>
            <a href="#"><c:choose> 
                    <c:when test="${!empty sessionScope['co']}">
                        <span class="badge badge-info pull-right">${sessionScope.co}</span>
                    </c:when>
                    <c:otherwise>
                        <i class="icon-chevron-right"></i>
                    </c:otherwise>
                </c:choose>&nbsp;Orders</a>
        </li>
        <li>
            <a href="#"><c:choose> 
                    <c:when test="${!empty sessionScope['cr']}">
                        <span class="badge badge-info pull-right">${sessionScope.cr}</span>
                    </c:when>
                    <c:otherwise>
                        <i class="icon-chevron-right"></i>
                    </c:otherwise>
                </c:choose>&nbsp;Reports</a>
        </li>

    </ul>
</div>
