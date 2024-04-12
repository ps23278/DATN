<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <div class="row">
	<div class="banner_welcome">
		<img alt="" src="/images/banner/hero-bg.jpg">
		<div class="overlay">
			<div style="width: 96%; margin: auto">
				<div class="row"
					style="margin: auto; position: relative; top: 290px">
					<div class="col-md-8" style="width: 100%; height: 200px;">
						<div class="text-welcome">
							<h1>
								Chào mừng đến với <span style="color: #cda45e">Hương Rừng</span>
							</h1>
							<h3>Mang đến những món ăn tuyệt vời trong suốt 18 năm!</h3>
						</div>
						<a href="product/list"><button type="button" class="btn-menu">Thực Đơn</button></a>
						<button type="button" class="btn-menu btn-order">Đặt Bàn</button>
					</div>
					<div class="col-md-4" style="width: 100%; height: 200px;">
						<div class="video-controls">
							<button class="pause-button">
								<span class="pause-icon">
									<button class="pause-button-2">
										<span
											style="color: white; position: relative; top: 3px; left: 2px"
											class="pause-icon"><svg
												xmlns="http://www.w3.org/2000/svg" width="60" height="60"
												fill="currentColor" class="bi bi-caret-right-fill"
												viewBox="0 0 16 16">
  													<path
													d="m12.14 8.753-5.482 4.796c-.646.566-1.658.106-1.658-.753V3.204a1 1 0 0 1 1.659-.753l5.48 4.796a1 1 0 0 1 0 1.506z" />
											</svg></span>
									</button>
								</span>
							</button>
						</div>
					</div>
					
					<script>
					const button = document.querySelector('.pause-button');
					const button2 = document.querySelector('.pause-button-2');
					
					
					button.addEventListener('mouseover', function() {
					    this.style.boxShadow = '0 0 10px 10px rgba(205, 164, 94, 0.5)';
					});

					button.addEventListener('mouseout', function() {
					    this.style.boxShadow = '0 0 0 0 rgba(205, 164, 94, 0.5)';
					});
					
					button2.addEventListener('mouseover', function() {
					    this.style.boxShadow = '0 0 10px 10px rgba(205, 164, 94, 0.5)';
					});

					button2.addEventListener('mouseout', function() {
					    this.style.boxShadow = '0 0 0 0 rgba(205, 164, 94, 0.5)';
					});
					</script>
				</div>
			</div>
		</div>
	</div>
</div>

    <!-- Bootstrap JS và Popper.js -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
   