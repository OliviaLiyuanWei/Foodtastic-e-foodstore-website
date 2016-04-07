<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@include file="/WEB-INF/views/template/header.jsp"%>


<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Add Food Item</h1>
            <p class="lead">Fill the below information to add a product:</p>
        </div>


        <form:form action="${pageContext.request.contextPath}/admin/foodInventory/addFood" method="post" commandName="food" enctype="multipart/form-data">

        <div class="form-group">
            <label for="name">Name</label><form:errors path="foodName" cssStyle="color: #ff0000;" />
            <form:input path="foodName" id="name" class="form-Control" />
        </div>


        <div class="form-group">
            <label for="category">Category</label>
            <label class="checkbox-inline"><form:radiobutton path="foodCategory" id="category" value="Snack" />Snack</label>

            <label class="checkbox-inline"><form:radiobutton path="foodCategory" id="category" value="Diary" />Diary</label>

            <label class="checkbox-inline"><form:radiobutton path="foodCategory" id="category" value="Bakery" />Bakery</label>

            <label class="checkbox-inline"><form:radiobutton path="foodCategory" id="category" value="Meat" />Meat</label>
        </div>


        <div class="form-group">
            <label for="description">Description</label>
            <form:textarea path="foodDescription" id="description" class="form-Control" />
        </div>


        <div class="form-group">
            <label for="price">Price</label><form:errors path="foodPrice" cssStyle="color: #ff0000;" />
            <form:input path="foodPrice" id="price" class="form-Control" />
        </div>


        <div class="form-group">
            <label for="weight">Weight</label><form:errors path="foodWeight" cssStyle="color: #ff0000;" />
            <form:input path="foodWeight" id="weight" class="form-Control" />
        </div>


        <div class="form-group">
            <label for="manufacturer">Manufacturer</label>
            <form:input path="foodManufacturer" id="manufacturer" class="form-Control" />
        </div>


        <div class="form-group">
            <label for="unitInStock">Unit In Stock</label><form:errors path="unitInStock" cssStyle="color: #ff0000;" />
            <form:input path="unitInStock" id="unitInStock" class="form-Control" />
        </div>
        
        
        <div class="form-group">
            <label class="control-label" for="foodImage">Upload Image</label>
            <form:input path="foodImage" id="foodImage" type="file" class="form:input-large" />
        </div>
        

        <br><br>
        <input type="submit" value="submit" class="btn btn-primary">
        <a href="<c:url value="/admin/foodInventory" />" class="btn btn-primary">cancel</a>


        </form:form>


<%@include file="/WEB-INF/views/template/footer.jsp"%>