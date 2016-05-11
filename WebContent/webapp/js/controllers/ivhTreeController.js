function ivhTreeCtrl($scope) {
	$scope.bag = [{
	      label: 'Glasses',
	      value: 'glasses',
	      children: [{
	        label: 'Top Hat',
	        value: 'top_hat'
	      },{
	        label: 'Curly Mustache',
	        value: 'mustachio'
	      }]
	  }];

	$scope.awesomeCallback = function(node, tree) {
	    console.log(node)
	    console.log(tree)
	  };

	  $scope.otherAwesomeCallback = function(node, isSelected, tree) {
	    console.log(node)
	    console.log(isSelected)
	    console.log(tree)
	  }
};