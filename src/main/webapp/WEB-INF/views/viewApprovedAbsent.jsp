<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
	<meta name="description" content="">
	<meta name="author" content="">
	<link rel="icon" href="../../favicon.ico">

	<title>Fig & Olive</title>

	<link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/css/carousel.css" rel="stylesheet">
	
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.5.2/jquery.min.js"></script>
	<script src="http://cdnjs.cloudflare.com/ajax/libs/modernizr/2.8.2/modernizr.js"></script>
		
	<!-- Bootstrap core JavaScript
	================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script>window.jQuery || document.write('<script src="js/jquery.min.js"><\/script>')</script>
	<script src="js/bootstrap.min.js"></script>
	
</head>
<body>
<div class="se-pre-con"></div>
		<div class="container marketing">
			<!-- <div class="jumbotron searching"> -->
				<div class="col-md-12">
				<c:if test="${!empty absentList}">
				<table class="table">
				  <thead class="thead-default">
				    <tr>
				      <th>Absent Id</th> 
				      <th>Leaving Date</th>
				      <th>Return Date</th>
				      <th>isApproved</th> 
				      <th>Doctor Id</th>
				      <th>Doctor Name</th>
				    </tr>
				  </thead>
				  
				  <c:forEach items= "${absentList}" var="absent">
				  <tbody>
				    <tr>
				      <td><c:out value='${absent.absentId}'/></td> 
				      <td><c:out value='${absent.leavingDate}'/></td>
				      <td><c:out value='${absent.returnDate}'/></td>
				      <td><c:out value='${absent.isApproved}'/></td> 
				      <td><c:out value='${absent.doctor.getDoctorId()}'/></td> 
				      <td><c:out value='${absent.doctor.getDoctorName()}'/></td>    
				    </tr>
				  </tbody>
				  </c:forEach>
				</table>
				</c:if>
		 	</div>
		<!-- </div> -->
	</div>

</body>
</html>