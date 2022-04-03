<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="Responsive Bootstrap4 Shop Template, Created by Imran Hossain from https://imransdesign.com/">

	<!-- title -->
	<title>Suppliers</title>

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
								<!-- <li><a href="checkbylocation.jsp">Check By Location</a></li>
								 --><!-- <li><a href="checkbylocation.html">Check By Location</a></li> -->
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
									<li class="current-list-item"><a href="">Log In</a>
										<ul class="sub-menu">
											<li><a href="adminLogin.jsp">Admin</a></li>
											<li><a href="supplierLogin.jsp">Supplier</a></li>
											<li><a href="customerLogin.jsp">Customer</a></li>
										</ul>
										<!--</li>
								 <div class="header-icons">
										<a class="shopping-cart" href="cart.html"><i class="fas fa-shopping-cart"></i></a>
										<a class="mobile-hide search-bar-icon" href="#"><i class="fas fa-search"></i></a>
									</div> 
								</li>-->
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
					<h1> Our Suppliers</h1>
					<p>in your service always</p>
						
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- end breadcrumb section -->

	<!-- check out section -->
	
	<br>
	<br>
	<div class="checkout-section mt-150 mb-150"> 
		<div class="container">
			<div class="row">
			<div class="col-lg-40">
				 <div class="checkout-accordion-wrap">
						<div class="accordion" id="accordionExample">
						 <!--   <div class="card single-accordion">
						       <div class="card-header" id="headingOne">
						      <h5 class="mb-0">
						        <button class="btn btn-link" type="button" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">Supplier Details</button>  
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
						2 <div class="card single-accordion">
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
						 3 <div class="card single-accordion">
						    <div class="card-header" id="headingThree">
						      <h5 class="mb-0">
						        <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">Card Details </button>
						      </h5>
						    </div>
						    <div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#accordionExample">
						      <div class="card-body">
						        <div class="card-details">
						        	<p>Your card details goes here.</p>
						        </div>
						      </div>
						    </div>
						  </div>-->
						</div> 

					</div>
				 </div>  

				<div class="col-lg-20">
					<div class="contact-details-wrap">
						<table class="order-details">
							<thead>
								<tr>
								    <th><b>Sr.No</b></th>
									<th><b>Name</b></th>
									<th><b>Phone No</b></th>
                                    <th><b>Email Id</b></th>
                                    <th><b>Address</b></th>
                                    <th><b>Pin Code</b></th>
								</tr>
							</thead>
							<tbody class="order-details-body">
							<c:forEach  var="supplier" items="${suppliers}">
								<tr>
								    <td>${supplier.supplierId}</td>
									<td>${supplier.supplierFname}  ${supplier.supplierLname}</td>
									<td>${supplier.supplierMobileNo}</td>
                                    <td>${supplier.supplierEmail}</td>
                                    <td><p>${supplier.supplierAddress}</p></td>
                                    <td>${supplier.supplerWorkAreaPincode}</td>
								</tr>
								</c:forEach>
							</tbody>
							</table>
							<br>
							<br>
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


<div class="main-titles ">
	<p style=" font-size: 30px" align="center">Our Footprints</p>
</div>



<!-- breadcrumb-section
<div class="breadcrumb-section breadcrumb-bg">
 <div class="container">
		<div class="row"> 
			<div class="col-lg-8 offset-lg-2 text-center">
				<div class="breadcrumb-text">
				    <p>Get 24/7 Support</p> 
					<h1>Areas We Serve</h1>
				</div>
			</div>
		</div>
	</div>
</div>
end breadcrumb section -->

<!-- area form -->
<style>
	.container {
	  height: 200px;
	  position: relative;
	
	}
		.button {
  
  border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
    margin-left: 200px;
  text-decoration: none;
  display: inline-block;
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
			<a type="submit" href="supplierInArea?pincode=411057" class="btn btn-primary">Pimpri-Chinchwad</a>
			<a type="submit" href="supplierInArea?pincode=411028" class="btn btn-primary">Ravet</a>
			<a type="submit" href="supplierInArea?pincode=411045" class="btn btn-primary">Hadapsar</a>
			<a type="submit" href="supplierInArea?pincode=411028" class="btn btn-primary">Pimple-Soudagar</a>
			<a type="submit" href="supplierInArea?pincode=411057" class="btn btn-primary">Hinjewadi</a>
			<a type="submit" href="supplierInArea?pincode=411057" class="btn btn-primary">Balewadi</a>
			<a type="submit" href="supplierInArea?pincode=411045" class="btn btn-primary">Wagholi</a>
			<br>
			<br>
			<a type="submit" href="supplierInArea?pincode=411028" class="btn btn-primary">Baner</a>
			<a type="submit" href="supplierInArea?pincode=411028" class="btn btn-primary">Wakad</a>
			<a type="submit" href="supplierInArea?pincode=411045" class="btn btn-primary">Viman Nagar</a>
			<a type="submit" href="supplierInArea?pincode=411045" class="btn btn-primary">Shivaji Nagar</a>
		</div>
	  </div>
<!-- end contact form -->



<!-- <div class="main-titles ">
	 <p style="font-size: 30px">Our Blog</p>
</div>
 -->
<br>
<!-- 	<!-- logo carousel 
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
	end logo carousel -->

	
<!-- footer -->
<!-- <div class="footer-area">
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
						<li>Shop No.1, 503, Mayfair Tower S Phase-II, Wakdewadi, Shivajinagar
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
						<li><a href="ourSupplier.jsp">Our Supplier</a></li>
						<li><a href="checkbylocation.html">Check By Location</a></li>
						<li><a href="services.html">Shop</a></li>
						<li><a href="news.html">News</a></li>
						<li><a href="contact.jsp">Contact Us</a></li>
					</ul>
				</div>
			</div>
			<div class="col-lg-3 col-md-6">
				<div class="footer-box subscribe">
					<h2 class="widget-title">Subscribe</h2>
					<p>Subscribe to our mailing list to get the latest updates.</p>
					<form action="index.html">
						<input type="email" placeholder="Email">
						<button type="submit"><i class="fas fa-paper-plane"></i></button>
					</form>
				</div>
			</div>
		</div>
	</div>
</div>
end footer

copyright
<div class="copyright">
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
</div>
end copyright

jquery
<script src="assets/js/jquery-1.11.3.min.js"></script>
bootstrap
<script src="assets/bootstrap/js/bootstrap.min.js"></script>
count down
<script src="assets/js/jquery.countdown.js"></script>
isotope
<script src="assets/js/jquery.isotope-3.0.6.min.js"></script>
waypoints
<script src="assets/js/waypoints.js"></script>
owl carousel
<script src="assets/js/owl.carousel.min.js"></script>
magnific popup
<script src="assets/js/jquery.magnific-popup.min.js"></script>
mean menu
<script src="assets/js/jquery.meanmenu.min.js"></script>
sticker js
<script src="assets/js/sticker.js"></script>
main js
<script src="assets/js/main.js"></script>

</body>
</html>--> 

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


<!-- 
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register</title>
</head> -->

