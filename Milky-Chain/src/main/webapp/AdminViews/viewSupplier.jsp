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
                    <!-- logo -->
                    <div class="site-logo" >
                        <a href="index.jsp">
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
                            <li class="current-list-item"><a href="${pageContext.request.contextPath}/homeLogout">Home</a>
                            </li>
                            <!-- <li><a href="about.html">About  Us</a></li> -->
                            <li class="current-list-item"><a href="#">Supplier</a>
                                <ul class="sub-menu">
                                    <li><a href="addSupplier.jsp">Add Supplier</a></li>
                                    <!-- <li><a href="removeSupplier.html">Remove Supplier</a></li>
                                    <li><a href="updateSupplierAddress.html">Update Address</a></li>
                                    <li><a href="updateSupplierPassword.html">Update Password</a></li>
                                    <li><a href="updateSupplierContact.html">Update Contact</a></li> -->
                                    <li><a href="/AdminViews/viewSupplierList">View Supplier</a></li>
                                </ul>
                            </li>
							<li class="current-list-item"><a href="#">Product</a>
                                <ul class="sub-menu">
                                    <li><a href="addProduct.jsp">Add Product</a></li>
                                    <li><a href="changeRate.jsp">Change Rate</a></li>
                                </ul>
                            </li>
                            
                            <!-- <li><a href="shop.html">Shop</a>
                                <ul class="sub-menu">
                                    <li><a href="shop.html">Shop</a></li>
                                    <li><a href="checkout.html">Check Out</a></li>
                                    <li><a href="cart.html">Cart</a></li>
                                </ul>
                            </li> -->
                            <!-- <li><a href="login.html">Login</a></li>
                            <li>
                                <div class="header-icons">
                                    <a class="shopping-cart" href="cart.html"><i class="fas fa-shopping-cart"></i></a>
                                </div>
                            </li> -->
                            <!-- <li><a href="customer.html">Customer</a></li>
                            <li>
                                <div class="header-icons">
                                </div>
                            </li>
                            <li><a href="supplier.html">Supplier</a></li>
                            <li>
                                <div class="header-icons">
                                </div>
                            </li> -->
                            <!-- <li><a href="">Admin</a></li> -->
                            <li>
                                <div class="header-icons">
                                </div>
                            </li>
                            <li><a href="${pageContext.request.contextPath}/logout">Logout</a></li>
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
						<p>in your service always</p>
						<h1> Our Suppliers</h1>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- end breadcrumb section -->

	<!-- check out section -->
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
                                    <th><b>Action</b></th>
								</tr>
							</thead>
							<tbody class="order-details-body">
							<c:forEach  var="supplier" items="${supplierList}">
								<tr>
								    <td>${supplier.supplierId}</td>
									<td>${supplier.supplierFname}  ${supplier.supplierLname}</td>
									<td>${supplier.supplierMobileNo}</td>
                                    <td>${supplier.supplierEmail}</td>
                                    <td><p>${supplier.supplierAddress}</p></td>
                                    <td>${supplier.supplerWorkAreaPincode}</td>
									<td><a href="/AdminViews/updateSupplierInDb?supplierId=${supplier.supplierId}">Update</a>
										<a href="/AdminViews/deleteSupplierFromDb?supplierId=${supplier.supplierId}">Remove</a></td>
								</tr>
								</c:forEach>
							</tbody>
						</table>
						

                    </div>
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
                       <li><a href="${pageContext.request.contextPath}/logout">Home</a></li>
                        <li><a href="addsupplier.jsp">Add Supplier</a></li>
                        <li><a href="/AdminViews/viewSupplierList">View Supplier</a></li>
                        <li><a href="addProducts.jsp">Add Product</a></li>
                        <li><a href="changeRate.jsp">changeRate</a></li>
                        <!-- <li><a href="checkbylocation.html">Check By Location</a></li> -->
                        <!-- <li><a href="services.html">Shop</a></li>
                        <li><a href="news.html">News</a></li> -->
                        
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