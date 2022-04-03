<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="Responsive Bootstrap4 Shop Template, Created by Imran Hossain from https://imransdesign.com/">

	<!-- title -->
	<title>SupplierLogin</title>

	<!-- favicon -->
	<link rel="shortcut icon" type="image/png" href="assets/img/favicon.png">
	<!-- google font -->
	<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,700" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Poppins:400,700&display=swap" rel="stylesheet">
	<!-- fontawesome -->
	<link rel="stylesheet" href="assets/css/all.min.css">
	<!-- bootstrap -->
	<link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
	<!-- owl carousel -->
	<link rel="stylesheet" href="assets/css/owl.carousel.css">
	<!-- magnific popup -->
	<link rel="stylesheet" href="assets/css/magnific-popup.css">
	<!-- animate css -->
	<link rel="stylesheet" href="assets/css/animate.css">
	<!-- mean menu css -->
	<link rel="stylesheet" href="assets/css/meanmenu.min.css">
	<!-- main style -->
	<link rel="stylesheet" href="assets/css/main.css">
	<!-- responsive -->
	<link rel="stylesheet" href="assets/css/responsive.css">

</head>
<body>
	
	<!--PreLoader-->
    <div class="loader">
        <div class="loader-inner">
            <div class="circle"></div>
        </div>
    </div>
    <!--PreLoader Ends-->
	
	<!-- header -->
	<div class="top-header-area" id="sticker">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 col-sm-12 text-center">
					<div class="main-menu-wrap">
						
						<div class="site-logo" >
							<a href="index.jsp">
								<img src="assets/img/logo.png" alt="">
								<!-- <h6>Milky Chain </h6> -->
								<!-- <h4 style="color:rgb(247, 11, 23)">the taste of nutrition</h4> -->
							</a>
						</div>

						<!-- menu start -->
						<nav class="main-menu">
							<ul>
								<li><a href="index.jsp">Home</a></li>
								<!-- <li class="current-list-item"><a href="#">Home</a> -->
									<!-- <ul class="sub-menu">
										<li><a href="index.html">Static Home</a></li>
										<li><a href="index_2.html">Slider Home</a></li>
									</ul> -->
								</li>
								
								<li><a href="about.jsp">About 	Us</a></li>
								<li><a href="ourProducts.jsp">Our Product</a></li>
									<!-- <ul class="sub-menu"> -->
										<!-- <li><a href="404.html">404 page</a></li>
										<li><a href="about.html">About</a></li> -->
										<!-- <li><a href="cart.html">Cart</a></li>
										<li><a href="checkout.html">Check Out</a></li> -->
										<!-- <li><a href="contact.html">Contact</a></li>
										<li><a href="news.html">News</a></li> -->
										<!-- <li><a href="shop.html">Shop</a></li> -->
									<!-- </ul>
								</li> -->
								<!-- <li><a href="news.html">News</a>
									<ul class="sub-menu">
										<li><a href="news.html">News</a></li>
										<li><a href="single-news.html">Single News</a></li>
									</ul>
								</li> -->
								<li><a href="viewSuppliers">Our Supplier</a></li>
								<!-- <li><a href="checkbylocation.html">Check By Location</a></li> -->
								<li><a href="contact.jsp">Contact Us</a></li>
								<!--  <li><a href="shop.html">Shop</a>
									<ul class="sub-menu">
										<li><a href="shop.html">Shop</a></li>
										<li><a href="checkout.html">Check Out</a></li>
										<li><a href="single-product.html">Single Product</a></li>
										<li><a href="cart.html">Cart</a></li>
									</ul>
								</li> -->
								<li> 
									<li class="current-list-item"><a href="#">Log In</a>
										<ul class="sub-menu">
											<li><a href="adminLogin.jsp">Admin</a></li>
											<li><a href="supplierLogin.jsp">Supplier</a></li>
											<li><a href="customerLogin.jsp">Customer</a></li>
										</ul>
									</li>
									<!-- <div class="header-icons">
										<a class="shopping-cart" href="cart.html"><i class="fas fa-shopping-cart"></i></a>
										<a class="mobile-hide search-bar-icon" href="#"><i class="fas fa-search"></i></a>
									</div> -->
								</li>
							</ul>
						</nav>
						<a class="mobile-show search-bar-icon" href="#"><i class="fas fa-search"></i></a>
						<div class="mobile-menu"></div>
						<!-- menu end -->
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- end header -->
	<!-- search area -->
	<div class="search-area">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<span class="close-btn"><i class="fas fa-window-close"></i></span>
					<div class="search-bar">
						<div class="search-bar-tablecell">
							<h3>Search For:</h3>
							<input type="text" placeholder="Keywords">
							<button type="submit">Search <i class="fas fa-search"></i></button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- end search arewa -->
	
	<!-- breadcrumb-section -->
	<div class="breadcrumb-section breadcrumb-bg">
		<div class="container">
			<div class="row">
				<div class="col-lg-8 offset-lg-2 text-center">
					<div class="breadcrumb-text">
						<!-- <p>Get 24/7 Support</p> -->
						<h1>Supplier Login</h1>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- end breadcrumb section -->
<p><h1 style="color: red">${error}</h1></p>
	<!-- contact form -->
	<div class="contact-from-section mt-150 mb-150">
		<div class="container">
			<div class="row">
				<div class="col-lg-8 mb-5 mb-lg-0">
					<div class="form-title">
						<h2>Login Supplier</h2>
						<!-- <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Pariatur, ratione! 
							Laboriosam est, assumenda. Perferendis, quo alias quaerat aliquid. Corporis ipsum 
							minus voluptate? Dolore, esse natus!</p> -->
					</div>
				 	<div id="form_status"></div>
					<div class="contact-form">
						<form method="post" id="fruitkha-contact" action="${pageContext.request.contextPath}/supplierLogin">
							<p>
								<input type="text" placeholder="Username" name="userName" id="userName">
        
							</p>
							
							<p>
								<input type="text" placeholder="Password" name="password" id="password">
							</p>
								<p><input type="submit" value="Login"/></p>
						</form>
					</div>
				</div>
				
			
				<div class="col-lg-4">
					<div class="contact-form-wrap">
						<div class="contact-form-box">
							
							<h4><i class="fas fa-map"></i> Main Office Addres</h4>
							<p>503, Mayfair Tower S Phase-Ii, Wakdewadi, Shivajinagar <br> Near Bank Of India,
								 <br> Pune, Maharashtra 411005 .</p>
						</div>
						<div class="contact-form-box">
							<h4><i class="far fa-clock"></i> Office Hours</h4>
							<p>MONDAY - FRIDAY: 8 to 9 PM <br> SAT - SUN: 10 to 8 PM </p>
						</div>
						<div class="contact-form-box">
							<h4><i class="fas fa-address-book"></i> Contact</h4>
							<p>Contact No.: +91-20-26450045 <br> Email: support@MilkyChain.com</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- end contact form -->

	<!-- find our location -->
	<!-- <div class="find-location blue-bg">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 text-center">
					<p> <i class="fas fa-map-marker-alt"></i> Find Our Location</p>
				</div>
			</div>
		</div>
	</div> -->
	<!-- end find our location -->

	<!-- google map section -->
	<!-- <div class="embed-responsive embed-responsive-21by9">
		<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d26432.42324808999!2d-
		118.34398767954286!3d34.09378509738966!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x80c2bf07045
		279bf%3A0xf67a9a6797bdfae4!2sHollywood%2C%20Los%20Angeles%2C%20CA%2C%20USA!5e0!3m2!1sen!2sbd!4v1576846473265!5m2!1
		sen!2sbd" width="600" height="450" frameborder="0" style="border:0;" allowfullscreen="" class="embed-responsive-item"></iframe>
		
	</div> -->
	<!-- end google map section -->


		<!-- footer -->
	<div class="footer-area">
		<div class="container">
			<div class="row">
				<div class="col-lg-3 col-md-6">
					<div class="footer-box about-widget">
						<h2 class="widget-title">About us</h2>
						<p>
							Join us in our journey of managing milk order & distribuition process by reaching out to end customer.
							We are providing only the best quality of milk.
						 
						</p>
					</div>
				</div>
				<div class="col-lg-3 col-md-6">
					<div class="footer-box get-in-touch">
						<h2 class="widget-title">Get in Touch</h2>
						<ul>
							<li>503, Mayfair Tower S Phase-II, Wakdewadi, Shivajinagar
								Near Bank Of India,
								Pune, Maharashtra 411005 .</li>
							<li>support@milkychain.com</li>
							<li> +91-20-26450045</li>
						</ul>
					</div>
				</div>
				<div class="col-lg-3 col-md-6">
					<div class="footer-box pages">
						<h2 class="widget-title">Our services</h2>
						<ul>
							<li><a href="index.jsp">Home</a></li>
							<li><a href="about.jsp">About Us</a></li>
							<li><a href="ourProducts.jsp">Our Product</a></li>
							<li><a href="viewSuppliers">Our Supplier</a></li>
							<!-- <li><a href="checkbylocation.html">Check By Location</a></li> -->
							<!-- <li><a href="services.html">Shop</a></li>
							<li><a href="news.html">News</a></li> -->
							<li><a href="contact.jsp">Contact Us</a></li>
						</ul>
					</div>
				</div>
				<!-- <div class="col-lg-3 col-md-6">
					<div class="footer-box subscribe">
						<h2 class="widget-title">Subscribe</h2>
						<p>Subscribe to our mailing list to get the latest updates.</p>
						<form action="index.html">
							<input type="email" placeholder="Email">
							<button type="submit"><i class="fas fa-paper-plane"></i></button>
						</form>
					</div>
				</div> -->
			</div>
		</div>
	</div>
	<!-- end footer -->
		
		<!-- copyright -->
		<!-- <div class="copyright">
			<div class="container">
				<div class="row">
					<div class="col-lg-6 col-md-12">
						<p>Copyrights &copy; 2019 - <a href="https://imransdesign.com/">Imran Hossain</a>,  All Rights Reserved.<br>
							Distributed By - <a href="https://themewagon.com/">Themewagon</a>
						</p>
					</div>
					<div class="col-lg-6 text-right col-md-12">
						<div class="social-icons">
							<ul>
								<li><a href="#" target="_blank"><i class="fab fa-facebook-f"></i></a></li>
								<li><a href="#" target="_blank"><i class="fab fa-twitter"></i></a></li>
								<li><a href="#" target="_blank"><i class="fab fa-instagram"></i></a></li>
								<li><a href="#" target="_blank"><i class="fab fa-linkedin"></i></a></li>
								<li><a href="#" target="_blank"><i class="fab fa-dribbble"></i></a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div> -->
		<!-- end copyright -->
		
		<!-- jquery -->
		<script src="assets/js/jquery-1.11.3.min.js"></script>
		<!-- bootstrap -->
		<script src="assets/bootstrap/js/bootstrap.min.js"></script>
		<!-- count down -->
		<script src="assets/js/jquery.countdown.js"></script>
		<!-- isotope -->
		<script src="assets/js/jquery.isotope-3.0.6.min.js"></script>
		<!-- waypoints -->
		<script src="assets/js/waypoints.js"></script>
		<!-- owl carousel -->
		<script src="assets/js/owl.carousel.min.js"></script>
		<!-- magnific popup -->
		<script src="assets/js/jquery.magnific-popup.min.js"></script>
		<!-- mean menu -->
		<script src="assets/js/jquery.meanmenu.min.js"></script>
		<!-- sticker js -->
		<script src="assets/js/sticker.js"></script>
		<!-- main js -->
		<script src="assets/js/main.js"></script>
	
	</body>
	</html>



<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register</title>
</head>

