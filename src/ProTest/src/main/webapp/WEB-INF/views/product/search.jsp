<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="mt" uri="http://localhost:9596/ProTest"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="tg" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<jsp:useBean id="pagedListHolder" scope="request" 
	type="org.springframework.beans.support.PagedListHolder" />
<c:url value="/product/category/${category.id }" var="pagedLink">
	<c:param name="p" value="~"></c:param>
</c:url>

<div class="row">
<div class="span12">
	<ul class="breadcrumb">
		<li><a href="${pageContext.request.contextPath }/home">Home</a><span
			class="divider">/</span></li>
		<li class="active">Search</li>
		<h4 style="text-align: center">Search Results</h4>
	</ul>

</div>

<div class="span9">
	<center>
		<span><h4>${category.name }</h4></span>
	</center>
	
	<br>
	
	<ul class="thumbnails listing-products">
		<c:forEach var="product" items="${pagedListHolder.pageList }">
			<c:set var="photo"
				value="${product.getPhotos().stream().filter(p -> p.isStatus() && p.isMain()).findFirst().get() }"></c:set>
			<li class="span3">
				<div class="product-box">
					<span class="sale_tag"></span> <a
						href="${pageContext.request.contextPath }/product/details/${product.id }"><img
						alt=""
						src="${pageContext.request.contextPath }/uploads/images/${photo.name }"></a><br>
					<a
						href="${pageContext.request.contextPath }/product/details/${product.id }"
						class="title">${product.name }</a><br> <a href="#"
						class="category">${product.description }</a>
					<p class="price">$${product.price }</p>
					<a class="btn btn-primary" href="${pageContext.request.contextPath }/cart/buy/${product.id}">Add to Cart | <i
						class="fas fa-shopping-cart"></i></a>
				</div>
			</li>
		</c:forEach>
	</ul>
	<hr>
	<div class="pagination pagination-small pagination-centered">
		<tg:paging pagedListHolder="${pagedListHolder}" pagedLink="${pagedLink }" />
	</div>
</div>

<div class="span3 col">
	<mt:categoriesList />
	<div class="block">
		<h4 class="title">
			<span class="pull-left"><span class="text">Hot products</span></span>
			<span class="pull-right"> <a class="left button"
				href="#myCarousel" data-slide="prev"></a><a class="right button"
				href="#myCarousel" data-slide="next"></a>
			</span>
		</h4>
		<div id="myCarousel" class="carousel slide">
			<div class="carousel-inner">
				<div class="active item">
					<ul class="thumbnails listing-products">
						<li class="span3">
							<div class="product-box">
								<a href="#"> <img alt=""
									src="${pageContext.request.contextPath }/resources/user/themes/images/cloth/Corgi-2-1.jpg"></a>

							</div>
							<h4>Welcome !</h4>
						</li>
					</ul>
				</div>

				<mt:newProducts />


			</div>
		</div>
	</div>

</div>
</div>
<script type="text/javascript">
	$("#menu-filter").accordion();
</script>
