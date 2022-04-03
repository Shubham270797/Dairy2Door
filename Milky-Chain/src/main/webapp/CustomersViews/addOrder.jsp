<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="Responsive Bootstrap4 Shop Template, Created by Imran Hossain from https://imransdesign.com/">

	<!-- title -->
	<title>AddOrder</title>

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
				<div class="col-lg-10 col-sm-10 text-center">
					<div class="main-menu-wrap">
						<!-- logo -->
						<div class="site-logo" >
							<a href="index.html">
								<img src="assets/img/logo.png" alt="">
								<!-- <h6>Milky Chain </h6> -->
								<!-- <h4 style="color:rgb(247, 11, 23)">
								 <body>
								<font size="2.9">  
									the taste of nutrition   
								</font> </h4> -->
							</body>
							</a>
						</div>
						<!-- logo -->

						<!-- menu start -->
						<nav class="main-menu">
							<ul>
								<li><a href="index.html">Home</a></li>
								<!-- <li class="current-list-item"><a href="#">Home</a> -->
									<!-- <ul class="sub-menu">
										<li><a href="index.html">Static Home</a></li>
										<li><a href="index_2.html">Slider Home</a></li>
									</ul> -->
								</li>
								
								<li><a href="about.html">About 	Us</a></li>
								<li><a href="#">Products</a>
									<ul class="sub-menu">
										<!-- <li><a href="404.html">404 page</a></li>
										<li><a href="about.html">About</a></li> -->
										<li><a href="cart.html">Cart</a></li>
										<li><a href="checkout.html">Check Out</a></li>
										<!-- <li><a href="contact.html">Contact</a></li>
										<li><a href="news.html">News</a></li> -->
										<li><a href="shop.html">Shop</a></li>
									</ul>
								</li>
								<!-- <li><a href="news.html">News</a>
									<ul class="sub-menu">
										<li><a href="news.html">News</a></li>
										<li><a href="single-news.html">Single News</a></li>
									</ul>
								</li> -->
								<li><a href="OurSupplier.html">Our Supplier</a></li>
								<li><a href="contact.html">Check By Location</a></li>
								<li><a href="contact.html">Contact Us</a></li>
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
											<li><a href="SupplierLogin.html">Supplier</a></li>
											<li><a href="CustomerLogin.html">customers</a></li>
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
						<p>Have a nice day with your order</p>
						<h1> Place Order</h1>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- end breadcrumb section -->

	<!-- check out section -->
	<div class="checkout-section mt-150 mb-150">
		<div class="container">
			<div class="row">
				<div class="col-lg-15">
					<div class="checkout-accordion-wrap">
						<div class="accordion" id="accordionExample">
						  <div class="card single-accordion">
						    <div class="card-header" id="headingOne">
						      <h5 class="mb-0">
						        <!-- <button class="btn btn-link" type="button" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne"> -->
						          <!-- Supplier Details
						        </button>
						      </h5>
						    </div>

						    <div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#accordionExample">
						      <div class="card-body">
						        <div class="billing-address-form">
						        	<form action="index.html">
						        		<p><input type="text" placeholder="Name"></p>
						        		<p><input type="email" placeholder="Email"></p>
						        		<p><input type="text" placeholder="Address"></p>
						        		<p><input type="tel" placeholder="Phone"></p>
						        		<p><textarea name="bill" id="bill" cols="30" rows="10" placeholder="Say Something"></textarea></p>
						        	</form>
						        </div>
						      </div>
						    </div>
						  </div>
						  <div class="card single-accordion">
						    <div class="card-header" id="headingTwo">
						      <h5 class="mb-0">
						        <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
						          Shipping Address
						        </button>
						      </h5>
						    </div>
						    <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionExample">
						      <div class="card-body">
						        <div class="shipping-address-form">
						        	<p>Your shipping address form is here.</p>
						        </div>
						      </div>
						    </div>
						  </div>
						  <div class="card single-accordion">
						    <div class="card-header" id="headingThree">
						      <h5 class="mb-0">
						        <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
						          Card Details
						        </button>
						      </h5>
						    </div>
						    <div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#accordionExample">
						      <div class="card-body">
						        <div class="card-details">
						        	<p>Your card details goes here.</p>
						        </div>
						      </div>
						    </div>
						  </div>
						</div>

					</div>
				</div> -->

				<div class="col-lg-4">
					<div class="order-details-wrap">
						<table class="order-details">
							<thead>
								<tr>
									<th><b>Customer Id</b></th>
									<th><b>Product Id</b></th>
                                    <th><b>Supplier Id </b></th>
                                    <th><b>Order Quantity in Liter</b></th>
                                    
								</tr>
							</thead>
							<tbody class="order-details-body">
								<tr>
									<td>12</td>
									<td>9876</td>
                                    <td>456</td>
                                    <td>2</td>
                                    
								</tr>
								<tr>
									<td>13</td>
									<td>9345</td>
                                    <td>789</td>
                                    <td>3</td>
                                   
								</tr>
								<tr>
									<td>14</td>
									<td>8888</td>
                                    <td>543</td>
                                    <td>1</td>
                                   
								</tr>

                                <tr>
                                    <td><input type="text" id="new_id"></td>
                                    <td><input type="text" id="new_name"></td>
                                    <td><input type="text" id="new_type"></td>
                                    <td ><input type="text" id="new_production"></td>
                                    
                                </tr>                                
								
							</tbody>
						</table>
						<a href="#" class="boxed-btn">Place Order</a>
						<br>
						<br>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- end check out section -->
<br><br><br>
<br>

<!-- <div class="main-titles ">
	<p style="font-size: 30px">Areas we serve :</p>
</div> -->



<!-- breadcrumb-section -->
<!-- <div class="breadcrumb-section breadcrumb-bg">-->
	<!-- <div class="container">
		<div class="row"> 
			<div class="col-lg-8 offset-lg-2 text-center">
				<div class="breadcrumb-text">
				    <p>Get 24/7 Support</p> 
					<h1>Areas We Serve</h1>
				</div>
			</div>
		</div>
	</div>
</div> -->
<!-- end breadcrumb section -->

<!-- area form -->
<!-- <style>
	.container {
	  height: 200px;
	  position: relative;
	  
	 
	}
	.button {
	  /*background-color: #0f0e0f; */
	 border: none;
	  color: rgb(14, 12, 12);
	  padding: 15px 32px;
	  text-align: center;
	  text-decoration: none;
	  /* display: inline-block; */
	 font-size: 16px;
}
	
	.vertical-center {
	  margin: 0;
	  /* position: absolute; */
	  text-align: center;
	  top: 70%; 
	 
	  /* -ms-transform: translateY(-50%);
	  transform: translateY(-50%); */ 
	}
	</style>
	<div class="container">
		<div class="button">

			
			<button type="submit" onclick="location='OurSupplier.html'"value='Pimpri-Chinchwad'>Pimpri-Chinchwad</button>
			<button type="submit" onclick="location='OurSupplier.html'"value='Ravet'>Ravet</button>
			<button type="submit" onclick="location='OurSupplier.html'"value='Hadapsar'>Hadapsar</button>
			<button type="submit" onclick="location='OurSupplier.html'"value='Pimple-Soudagar'>Pimple-Soudagar</button>
			<button type="submit" onclick="location='OurSupplier.html'"value='Hinjewadi'>Hinjewadi</button>
			<button type="submit" onclick="location='OurSupplier.html'"value='Balewadi'>Balewadi</button>
			<button type="submit" onclick="location='OurSupplier.html'"value='Wagholi'>Wagholi</button><br>
			<button type="submit" onclick="location='OurSupplier.html'"value='Baner'>Baner</button>
			<button type="submit" onclick="location='OurSupplier.html'"value='Wakad'>Wakad</button>
			<button type="submit" onclick="location='OurSupplier.html'"value='Viman Nagar'>Viman Nagar</button>
			<button type="submit" onclick="location='OurSupplier.html'"value='Shivaji Nagar'>Shivaji Nagar</button>
		
			<!-- <input type=button onClick="location='index.html'"
			value='Pimpri-Chinchwad'> -->
<!-- 	   
		</div>
	  </div> 
	   -->

<!-- end contact form -->



<div class="main-titles ">
	 <p style="font-size: 30px">Our Blog</p>
</div>

<br>
	<!-- logo carousel -->
	 <div class="logo-carousel-section">
		<div class="container">
			<div class="row">
				<div class="col-lg-10">
					<div class="logo-carousel-inner">
						<div class="single-logo-item">
							<img src="assets/img/company-logos/1.png" alt="">
						</div>
						<div class="single-logo-item">
							<img src="assets/img/company-logos/2.png" alt="">
						</div>
						<div class="single-logo-item">
							<img src="assets/img/company-logos/3.png" alt="">
						</div>
						<div class="single-logo-item">
							<img src="assets/img/company-logos/4.png" alt="">
						</div>
						<div class="single-logo-item">
							<img src="assets/img/company-logos/5.png" alt="">
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- end logo carousel -->

	
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
						<li>Shop No.503, Mayfair Tower S Phase-II, Wakdewadi, Shivajinagar
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
						<li><a href="index.html">Home</a></li>
						<li><a href="about.html">About Us</a></li>
						<li><a href="about.html">Product</a></li>
						<li><a href="OurSupplier.html">Our Supplier</a></li>
						<!-- <li><a href="checkbylocation.html">Check By Location</a></li> -->
						<!-- <li><a href="services.html">Shop</a></li>
						<li><a href="news.html">News</a></li> -->
						<li><a href="contact.html">Contact Us</a></li>
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
	
	