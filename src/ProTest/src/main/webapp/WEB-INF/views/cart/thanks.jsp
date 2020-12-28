<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="mt" uri="http://localhost:9596/ProTest"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="row">
	<div class="span9">
		<ul class="breadcrumb">
			<li><a href="${pageContext.request.contextPath }/home">Home</a><span
				class="divider">/</span></li>
			<li class="active">Thanks</li>
		</ul>
		<center>
			<h4>
				Thanks for buying our products !!!
			</h4>
		</center>
	</div>
	<div class="span9">
		<a class="btn btn-primary pull-left" 
			href="${pageContext.request.contextPath }/home">Continue Shopping</a>
	</div>
	<div class="span3 col">
		<mt:categoriesList />
		<div class="block">
			<h4 class="title">
				<span class="pull-left"><span class="text">Hot
						products</span></span> <span class="pull-right"> <a class="left button"
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