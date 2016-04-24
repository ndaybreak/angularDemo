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

  		app.directive("increasea", function() {
  		    return function (scope, element, attr) {
  		        element.on("click", function() {
  		            scope.a++;
  		            scope.$digest();
  		        });
  		    };
  		});

  		app.directive("increaseb", function() {
  		    return function (scope, element, attr) {
  		        element.on("click", function() {
  		            scope.b++;
  		            //scope.$digest();    
  		          	scope.$apply();
  		        });
  		    };
  		});

  		app.controller("OuterCtrl", ["$scope", function($scope) {
  		    $scope.a = 1;

  		    $scope.$watch("a", function(newVal) {
  		        console.log("a:" + newVal);
  		    });

  		    $scope.$on("test", function(evt) {
  		        $scope.a++;
  		    });
  		}]);

  		app.controller("InnerCtrl", ["$scope", function($scope) {
  		    $scope.b = 2;

  		    $scope.$watch("b", function(newVal) {
  		        console.log("b:" + newVal);
  		        $scope.$emit("test", newVal);
  		    });
  		}]);
  	//});
  </script>

</head>
<body>
	
<div ng-app="test">
    <div ng-controller="OuterCtrl">
        <div ng-controller="InnerCtrl">
            <button increaseb>increase b</button>
            <span ng-bind="b"></span>
        </div>
        <button increasea>increase a</button>
        <span ng-bind="a"></span>
    </div>
</div> 

</body>
</html>