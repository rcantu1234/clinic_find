angular.module('app', ['app.controllers','ui.router'])
.config(function($stateProvider,$urlRouterProvider){
	$stateProvider
	.state('home',{
		url: '/',
		templateUrl: 'templates/Home.html',
		controller: 'HomeCtrl'
	})
	.state('clinicmap',{
		url:'/clinicmap',
		templateUrl: 'templates/ClinicMap.html',
		controller: 'ClinicCtrl'
	})
	.state('appointments',{
		url: '/appointments',
		templateUrl: 'templates/Appointments.html',
		controller: 'AppointCtrl'
	});
	$urlRouterProvider.otherwise("/");
});
