<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="spring" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="/WEB-INF/views/template/header.jsp"%>


<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Administrator page</h1>
            <p class="lead">This is the administrator page.</p>
        </div>


        <h3>
            <a href="<c:url value="/admin/foodInventory" />">Food Inventory</a>
        </h3>

        <p>Here you can view, check and modify the food Inventory.</p>


        <%@include file="/WEB-INF/views/template/footer.jsp"%>
