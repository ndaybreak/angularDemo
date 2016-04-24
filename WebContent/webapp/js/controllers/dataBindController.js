function dataBindCtrl($scope, AdminService, check){
	$scope.myName = 'aaa';
	
	$scope.$watch('myName',function(newVal,oldVal){
		console.log(newVal);
	});
	$scope.change = function(){
		$scope.myName = 'bbb';
	};
	
	$scope.getData = function(){
		AdminService.getTableData(function(result){
			alert(result.data);
		});
	};
	
	$scope.checkNumber = function(){
		var result = check.exec($scope.number, ['onlyNumber']);
		if(!result[0]){
			$scope.errorMesg = 'not only number';
		}else{
			$scope.errorMesg = '';
		}
	};
}