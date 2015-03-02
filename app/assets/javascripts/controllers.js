angular.module('app.controllers',[])
.controller('HomeCtrl', function($scope,$http,$window,$state){
	
	console.log('home control');
	$http.get('/users.json').success(function(response){
	$scope.user =response[1].first_name;
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

})

.controller('AppointCtrl', function($scope,$http,$window,$state){
	console.log('appoint control');
	$scope.goHome = function() {
        $state.go('home');
        }
    $http.get('/appointments.json').success(function(response){
	$scope.doctor_name =response[0].doctor_name;
	$scope.appointment_time =response[0].appointment_time;
	$scope.location =response[0].location;
	$scope.doctor_phone_number =response[0].doctor_phone_number;
	$scope.notes =response[0].notes;
	})

});
