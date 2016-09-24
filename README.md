# Foodtastic-e-foodstore-website :computer: ![Awesome](https://cdn.rawgit.com/sindresorhus/awesome/d7305f38d29fed78fa85652e3a63e154dd8e8829/media/badge.svg) #
## Description :book: ##
This is a full stack Java Web Application which utilized the core feautures of <b>Spring framework</b>, <b>Bootstrap</b>. 
- Guest users can browse all the products, but they can not add them to their shopping cart, the system will ask them to login.
- Registered customers can browse and search all pruducts, add products to shopping-cart, and check out their selected products in the cart
- Administrator can manage product inventory and customer information

## Screenshots :bar_chart: ##

### :one: Landing Page ###
The landing page utilizes the Bootstrap Carousel Template
![landing page](https://github.com/OliviaLiyuanWei/Foodtastic-e-foodstore-website/blob/master/img-capture/foodtastic1.JPG)
### :two: Register and Login ###
If you are a guest user, you should register as a customer; if you are already registered, you can login and enjoy shopping!
![Register and Login](https://github.com/OliviaLiyuanWei/Foodtastic-e-foodstore-website/blob/master/img-capture/foodtastic001.jpg)
### :three: Product Page and Detail Page ###
As a customer, you can browse products in the product page, when you click ``Detail`` button on one product, you will go to the detail page of this product
![Product Page and Detail Page](https://github.com/OliviaLiyuanWei/Foodtastic-e-foodstore-website/blob/master/img-capture/foodtastic002.jpg)
### :four: Shopping Cart ###
Customer can view their cart and decide to continue shopping, checkout or remove some products; When customer click ``Checkout`` button, he/she will review their customer info, shipping address and billing address
![Shopping Cart](https://github.com/OliviaLiyuanWei/Foodtastic-e-foodstore-website/blob/master/img-capture/foodtastic003.jpg)
### :five: Checkout ###
Once customer review and correct their information, there will be a receipt of this order, they can click ``Submit`` button
![Checkout](https://github.com/OliviaLiyuanWei/Foodtastic-e-foodstore-website/blob/master/img-capture/foodtastic004.jpg)

## Installation ##
1. Import as Maven project
2. You need to create your own MySQL database, and change the username and password of MySQL in ``applicationContext.xml``
```  
      <bean id="dataSource" class="org.springframework.jdbc.datasource.DriverManagerDataSource">
          <property name="driverClassName" value="com.mysql.jdbc.Driver" />
          <property name="url" value="jdbc:mysql://localhost:3306/Foodtastic" />
          <property name="username" value="root" />
          <property name="password" value="19910131" />
      </bean>
```

## Tech Stack ##
- Front End: HTML/HTML5, CSS/CSS3, JavaScript, JSP, JQuery, Bootstrap
- Back End: Spring MVC, Spring Security, Spring Webflow
- Database: Spring Data, Hibernate, JPA, MySQL
