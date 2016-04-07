<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@include file="/WEB-INF/views/template/header.jsp"%>


<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Food Detail</h1>
            <p class="lead">Here is the detail information of this yummy food.</p>
        </div>


        <div class="container">
            <div class="row">
                <div class="col-md-5">
                    <img src="<c:url value="/resources/images/${food.foodId}.png" />" alt="image" style="width: 100%"/>
                </div>

                <div class="col-md-5">
                    <h3>${food.foodName}</h3>
                    <p><strong>Description</strong> : ${food.foodDescription}</p>
                    <p><strong>Manufacturer</strong> : ${food.foodManufacturer}</p>
                    <p><strong>Category</strong> : ${food.foodCategory}</p>
                    <p><strong>Weight</strong> : ${food.foodWeight} g</p>
                    <p><strong>Price</strong> : ${food.foodPrice} USD</p>
                </div>

            </div>
        </div>


<%@include file="/WEB-INF/views/template/footer.jsp"%>