<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html class="no-js" lang="en">

<!-- belle/home5-cosmetic.html   11 Nov 2019 12:25:38 GMT -->

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Home</title>
<meta name="description" content="description">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Plugins CSS -->
<link rel="stylesheet" href="/assets/css/plugins.css">
<link rel="stylesheet" href="/assets/css/tempCss.css">

<!-- Bootstap CSS -->
<link rel="stylesheet" href="/assets/css/bootstrap.min.css">
<!-- Main Style CSS -->
<link rel="stylesheet" href="/assets/css/style.css">
<link rel="stylesheet" href="/assets/css/styleChristMast.css">
<link rel="stylesheet" href="/assets/css/custom.css">
<link rel="stylesheet" href="/assets/css/responsive.css">
<!-- angularjs -->
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.8.2/angular.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular-route.js"></script>
</head>

<body ng-app="shopping-app" ng-controller="shopping-ctrl"
	style="background-color: black"
	class="template-index belle home5-cosmetic">

	<div class="pageWrapper">
		<%@include file="../layout/_header.jsp"%>

		<!--Body Content-->
		<div id="page-content">
			<!--Home slider-->
			<br>
			<%@include file="../layout/_slide.jsp"%>
			
			<!--Featured Product-->
			<div class="product-rows section">
				<div class="container">
					<div class="row">
						<div class="col-md-6">
							<h1 style="margin-bottom: 30px; margin-top: 50px; color: white">Không
								gian nhà hàng của chúng tôi</h1>
							<div class="icon-text-container">
								<svg xmlns="http://www.w3.org/2000/svg" width="50px"
									height="50px" style="color: #E3AB05" fill="currentColor"
									class="bi bi-check-circle" viewBox="0 0 16 16">
        							<path
										d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z" />
        							<path
										d="M10.97 4.97a.235.235 0 0 0-.02.022L7.477 9.417 5.384 7.323a.75.75 0 0 0-1.06 1.06L6.97 11.03a.75.75 0 0 0 1.079-.02l3.992-4.99a.75.75 0 0 0-1.071-1.05z" />
   								 </svg>
								<h3
									style="font-style: italic; display: inline-block; vertical-align: middle; margin-left: 5px;">Bước
									vào không gian sang trọng của nhà hàng chúng tôi, bạn sẽ được
									đắm chìm trong sự hoàn hảo và tinh tế từ mọi chi tiết. Trần nhà
									cao vút kết hợp cùng ánh sáng âm dịu tạo nên không gian ấm áp
									và đẳng cấp.</h3>
							</div>


							<div class="icon-text-container">
								<svg xmlns="http://www.w3.org/2000/svg" width="50px"
									height="50px" style="color: #E3AB05" fill="currentColor"
									class="bi bi-check-circle" viewBox="0 0 16 16">
      										  <path
										d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z" />
       									 <path
										d="M10.97 4.97a.235.235 0 0 0-.02.022L7.477 9.417 5.384 7.323a.75.75 0 0 0-1.06 1.06L6.97 11.03a.75.75 0 0 0 1.079-.02l3.992-4.99a.75.75 0 0 0-1.071-1.05z" />
   									 </svg>
								<h3
									style="font-style: italic; display: inline-block; vertical-align: middle; margin-left: 5px;">Bố
									trí bàn ghế đẳng cấp cùng với lựa chọn trang trí nội thất tinh
									tế tạo nên sự hài hòa và tạo điểm nhấn nghệ thuật cho không
									gian. Sự tinh tế và sang trọng không chỉ nằm ở thiết kế mà còn
									được thể hiện qua từng đợt phục vụ tận tâm và chất lượng.</h3>
							</div>
							<div class="icon-text-container">
								<svg xmlns="http://www.w3.org/2000/svg" width="50px"
									height="50px" style="color: #E3AB05" fill="currentColor"
									class="bi bi-check-circle" viewBox="0 0 16 16">
        								<path
										d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z" />
       											 <path
										d="M10.97 4.97a.235.235 0 0 0-.02.022L7.477 9.417 5.384 7.323a.75.75 0 0 0-1.06 1.06L6.97 11.03a.75.75 0 0 0 1.079-.02l3.992-4.99a.75.75 0 0 0-1.071-1.05z" />
   									 </svg>
								<h3
									style="font-style: italic; display: inline-block; vertical-align: middle; margin-left: 5px;">Đây
									không chỉ là nơi dành cho bữa ăn tuyệt vời mà còn là trải
									nghiệm đẳng cấp, khiến mọi khách hàng đều cảm nhận được sự sang
									trọng và đẳng cấp từng khoảnh khắc tại nhà hàng của chúng tôi.</h3>
							</div>

						</div>
						<div class="col-md-6">
							<div class="img-introduction">
								<img alt=""
									src="https://i.pinimg.com/736x/50/90/62/5090621fb826ab4c28ddf1614118e07d.jpg"
									style="height: 474px; width: 636px">

							</div>
						</div>
					</div>
					<div class="row m-5">
						<div class="col-12 col-sm-12 col-md-12 col-lg-12 ">
							<div class="section-header text-center monanmoi">
								<svg xmlns="http://www.w3.org/2000/svg" style="color: #DFE305"
									width="50" height="50" fill="currentColor"
									class="bi bi-brightness-alt-high" viewBox="0 0 16 16">
  									<path
										d="M8 3a.5.5 0 0 1 .5.5v2a.5.5 0 0 1-1 0v-2A.5.5 0 0 1 8 3zm8 8a.5.5 0 0 1-.5.5h-2a.5.5 0 0 1 0-1h2a.5.5 0 0 1 .5.5zm-13.5.5a.5.5 0 0 0 0-1h-2a.5.5 0 0 0 0 1h2zm11.157-6.157a.5.5 0 0 1 0 .707l-1.414 1.414a.5.5 0 1 1-.707-.707l1.414-1.414a.5.5 0 0 1 .707 0zm-9.9 2.121a.5.5 0 0 0 .707-.707L3.05 5.343a.5.5 0 1 0-.707.707l1.414 1.414zM8 7a4 4 0 0 0-4 4 .5.5 0 0 0 .5.5h7a.5.5 0 0 0 .5-.5 4 4 0 0 0-4-4zm0 1a3 3 0 0 1 2.959 2.5H5.04A3 3 0 0 1 8 8z" />
									</svg>
								<hr
									style="background-color: black; height: 2px; width: 200px; margin: auto; margin-bottom: 10px;">
								<h2 class="h2" style="color: #E35E05">Món Ăn Mới</h2>

							</div>
						</div>
					</div>
					<div class="grid-products">
						<div class="row">
							<c:forEach var="d" items="${db}" end="14">
								<div
									class="col-6 col-sm-6 col-md-4 col-lg-4 item grid-view-item style2">
									<div class="grid-view_image" style="width: 400px;height: 400px; overflow: hidden">
										<!-- start product image -->
										<a href="/product/detail/${d.product.id}"
											class="grid-view-item__link"> <!-- image --> <img
											style="width: 100%; height: auto;display: block;"
											class="product grid-view-item__image primary blur-up lazyload "
											src="/images/product/${d.images[0]}" alt="${d.product.name}"
											title="${d.product.name}"> <!-- End image --> <!-- Hover image -->
											<img style="width: 100%; height: auto;display: block;"
											class="product grid-view-item__image hover blur-up lazyload"
											data-src="/images/product/${d.images[1]}"
											src="/images/product/${d.images[1]}" alt="${d.product.name}"
											title="${d.product.name}">
										</a>
										<!-- End product label -->
										<!-- end product image -->

										<!--start product details -->
										<div class="product-details hoverDetails text-center mobile">
											<!-- product name -->
											<div class="product-name">
												<a href="/product/detail/${d.product.id}">${d.product.name}</a>
											</div>
											<!-- End product name -->

											<!-- product price -->
											<div class="product-price">
												<span class="price">${d.product.price}</span>
											</div>
											<!-- End product price -->

											<!-- product button -->
											<div class="button-set">
												<!-- Start product button -->
												<form class="variants add" action="#" method="post">

													<!-- Giỏ hàng -->
													<button ng-click="cart.add(${d.product.id})"
														class="btn cartIcon btn-addto-cart" type="button"
														tabindex="0">
														<i class="icon anm anm-bag-l"></i>
													</button>
												</form>
												<div class="wishlist-btn">
													<a class="wishlist add-to-wishlist" href="wishlist.html">
														<i class="icon anm anm-heart-l"></i>
													</a>
												</div>
											</div>
											<!-- end product button -->
										</div>
										<!-- Variant -->

										<!-- End Variant -->
										<!-- End product details -->
									</div>
								</div>
							</c:forEach>


						</div>
					</div>
					<div class="col-12 col-sm-12 col-md-12 col-lg-12">
						<div class="section-header text-center">
							<a href="/product/list?kw=" class="btn"
								style="vertical-align: middle; text-align: center;">TẤT CẢ
								MÓN ĂN</a>
						</div>
					</div>
				</div>
			</div>
			<!--End Featured Product-->

			<!--Store Feature-->
			<!-- <div class="store-feature section">
				<div class="container">
					<div class="row">
						<div class="col-12 col-sm-12 col-md-12 col-lg-12">
							<ul class="display-table store-info">
								<li class="display-table-cell"><i
									class="icon anm anm-truck-l"></i>
									<h5>Miễn phí vận chuyển</h5> <span class="sub-text"> Đối
										với đơn từ 200k trong nội thành TPHCM </span></li>
								<li class="display-table-cell"><i
									class="icon anm anm-money-bill-ar"></i>
									<h5>Nhiều khuyến mãi hấp dẫn</h5> <span class="sub-text">
										Hàng ngàn ưu đãi cực sốc được cập nhật mỗi ngày </span></li>
								<li class="display-table-cell"><i
									class="icon anm anm-comments-l"></i>
									<h5>Sản phẩm chính hãng</h5> <span class="sub-text"> Cam
										kết hoàn tiền 300% giá trị sản phẩm nếu phát hiện hàng không
										chính hãng </span></li>
							</ul>
						</div>
					</div>
				</div>
			</div> -->
			<!--End Store Feature-->
		</div>
		<!--End Body Content-->

		<!--Footer-->
		<%@include file="../layout/_footer.jsp"%>
		<!--End Footer-->

		<!--Scoll Top-->
		<span id="site-scroll"><i class="icon anm anm-angle-up-r"></i></span>
		<!--End Scoll Top-->

		<!-- Including Jquery -->
		<script src="/assets/js/vendor/jquery-3.3.1.min.js"></script>
		<script src="/assets/js/vendor/modernizr-3.6.0.min.js"></script>
		<script src="/assets/js/vendor/jquery.cookie.js"></script>
		<script src="/assets/js/vendor/wow.min.js"></script>
		<!-- Incing Jascript -->
		<script src="/assets/js/bootstrap.min.js"></script>
		<script src="/assets/js/plugins.js"></script>
		<script src="/assets/js/popper.min.js"></script>
		<script src="/assets/js/lazysizes.js"></script>
		<script src="/assets/js/main.js"></script>
		<!-- Shopping cart -->
		<script src="/assets/js/shopping-cart.js"></script>
		<!--For Newsletter Popup-->

		<!--End For Newsletter Popup-->
	</div>
</body>


</html>

