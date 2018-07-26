
angular.module('myApp', []).controller('Main', function ($scope) {
  $scope.range = function(min, max, step){
    step = step || 1;
    var input = [];
    for (var i = min; i <= max; i += step) input.push(i);
    return input;
  };

  $scope.id = 0;
  
  $scope.getId = function(k){
    var n = k;
    return n;
  };
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


var app = angular.module('ng_questions', []);
    app.controller('myController', function($scope, $http) {
        $http.get('questions.json')
            .then(function(res){
                $scope.questions = res.data;
            });
    });

angular.bootstrap(document.getElementById("quest"), ['ng_questions']);


function showQuestion() {
    
      if (window.XMLHttpRequest) {
          // code for IE7+, Firefox, Chrome, Opera, Safari
          xmlhttp = new XMLHttpRequest();
      } else {
          // code for IE6, IE5
          xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
      }
      xmlhttp.onreadystatechange = function() {
          if (this.readyState == 4 && this.status == 200) {
              document.getElementById("quest1").innerHTML = this.responseText;
          }
      };
      //$GLOBALS['q_id'] += 1;
      xmlhttp.open("GET","display_question.php",true);
      xmlhttp.send();
    
}
