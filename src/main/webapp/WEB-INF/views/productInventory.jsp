<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@include file="/WEB-INF/views/template/header.jsp"%>

<script>
    $(document).ready(function(){

        $('.table').DataTable({
            "lengthMenu": [[1,2,3,5,10,-1], [1,2,3,5,10, "All"]]
        });
    });

</script>

<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Product Inventory Page</h1>

            <p class="lead">This is the product inventory page!</p>
        </div>

        <table class="table table-striped table-hover">
            <thead>
            <tr class="bg-success">
                <th>Photo Thumb</th>
                <th>Product Name</th>
                <th>Category</th>
                <th>Price</th>
                <th></th>
            </tr>
            </thead>
            <c:forEach items="${products}" var="product">
                <tr>
                    <td><img src="<c:url value="/resources/images/${product.productId}.png" /> " alt="image"
                             style="width:100%"/></td>
                    <td>${product.productName}</td>
                    <td>${product.productCategory}</td>
                    <td>${product.productPrice} USD</td>
                    <td><a href="<spring:url value="/product/viewProduct/${product.productId}" />"
                    ><span class="glyphicon glyphicon-info-sign"></span> Detail</a>
                        <a href="<spring:url value="/admin/product/deleteProduct/${product.productId}" />"
                        ><span class="glyphicon glyphicon-remove"></span> Remove</a>
                        <a href="<spring:url value="/admin/product/editProduct/${product.productId}" />"
                        ><span class="glyphicon glyphicon-pencil"></span> Edit</a>
                    </td>
                </tr>
            </c:forEach>
        </table>

        <p class="btn btn-default">
            <a href="<c:url value="/admin" />" >Back</a>
        </p>

        <a href="<spring:url value="/admin/product/addProduct" />" class="btn btn-default">Add Product</a>

        <%@include file="/WEB-INF/views/template/footer.jsp" %>
