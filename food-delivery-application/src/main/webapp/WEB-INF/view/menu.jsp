<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset="ISO-8859-1">
		<title>Shopping|Products</title>
		<script src="/webjars/bootstrap/4.0.0/js/bootstrap.min.js"></script>
		<script src="/webjars/jquery/3.0.0/jquery.min.js"></script>
		<style type="text/css">
			.bg {
  /* The image used */
  background-image: url("https://mdbootstrap.com/img/Photos/Horizontal/Nature/full page/img(11).jpg");

  /* Half height */
  height: 50%;

  /* Center and scale the image nicely */
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
}
		</style>
	</head>
	<body>
		<div clas="container">
			<div class="row mt-5">
				<div class="col d-flex justify-content-center">
					<h2>Products List</h2>
				</div>
			</div>
			<div class="row mt-3">
				<div class="col d-flex justify-content-center">
					<spring:url value="/addToCart" var="myCartURL" />
					<form:form modelAttribute="productModel" method="post" action="${myCartURL }" cssClass="form">
					<div class="row">
						<table class="table table-stripped table-bordered">
							<thead>
								<tr>
									<th align="center">S.No</th>
									<th align="center">Item Name</th>
<!-- 									<th align="center">Description</th> -->
									<th align="center">Price</th>
									<th align="center">Quantity</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${menuList.menu}" var="items" varStatus="status">
									<tr scope="row">
										<td align="center"><input name="menu[${status.index}].food_code" value="${items.food_code}" readonly="true" /></td>
										<td align="center"><input name="menu[${status.index}].food_name" value="${items.food_name}" readonly="true" /></td>
										<td align="center"><input name="menu[${status.index}].food_code" value="${items.food_code}" readonly="true"/></td>
										<td align="center"><input name="menu[${status.index}].food_code" value="0"/></td>
										<td><input class="btn btn-primary" type="submit" value="Add to cart"></td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
					<div class="row  mt-3">
						<div class="col d-flex justify-content-between">
							<spring:url value="/mycart" var="cart" />
							<a class="btn btn-primary" href="${cart }" role="button">My Cart</a>
							<spring:url value="/myOrders" var="orders" />
							<a class="btn btn-primary" href="${orders }" role="button">My Orders</a>
						</div>
					</div>
						
					</form:form>
				</div>
			</div>
		</div>
	</body>
</html>