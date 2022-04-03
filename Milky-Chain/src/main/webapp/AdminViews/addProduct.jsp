<!DOCTYPE html>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="Responsive Bootstrap4 Shop Template, Created by Imran Hossain from https://imransdesign.com/">

	<!-- title -->
	<title>Add Product</title>

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
						
						<h1>Add Product</h1>
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
				<!-- <div class="col-lg-15">
                   
					<div class="checkout-accordion-wrap">
						<div class="accordion" id="accordionExample">
						  <div class="card single-accordion">
						    <div class="card-header" id="headingOne">
						      <h5 class="mb-0">
 -->



<!-- 
                                <body>
                                    <div id="wrapper">
                                        
                                    <table align='center' cellspacing=1 cellpadding=1 id="data_table" border=1>
                                    <tr>
                                    <th>Product Id</th>
                                    <th>Product Name</th>
                                    <th>Milk Type</th>
                                    <th>Per day Production in Liters</th>
                                    <th>Price</th>
                                    </tr>
                                    
                                    <tr id="row1">
                                    <td id="id_row1">11</td>   
                                    <td id="name_row1">Skimmed Milk</td>
                                    <td id="type_row1">Skimmed</td>
                                    <td id="production_row1">2000</td>
                                    <td id="price_row1">80/-</td>
                                    <td>
                                    <input type="button" id="edit_button1" value="Edit" class="edit" onclick="edit_row('1')">
                                    <input type="button" id="save_button1" value="Save" class="save" onclick="save_row('1')">
                                    <input type="button" value="Delete" class="delete" onclick="delete_row('1')">
                                    </td>
                                    </tr>
                                    
                                    <tr id="row2">
                                        <td id="id_row2">12</td> 
                                        <td id="name_row2">Pasturised Milk</td>
                                        <td id="type_row2">Pasturised</td>
                                        <td id="production_row2">5000</td>
                                        <td id="price_row2">70/-</td>
                                    <td>
                                    <input type="button" id="edit_button2" value="Edit" class="edit" onclick="edit_row('2')">
                                    <input type="button" id="save_button2" value="Save" class="save" onclick="save_row('2')">
                                    <input type="button" value="Delete" class="delete" onclick="delete_row('2')">
                                    </td>
                                    </tr>
                                    
                                     
                                    <tr id="row3">
                                        <td id="id_row3">13</td> 
                                        <td id="name_row3">Skimmed Milk</td>
                                        <td id="type_row3">Skimmed</td>
                                        <td id="production_row3">2000</td>
                                        <td id="price_row3">60/-</td>
                                    <td>
                                    <input type="button" id="edit_button3" value="Edit" class="edit" onclick="edit_row('3')">
                                    <input type="button" id="save_button3" value="Save" class="save" onclick="save_row('3')">
                                    <input type="button" value="Delete" class="delete" onclick="delete_row('3')">
                                    </td>
                                    </tr>

                         
                                    <tr> -->
                      <div class="card-body">
                       <div class="billing-address-form">
                          <div class="customer-sign-up">
                         <form:form method="post" action="/AdminViews/addProductInDb" modelAttribute="product">
                         <label for="productName">Product Name</label>
						<p><input type="text" name="productName" id="productName"placeholder="Product Name"></p>
                        <!-- supplierPassword" -->
                        <label for="milkType">Milk Type</label>
						<p><input type="text" name="milkType" id="milkType" placeholder="milkType"></p>
						<!-- supplierWorkArea-->
                        <label for="productionPerDayLiter">Production/day Liter</label>
						<p><input type="text" name="productionPerDayLiter" id="productionPerDayLiter"placeholder="Production Per Day Liter"></p>
                        <!--Pincode -->
                       <label for="pricePerLiter">Price/Liter</label>
                       <p><input type="text" name="pricePerLiter" id="pricePerLiter" placeholder="Price"></p>
                       <button type="submit">Register</button>
                          </form:form>
                          </div>
                          </div>
                          </div>
                          </div>
                          </div>
 </div>
                                                                     
                        <!--                 <td><input type="button" class="add" onclick="add_row();" value="Add Row"></td>
                                    </tr>
                                    
                                    
                                    
                                    </table>
                                    </div>
                                    <script>function edit_row(no)
                                        {
                                         document.getElementById("edit_button"+no).style.display="none";
                                         document.getElementById("save_button"+no).style.display="block";
                                            
                                         var name=document.getElementById("name_row"+no);
                                         var type=document.getElementById("type_row"+no);
                                         var production=document.getElementById("production_row"+no);
                                         var price=document.getElementById("price_row"+no);
                                            
                                         var name_data=name.innerHTML;
                                         var type_data=country.innerHTML;
                                         var production_data=age.innerHTML;
                                         var price_data=age.innerHTML;
                                            
                                         name.innerHTML="<input type='text' id='name_text"+no+"' value='"+name_data+"'>";
                                         type.innerHTML="<input type='text' id='type_text"+no+"' value='"+type_data+"'>";
                                         production.innerHTML="<input type='text' id='production_text"+no+"' value='"+production_data+"'>";
                                         price.innerHTML="<input type='text' id='price_text"+no+"' value='"+price_data+"'>";
                                        }

                                        function save_row(no)
                                {
                                var name_val=document.getElementById("name_text"+no).value;
                                var type_val=document.getElementById("type_text"+no).value;
                                var production_val=document.getElementById("production_text"+no).value;
                                var price_val=document.getElementById("price_text"+no).value;

                                document.getElementById("name_row"+no).innerHTML=name_val;
                                document.getElementById("type_row"+no).innerHTML=type_val;
                                document.getElementById("production_row"+no).innerHTML=production_val;
                                document.getElementById("price_row"+no).innerHTML=price_val;

                                document.getElementById("edit_button"+no).style.display="block";
                                document.getElementById("save_button"+no).style.display="none";
                                }

                                function delete_row(no)
                                {
                                document.getElementById("row"+no+"").outerHTML="";
                                }

                                function add_row()
                                {
                                var new_name=document.getElementById("new_name").value;
                                var new_type=document.getElementById("new_type").value;
                                var new_production=document.getElementById("new_production").value;
                                var new_price=document.getElementById("new_price").value;
                                    
                                var table=document.getElementById("data_table");
                                var table_len=(table.rows.length)-1;
                                var row = table.insertRow(table_len).outerHTML="<tr id='row"+table_len+"'><td id='name_row"+table_len+"'>"+new_name+"</td><td id='country_row"+table_len+"'>"+new_country+"</td><td id='age_row"+table_len+"'>"+new_age+"</td><td><input type='button' id='edit_button"+table_len+"' value='Edit' class='edit' onclick='edit_row("+table_len+")'> <input type='button' id='save_button"+table_len+"' value='Save' class='save' onclick='save_row("+table_len+")'> <input type='button' value='Delete' class='delete' onclick='delete_row("+table_len+")'></td></tr>";

                                document.getElementById("new_name").value="";
                                document.getElementById("new_type").value="";
                                document.getElementById("new_production").value="";
                                document.getElementById("new_price").value="";
                                }
                                    -->     
                                        </script>
                                    
                                    </body>
<!-- 					

                                 <div class="col-lg-4">
                                    <div class="order-details-wrap">
                                        <table class="order-details">

                                           
                                          <label for="start">Start month:</label> 
                                 <input type="date" value="2017-06-01">

                                             <h1>Customer Name</h1>
                                            <thead>
                                                <tr>
                                                    <th><b>Product Name</b></th>
                                                    <th><b>Product Type</b></th>
                                                    <th><b>Production per day Liters</b></th>
                                                    <th><b>Price per Liter</b></th>
                                                    
                                                </tr>
                                            </thead>
                                           
                                                
                                                
                                                <tr>
                                                    <td>abc</td>
                                                    <td>pasturised milk </td>
                                                    <td>1000</td>
                                                    <td><p>	50/-</p></td>
                                                   
                                                </tr>

                                            
                                                <tr>
                                                    <td>def</td>
                                                    <td>skimmed milk</td>
                                                    <td>2200</td>
                                                    <td><p>70/-</p></td>
                                                   
                                                </tr>
                                                <tr>
                                                    <td>xyz</td>
                                                    <td>tonned milk</td>
                                                    <td>3000</td>
                                                    <td><p>100/-</p></td>
                                                    
                                                </tr>
                                                
                                            </tbody>
                                        </table>
                                       
                                       
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>  -->
                    <!-- end check out section -->
                
                
              
                
                
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
                                        <li>Mayfair Tower S Phase-II, Wakdewadi, Shivajinagar
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