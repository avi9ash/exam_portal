
angular.module('myApp', []).controller('Main', function ($scope) {
	$scope.range = function(min, max, step){
		step = step || 1;
		var input = [];
		for (var i = min; i <= max; i += step) input.push(i);
		return input;
	};

	$scope.getId = function(k){
		var n = k;
		return n;
	};

	$scope.clicked = 4;
	$scope.ccolor = "#FFFFFF";
	/*$scope.qSelect = function(btn){
		var property = document.getElementById(btn);
		if ($scope.count == 0) {
			property.style.backgroundColor = "#FFFFFF"
			$scope.count = 1;        
		}
		else {
			property.style.backgroundColor = "#0B73DB"
			$scope.count = 0;
		}
	}

	$scope.buttonClick= function (s){
		$scope.selectedButton = s; 
	};*/
	$scope.btn = 'q';
 	$scope.qSelect = function(n) {
 		var property = document.getElementById("q"+$scope.clicked);
 		property.style.backgroundColor = $scope.ccolor;
  	var property = document.getElementById("q"+n);
  	$scope.clicked = n;
  	$scope.ccolor = property.style.backgroundColor;
		property.style.backgroundColor = "#0B73DB";
 	};

 	$scope.qMark = function(n) {
  	var property = document.getElementById("q"+n);
  	var a = property.style.backgroundColor;
  	if (a === "rgb(255, 0, 0)") 
  	{
  		property.style.backgroundColor = "#0B73DB";
  		$scope.ccolor = "#FFFFFF";
  	}
  	else
  	{
			property.style.backgroundColor = "#FF0000";
			$scope.ccolor = property.style.backgroundColor;
		}
 	};
 	$scope.qAnswer = function(n) {
  	var property = document.getElementById("q"+n);
  	property.style.backgroundColor = "#17EE42";
		$scope.ccolor = property.style.backgroundColor;
 	};

 	$scope.qClear = function(n) {
 		var ele = document.getElementsByName("answer");
   	for(var i=0;i<ele.length;i++)
   		ele[i].checked = false;
   	var property = document.getElementById("q"+n);
  	property.style.backgroundColor = "#0B73DB";
		$scope.ccolor = "#FFFFFF";
  };


 	// Get the modal
  var modal = document.getElementById('myModal');

  // Get the button that opens the modal
  var btn = document.getElementById("sumbit");

  // Get the <span> element that closes the modal
  var span = document.getElementsByClassName("close")[0];

  // When the user clicks the button, open the modal 
  $scope.dialogBox = function() {
      modal.style.display = "block";
  }

  // When the user clicks on <span> (x), close the modal
  $scope.close = function() {
      modal.style.display = "none";
  }

  // When the user clicks anywhere outside of the modal, close it
  /*window.onclick = function(event) {
      if (event.target == modal) {
          modal.style.display = "none";
      }
  }*/



});
/*var myApp = angular.module('myApp', []);
myApp.filter('range', function() {
	return function(input, total) {
		total = parseInt(total);
		for (var i=0; i<total; i++)
			input.push(i);
		return input;
	};
});

function Main($scope){
}   */ 

// Set the date we're counting down to
var countDownDate = new Date().getTime() + 1000*60*60*3 + 2000; // 1st years at least deserve 3 hours for 100 questions
var x = setInterval(function() {
		var now = new Date().getTime();
		var distance = countDownDate - now;
		var hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
		var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
		var seconds = Math.floor((distance % (1000 * 60)) / 1000);
		if (hours < 10) {
				hours = "0" + hours;
		}
		if (minutes < 10) {
				minutes = "0" + minutes;
		}
		if (seconds < 10) {
				seconds = "0" + seconds;
		}
		document.getElementById("demo").innerHTML = (hours + " : " + minutes + " : " + seconds);
		if (distance < 0) {
				clearInterval(x);
				document.getElementById("demo").innerHTML = "EXPIRED";
		}
}, 1000);