<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="/WEB-INF/views/template/header.jsp"%>


<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>All Food</h1>
            <p class="lead">Check all the yummy food we provide! Pick some yourself!</p>
        </div>


        <table class="table table-striped table-hover">

            <thead>
                <tr class="bg-info">
                    <th>Photo Thumb</th>
                    <th>Name</th>
                    <th>Category</th>
                    <th>Weight</th>
                    <th>Price</th>
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
                </tr>
            </c:forEach>

        </table>


<%@include file="/WEB-INF/views/template/footer.jsp"%>