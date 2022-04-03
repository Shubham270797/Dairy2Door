<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="Responsive Bootstrap4 Shop Template, Created by Imran Hossain from https://imransdesign.com/">

	<!-- title -->
	<title>View Complaint</title>

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
								<li class="current-list-item"><a href="index.html">Home</a>
								</li>
								<!-- <li><a href="about.html">About Us</a></li> -->
								<li class="current-list-item"><a href="#">Customer</a>
									<ul class="sub-menu">
										<li><a href="addCustomer.jsp">Add Customer</a></li>
								     <li><a href="/SupplierViews/allSubscriber">View Customer</a></li>
									 <li><a href="customerInArea.jsp">Customer In Area</a></li>
										<!-- <li><a href="removeCustomer.html">Remove Customer</a></li>
										<li><a href="updateCustomerAddress.html">Update Address</a></li>
										<li><a href="updateCustomerPassword.html">Update Password</a></li>
										<li><a href="updateCustomerMobileno.html">Update Mobile Number</a></li> -->
										
									</ul>
								</li>
								
								<li class="current-list-item"><a href="#">Subscription</a>
									<ul class="sub-menu">
										 <li><a href="addSubscription.jsp">Add Subscription</a></li>
										<!-- <li><a href="endSubscription.jsp">End Subscription</a></li> -->
										<li><a href="/SupplierViews/allSubscriber">View Subscriber</a></li>
										<!-- <li><a href="unDeliverdDate.html">Non Delivered Order</a></li> -->
										<!-- <li><a href="customerInArea.html">Customer In Area</a></li> -->
										
										
									</ul>
								</li>
								<li class="current-list-item"><a href="#">Order</a>
									<ul class="sub-menu">
										<li><a href="/SupplierViews/showAllOrders">Show Orders</a></li>
										<!-- <li><a href="acceptOrders.html">Accept Order</a></li>
										<li><a href="rejectOrder.html">Reject Order</a></li>
										<li><a href="deliveredOrder.html">Delivered Order</a></li> -->
										<!-- <li><a href="unDeliverdDate.html">Non Delivered Order</a></li> -->
										
									</ul>
								</li>
								<li class="current-list-item"><a href="#">Complaint</a>
									<ul class="sub-menu">
										<li><a href="/SupplierViews/showComplaints">View Complaint</a></li>
										<!-- <li><a href="addComment.html">Add Comment</a></li> -->
										
										
										
									</ul>
								</li>
								<li class="current-list-item"><a href="#">Bill Genration</a>
									<ul class="sub-menu">
											<li><a href="generateBill.html">Generate Bill</a></li>
										<!-- <li><a href="addComment.html">Add Comment</a></li> -->
										
										
										
									</ul>
								</li>
								<!-- <li><a href="customerBill.html">Bill Genration</a></li>
								<ul class="sub-menu">
								<li><a href="generateBill.html">Generate Bill</a></li>
								
										
										
										
								</ul>
							</li> -->
								
								<li>
									<div class="header-icons">
									</div>
								</li>
								<li><a  href="${pageContext.request.contextPath}/homeLogout">Logout</a></li>
								
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
							<!-- <p>Serving pure, safe and healthy drinking water that you deserve.</p> -->
							<h1>View Complaint</h1>
						</div>
					</div>
			</div>
		</div>
	</div>
	<!-- end breadcrumb section -->
<!-- check out section -->
<div align="center">
	<table border="1" align="center" width="80%" class="order-details">
                                        <thead>
                                            <tr>
                                                <th><b>Comaplaint Id</b></th>
                                                <th><b>Customer Id</b></th>
                                                <th><b>Complaint Info</b></th>
                                                <th><b>Complaint Date</b></th>
                                                <th><b>Complaint status</th>
												<th><b>Action</th>
                                                
                                            </tr>
                                        </thead>
                                        <tbody class="order-details-body">
                                        <c:forEach  var="complaint" items="${complaints}">
                                            <tr>
                                                <td>${complaint.complaintId}</td>
												<td>${complaint.customerId}</td>
                                                <td><div>${complaint.complaintInfo}</div></td>
                                                <td>${complaint.complaintDate}</td>
                                                <td>${complaint.complaintStatus}</td>
												<td><a href="addComment.html">Add Comment</a></td> 
                                            </tr>
                                            </c:forEach>
                                          <!--   <tr>
                                                <td>2</td>
												<td>2</td>
                                                <td><div>Received  spoiled Milk </div></td>
                                                <td>18/01/2022</td>
                                                <td>Resolved</td>
												<td><a href="addComment.html">Add Comment</a></td>
                                                
                                            </tr>
                                            <tr>
												<td>3</td>
												<td>3</td>
                                                <td><div>Milk Quality is not good</div></td>
                                                <td>30/01/2022</td>
												<td>Resolved</td>
												<td><a href="addComment.html">Add Comment</a></td>
                                                
                                            </tr> -->
                                            
                                        </tbody>
                                    </table>
                                    <!-- <a href="#" class="boxed-btn">Select Supplier</a>
                                    <br> -->
                                    <br>
                                </div>
                           
                <!-- end check out section -->
	


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
							<li> 503, Mayfair Tower S Phase-II, Wakdewadi, Shivajinagar
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
							<li><a href="${pageContext.request.contextPath}/homeLogout">Home</a></li>
							<li><a href="addCustomer.jsp">Add Customer</a></li>
							<li><a href="addSubscription.jspl">Add Subscription</a></li>
							<!-- <li><a href="OurSupplier.html">Our Supplier</a></li> -->
							<!-- <li><a href="checkbylocation.html">Check By Location</a></li> -->
							<!-- <li><a href="services.html">Shop</a></li>
							<li><a href="news.html">News</a></li> -->
							<!-- <li><a href="contact.html">Contact Us</a></li> -->
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