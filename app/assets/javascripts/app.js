angular.module('app', ['app.controllers','ui.router'])
.config(function($stateProvider,$urlRouterProvider){
	$stateProvider
	.state('home',{
		url: '/',
		templateUrl: 'templates/Home.html',
		controller: 'HomeCtrl'
	})
	.state('clinicMap',{
		url:'/clinicMap',
		templateUrl: 'templates/ClinicMap.html',
		controller: 'ClinicCtrl'
	})
	.state('Appointments',{
		url: '/Appointments',
		templateUrl: 'templates/Appointments',
		controller: 'AppointCtrl'
	});
	$urlRouterProvider.otherwise("/");
});
