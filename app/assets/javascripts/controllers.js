angular.module('app.controllers',[])
.controller('HomeCtrl', function($scope,$http,$window,$state){
	console.log('home control');
	$http.get('http://tiny-pizza-server.herokuapp.com/collections/fancy-table').success(function(response){
	$scope.user =response[5].name;
	// $scope.user = 'Test value';
	})

	$scope.goClinicMap=function(){
		state.go('clinicmap');
	}

	$scope.goAppointments=function(){
	state.go('appointments');

})

.controller('ClinicCtrl', function($scope,$http,$window,$state){
	console.log('clinic control');
	$scope.goHome = function() {
        $state.go('home');
        }
})

.controller('AppointCtrl', function($scope,$http,$window,$state){
	console.log('appoint control');
	$scope.goHome = function() {
        $state.go('home');
        }
    $http.get('http://tiny-pizza-server.herokuapp.com/collections/fancy-table').success(function(response){
	$scope.user =response[].name;
	}
	
});
