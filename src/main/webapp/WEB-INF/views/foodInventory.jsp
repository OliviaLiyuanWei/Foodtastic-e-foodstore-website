<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="/WEB-INF/views/template/header.jsp"%>


<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Food Inventory Page</h1>
            <p class="lead">This is the food inventory page.</p>
        </div>


        <table class="table table-striped table-hover">

            <thead>
            <tr class="bg-success">
                <th>Photo Thumb</th>
                <th>Name</th>
                <th>Category</th>
                <th>Weight</th>
                <th>Price</th>
                <th></th>
                <th></th>
                <th></th>
            </tr>
            </thead>

            <c:forEach items="${foods}" var="food">
                <tr>
                    <td><img src="<c:url value="/resources/images/${food.foodId}.png" />" alt="image" style="width: 100%"/></td>
                    <td>${food.foodName}</td>
                    <td>${food.foodCategory}</td>
                    <td>${food.foodWeight} g</td>
                    <td>${food.foodPrice} USD</td>
                    <td><a href="<spring:url value="/foodList/foodDetailPage/${food.foodId}" />">Detail<span class="glyphicon glyphicon-info-sign"></span></a></td>
                    <td><a href="<spring:url value="/admin/foodInventory/deleteFood/${food.foodId}" />">Delete<span class="glyphicon glyphicon-remove"></span></a></td>
                    <td><a href="<spring:url value="/admin/foodInventory/editFood/${food.foodId}" />">Edit<span class="glyphicon glyphicon-pencil"></span></a></td>
                </tr>
            </c:forEach>

        </table>

        <a href="<spring:url value="/admin/foodInventory/addFood" />" class="btn btn-primary">Add Food Item</a>


<%@include file="/WEB-INF/views/template/footer.jsp"%>