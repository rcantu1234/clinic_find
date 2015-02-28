angular.module('app', ['app.controllers','ui.router'])
.config(function($stateProvider,$urlRouterProvider){
	$stateProvider
	.state('home',{
		url: '/',
		templateUrl: 'templates/home.html',
		controller: 'HomeCtrl'
	})
	.state('clinicmap',{
		url:'/clinicmap',
		templateUrl: 'templates/clinicmap.html',
		controller: 'ClinicCtrl'
	})
	.state('appointments',{
		url: '/appointments',
		templateUrl: 'templates/appointments.html',
		controller: 'AppointCtrl'
	});
	$urlRouterProvider.otherwise("/");
});
