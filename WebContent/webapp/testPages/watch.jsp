<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
</html>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
   
  <script src="../jslib/jquery-1.11.2.js"></script>
  
  <script src="../jslib/angular.js"></script>
  
  
  
  <script>
  	//$(function(){
  		var app = angular.module("test", []);

  		

  		app.controller("watchCtrl", ["$scope", function($scope) {
  			$scope.a = 0;
  			$scope.b = 0;
  			$scope.o = {name:'aaaa'};
  		  	$scope.show = function(){
  		  		$scope.o.name = "bbbb";
  		  	};
  		  	
  		    $scope.$watch(function(scope){
			 	return scope.o;
		  	}, function(){
		  		alert(11);
			  	console.log(arguments);
		  	},true);
  		  
  		  	$scope.$watch(function(scope){
		  		console.log('a = ' + scope.a);
  			 	return scope.a;
  		  	}, function(){
  			  	console.log(arguments);
  		  	});
  		  	
  		  	$scope.$watch(function(){
  		  		console.log(2222222222);
  			  	return $scope.b;
  		  	}, function(){
  		  		$scope.a = $scope.a + 1;
  			  	console.log(arguments);
  		  	});

  		}]);

  	//});
  </script>

</head>
<body>
	
<div ng-app="test">
    <div ng-controller="watchCtrl">
        <button ng-click="show()">click</button>a={{a}}
    </div>
</div> 

</body>
</html>