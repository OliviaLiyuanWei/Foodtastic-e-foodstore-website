<%@include file="/WEB-INF/views/template/header.jsp" %>


<!-- Carousel
================================================== -->
<div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>
    <div class="carousel-inner" role="listbox">
        <div class="item active">
            <img class="first-slide home-image"
                 src="<c:url value="/resources/images/back7.jpg" />"
                 alt="First slide">

            <div class="container">
                <div class="carousel-caption">
                    <h1>Welcome to Foodtastic</h1>

                    <p class="nodisplay">We believe healthy living is a journey and every meal is a choice. We love to inspire, educate and empower every person to eat healthier and live a better life. </p>

                </div>
            </div>
        </div>
        <div class="item">
            <img class="second-slide home-image"
                 src="<c:url value="/resources/images/back8.jpg" />"
                 alt="Second slide">

            <div class="container">
                <div class="carousel-caption">
                    <h1>It's Healthy Living for Less</h1>

                    <p class="nodisplay">We pride ourselves on our unwavering commitment to providing customers with affordable, healthy foods and friendly, knowledgeable and engaging service every day.</p>

                </div>
            </div>
        </div>
        <div class="item">
            <img class="third-slide home-image"
                 src="<c:url value="/resources/images/back9.jpg" />"
                 alt="Third slide">

            <div class="container">
                <div class="carousel-caption">
                    <h1>Taste and Quality You Can Trust</h1>

                    <p class="nodisplay">You'll find mountains of colorful, fresh fruits and vegetables, barrels of wholesome grains, nuts and sweets, and full-service deli, meat and seafood. Enjoy!</p>

                </div>
            </div>
        </div>
    </div>
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
    </a>
</div>
<!-- /.carousel -->


<!-- Marketing messaging and featurettes
================================================== -->
<!-- Wrap the rest of the page in another container to center all the content. -->

<div class="container marketing">

    <!-- Three columns of text below the carousel -->
    <div class="row">
        <div class="col-md-4">
            <a class="btn btn-default" href="<c:url value="/product/productList?searchCondition=Veggies&Fruit" />"
               role="button">
                <img src="<c:url value="/resources/images/fruit.jpg" />" alt="Instrument
                Image" width="150" height="150" class="foodCategory"></a>

            <h2>Veggies&Fruit</h2>
            <p>Shop our fresh vegetables and fruit.</p>

        </div><!-- /.col-lg-4 -->



    <div class="row">
        <div class="col-md-4">
            <a class="btn btn-default" href="<c:url value="/product/productList?searchCondition=Snack" />"
               role="button">
                <img src="<c:url value="/resources/images/snack2.jpg" />" alt="Instrument
                Image" width="150" height="150" class="foodCategory"></a>

            <h2>Snack</h2>
            <p>Life can not taste good without Snack.</p>

        </div><!-- /.col-lg-4 -->

    <div class="row">
        <div class="col-md-4">
            <a class="btn btn-default" href="<c:url value="/product/productList?searchCondition=Beverage" />"
               role="button">
                <img src="<c:url value="/resources/images/beverage.jpg" />" alt="Instrument
                Image" width="150" height="150" class="foodCategory"></a>

            <h2>Beverage</h2>
            <p>Thirsty? We got plenty of beverage.</p>

        </div><!-- /.col-lg-4 -->


    </div><!-- /.row -->

    <%@include file="/WEB-INF/views/template/footer.jsp" %>

