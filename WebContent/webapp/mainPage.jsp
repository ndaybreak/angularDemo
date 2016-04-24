<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
</html>
<html lang="en" ng-app="myApp">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<script>
		<%
		String basePath = request.getScheme() + "://"
				+ request.getServerName() + ":" + request.getServerPort()
				+ request.getContextPath() + "/";
		%>
		var BASE_URL = "<%=basePath%>";
	</script>
  <link type="text/css" rel="stylesheet" href="css/register.css">
  <link rel="stylesheet" href="css/jquery-ui.css">
  <link rel="stylesheet" href="css/style.css">
  <style type="text/css">
  	a{
  		  padding: 0 5px;
  	}
  </style>
   
  <script src="jslib/jquery-1.11.2.js"></script>
  <!-- <script src="jslib/jquery-ui-1.11.0.js"></script> -->
  
  <script src="jslib/angular.js"></script>
  <script src="jslib/angular-route.js"></script>
  
  <script src="js/dataservice/ServiceTest.js"></script>
  <script src="js/dataservice/DataService.js"></script>
  <script src="js/dataservice/SharedService.js"></script>
  
  <script src="js/app.js"></script>
   
  <script src="js/ui/UIDirective.js"></script>
  
  <script src="js/controllers/dataBindController.js"></script>
  <script src="js/controllers/directiveController.js"></script>
  <script src="js/controllers/scrollController.js"></script>
  <script src="js/controllers/serviceController.js"></script>
</head>
<body>
	<nav class="menu">
		<h2 style="border-bottom: 1px solid gray;">
			<a href="#/dataBindTest">Data Binding</a>
			<a href="#/directiveTest">Directive Demo</a> 
			<!-- <a href="#/scroll">Scroll Demo</a> -->
			<a href="#/serviceTest">Service Demo</a>
		</h2>
	</nav>
	<div ng-view></div>

</body>
</html>