<%-- 
    Document   : admin
    Created on : Dec 14, 2019, 10:07:51 PM
    Author     : Pham Phong
--%>

<%@page import="dao.CategoryDAOImpl"%>
<%@page import="model.Category"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		 <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

		<title>Add_product</title>

 		<!-- Google font -->
 		<link href="https://fonts.googleapis.com/css?family=Montserrat:400,500,700" rel="stylesheet">

 		<!-- Bootstrap -->
 		<link type="text/css" rel="stylesheet" href="css/bootstrap.min.css"/>

 		<!-- Slick -->
 		<link type="text/css" rel="stylesheet" href="css/slick.css"/>
 		<link type="text/css" rel="stylesheet" href="css/slick-theme.css"/>

 		<!-- nouislider -->
 		<link type="text/css" rel="stylesheet" href="css/nouislider.min.css"/>

 		<!-- Font Awesome Icon -->
 		<link rel="stylesheet" href="css/font-awesome.min.css">

 		<!-- Custom stlylesheet -->
		 <link type="text/css" rel="stylesheet" href="css/style1.css"/>
		 <link type="text/css" rel="stylesheet" href="css/add_product.css">

 		<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
 		<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
 		<!--[if lt IE 9]>
 		  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
 		  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
 		<![endif]-->

    </head>
	<body>
                
		<div class="section">
			<!-- container -->
			<div class="container">
				

				


				<div class="row">
					<div class="col-md-12">
						<!-- Form Elements -->
						<div class="panel panel-default">
							<div class="panel-heading">Add Product</div>
							<div class="panel-body">
								<div class="row">
									<div class="col-md-6">
										<h3>Info Product:</h3>

<!--										<form role="form" action="AddProduct" method="get">-->
                                                                                <form role="form" action="AddProduct" method="post" enctype="multipart/form-data">
<!--											<div class="form-group">
													<label>Product_id:</label> <input class="form-control"
														placeholder="please enter Product_Id" name="product_id" />
											</div>-->
											<div class="form-group">
												<label>Name</label> <input class="form-control"
													placeholder="please enter Product Name" name="name" />
											</div>
											<div class="form-group">
												<label>Price</label> <input class="form-control"
													placeholder="please enter Price" type="number" name="price" />
											</div>
                                                                                        <div class="form-group">
												<label>Producer</label> <input class="form-control"
													placeholder="please enter Producer" type="name" name="producer" />
											</div>
											<div class="form-group">
												<label>Description </label>
												<br>
												<textarea rows="8" cols="72" name="des" id="editer"></textarea>

											</div>

											<div class="form-group">
												<label>Category_id</label>
												<div class="checkbox">
													
													<select name="category">
<!--														<c:forEach items="${categories_id}" var="c">
															<option value="${c.id}">${c.name}</option>
														</c:forEach>-->
                                                                                                            <% 
                                                                                                                List<Category> list=new CategoryDAOImpl().getList();
                                                                                                                for (Category c:list) {
                                                                                                            %>
                                                                                                                    <option value=<%=c.getMa_the_loai()%>><%=c.getTen_the_loai() %></option>
                                                                                                            <%
                                                                                                                }
                                                                                                            %>
													</select>
												</div>

											</div>
											<div class="form-group">
												<label>image</label> <input type="file" name="image" />
											</div>
											<button type="submit" class="btn btn-default">Add</button>
											<button type="reset" class="btn btn-primary">Reset</button>
										</form>


									</div>
								</div>
							</div>
						</div>
						<!-- End Form Elements -->
					</div>
				</div>		
			</div>
			<!-- /container -->
		</div>
		<!-- /SECTION -->
		
<!-- ====================================================== -->
		

		<!-- FOOTER -->
		

		<!-- jQuery Plugins -->
		<script src="js/jquery.min.js"></script>
		<script src="js/bootstrap.min.js"></script>
		<script src="js/slick.min.js"></script>
		<script src="js/nouislider.min.js"></script>
		<script src="js/jquery.zoom.min.js"></script>
		<script src="js/main.js"></script>

	</body>
</html>

