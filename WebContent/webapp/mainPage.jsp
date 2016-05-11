<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
</html>
<html lang="en" ng-app="myApp">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<script>
		<%
		String basePath = request.getScheme() + "://"
				+ request.getServerName() + ":" + request.getServerPort()
				+ request.getContextPath() + "/";
		%>
		var BASE_URL = "<%=basePath%>";
	</script>
	
  <link rel="stylesheet" href="css/bootstrap.css">
  <link rel="stylesheet" href="css/myStyle.css">
  <link rel="stylesheet" href="css/ivh-treeview.css">
  <link rel="stylesheet" href="css/ivh-treeview-theme-basic.css">
  <style type="text/css">
  	a{
  		  padding: 0 5px;
  	}
  </style>
   
  <!-- 引入第三方库 -->
  <script src="jslib/jquery-1.11.2.js"></script>
  <script src="jslib/angular.js"></script>
  <script src="jslib/angular-route.js"></script>
  <script src="jslib/ivh-treeview.js"></script>
  
  <!-- 引入依赖的module -->
  <script src="js/dataservice/ServiceTest.js"></script>
  <script src="js/dataservice/DataService.js"></script>
  <script src="js/dataservice/SharedService.js"></script>
  
  <!-- 主模块的定义 -->
  <script src="js/app.js"></script>
  
  <!-- 页面中使用的指令 --> 
  <script src="js/ui/UIDirective.js"></script>
  
  <!--  -->
  <script src="js/controllers/dataBindController.js"></script>
  <script src="js/controllers/directiveController.js"></script>
  <script src="js/controllers/scrollController.js"></script>
  <script src="js/controllers/serviceController.js"></script>
  <script src="js/controllers/ivhTreeController.js"></script>
</head>
<body>
	<nav class="menu">
		<h3 style="border-bottom: 1px solid gray;">
			<a href="#/dataBindTest">Data Binding</a>
			<a href="#/directiveTest">Directive Demo</a> 
			<!-- <a href="#/scroll">Scroll Demo</a> -->
			<a href="#/serviceTest">Service Demo</a>
			<a href="#/ivhTreeTest">IVH Tree Demo</a>
		</h3>
	</nav>
	<div ng-view></div>

</body>
</html>