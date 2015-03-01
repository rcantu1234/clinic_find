angular.module('app.controllers',[])
.controller('HomeCtrl', function($scope,$http,$window,$state){
	console.log('home control');
	$http.get('https://sleepy-depths-5514.herokuapp.com/users').success(function(response){
	$scope.user =response[5].name;
	// $scope.user = 'Test value';
	})

	$scope.goClinicMap=function(){
		state.go('clinicmap');
	}

	$scope.goAppointments=function(){
	state.go('appointments');
	}
})

.controller('ClinicCtrl', function($scope,$http,$window,$state){
	console.log('clinic control');
	$scope.goHome = function() {
        $state.go('home');
        }
       function initialize() {
        var mapOptions = {
          center: { lat: -34.397, lng: 150.644},
          zoom: 8
        };
        var map = new google.maps.Map(document.getElementById('map-canvas'),
            mapOptions);
      }
      google.maps.event.addDomListener(window, 'load', initialize);
})

.controller('AppointCtrl', function($scope,$http,$window,$state){
	console.log('appoint control');
	$scope.goHome = function() {
        $state.go('home');
        }
    $http.get('http://tiny-pizza-server.herokuapp.com/collections/fancy-table').success(function(response){
	$scope.states =response;
	})

	
});
