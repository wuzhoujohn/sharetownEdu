<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@taglib prefix='c' uri="http://java.sun.com/jsp/jstl/core"%>

<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!-- here, in the servlet-context.xml you have specified the loaction of static resources, so here we use the mapping to -->
<!-- load the available files in that folder -->
<spring:url var="css" value="/resources/css" />
<spring:url var="js" value="/resources/js" />
<spring:url var="pictures" value="/resources/pictures" />
<spring:url var="plugins" value="/resources/plugins" />

<!-- use the set tag from jstl lib to set a variable contextRoot with value pageContext.request.contextPath -->
<c:set var="contextRoot" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="en">

<head>

<title>Course</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description" content="Course Project">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- get the title property from the model -->
<!-- <title>Online Shopping Store - ${title}</title> -->


<script>
	window.menu = '${title}';
	
	window.contextRoot = '${contextRoot}'
</script>

<link href="${css}/bootstrap.min.css" rel="stylesheet">

<link href="${css}/contact_responsive.css" rel="stylesheet">

<link href="${css}/contact_styles.css" rel="stylesheet">

<link href="${css}/courses_responsive.css" rel="stylesheet">

<link href="${css}/courses_styles.css" rel="stylesheet">

<link href="${css}/element_responsive.css" rel="stylesheet">

<link href="${css}/element_styles.css" rel="stylesheet">

<link href="${css}/main_styles.css" rel="stylesheet">

<link href="${css}/news_post_responsive.css" rel="stylesheet">

<link href="${css}/news_post_styles.css" rel="stylesheet">

<link href="${css}/news_responsive.css" rel="stylesheet">

<link href="${css}/news_styles.css" rel="stylesheet">

<link href="${css}/responsive.css" rel="stylesheet">

<link href="${css}/teachers_responsive.css" rel="stylesheet">

<link href="${css}/teachers_styles.css" rel="stylesheet">

<link href="${plugins}/fontawesome-free-5.0.1/css/fontawesome-all.css" rel="stylesheet" type="text/css">

<link rel="stylesheet" type="text/css" href="${plugins}/OwlCarousel2-2.2.1/owl.carousel.css">

<link rel="stylesheet" type="text/css" href="${plugins}/OwlCarousel2-2.2.1/owl.theme.default.css">

<link rel="stylesheet" type="text/css" href="${plugins}/OwlCarousel2-2.2.1/animate.css">

</head>

<body>

	<!-- include the Navigation file -->
	<%@include file="./sharedPages/navibar.jsp"%>

	<!-- here comes the home page main content -->
	<!-- assure that the homeContent will be displayed only if user clicks home button -->
	<c:if test="${userClickHome == true}">
		<%@include file="homeContent.jsp"%>
	</c:if>
	
	<!-- assure that the homeContent will be displayed only if user clicks about button -->
	<c:if test="${userClickAbout == true}">
		<%@include file="about.jsp"%>
	</c:if>
	
	<!-- assure that the homeContent will be displayed only if user clicks contact button -->
	<c:if test="${userClickContact == true}">
		<%@include file="contact.jsp"%>
	</c:if>
	
	<!-- assure that the homeContent will be displayed only if user clicks contact button -->
	<c:if test="${userClickAllProducts == true or userClickCategoryProducts == true}">
		<%@include file="listProducts.jsp"%>
	</c:if>
	
	<!-- <!-- assure that the homeContent will be displayed only if user clicks single product button -->
	<c:if test="${userClickShowProduct == true}">
		<%@include file="singleProduct.jsp"%>
	</c:if>
	
	<!-- <!-- assure that the cart will be displayed only if user clicks single product button -->
	<c:if test="${userClickShowCart == true}">
		<%@include file="cart.jsp"%>
	</c:if>
	
	<!-- when user click manage products -->
	<c:if test="${userClickManageProducts == true}">
		<%@include file="manageProducts.jsp"%>
	</c:if>

	<!-- Footer comes here -->
	<%@include file="./sharedPages/footer.jsp"%>

	<!-- Bootstrap core JavaScript -->
	<script src="${js}/jquery-3.2.1.min.js"></script>
	
	<script src="${js}/popper.js"></script>
	
	<script src="${js}/bootstrap.min.js"></script>
	
	<script src="${js}/jquery.dataTables.min.js"></script>
	
	<script src="${js}/dataTables.bootstrap.min.js"></script>
	
	<script src="${js}/jquery.validate.js"></script>
	
	<script src="${js}/bootbox.min.js"></script>
	
	<script src="${js}/app.js"></script>
	
	<script src="${js}/contact_custom.js"></script>
	
	<script src="${js}/courses_custom.js"></script>
	
	<script src="${js}/custom.js"></script>
	
	<script src="${js}/elements_custom.js"></script>
	
	<script src="${js}/jquery.js"></script>
	
	<script src="${js}/news_custom.js"></script>
	
	<script src="${js}/news_post_custom.js"></script>
	
	<script src="${js}/teachers_custom.js"></script>
	
	<script src="${plugins}/greensock/TweenMax.min.js"></script>
	
	<script src="${plugins}/greensock/TimelineMax.min.js"></script>
	
	<script src="${plugins}/scrollmagic/ScrollMagic.min.js"></script>
	
	<script src="${plugins}/greensock/animation.gsap.min.js"></script>
	
	<script src="${plugins}/greensock/ScrollToPlugin.min.js"></script>
	
	<script src="${plugins}/OwlCarousel2-2.2.1/owl.carousel.js"></script>
	
	<script src="${plugins}/scrollTo/jquery.scrollTo.min.js"></script>
	
	<script src="${plugins}/easing/easing.js"></script>

</body>

</html>
