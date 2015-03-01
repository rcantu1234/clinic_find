// angular.module('basic.services', [])

// .factory('RandomValue', function() {
// 	return function (geoLocation) {
// 	var map;

// function initialize() {
//   var mapOptions = {
//     zoom: 6
//   };
//   map = new google.maps.Map(document.getElementById('map-canvas'),
//       mapOptions);

//   // Try HTML5 geolocation
//   if(navigator.geolocation) {
//     navigator.geolocation.getCurrentPosition(function(position) {
//       var pos = new google.maps.LatLng(position.coords.latitude,
//                                        position.coords.longitude);

//       var infowindow = new google.maps.InfoWindow({
//         map: map,
//         position: pos,
//         content: 'Location found using HTML5.'
//       });

//       map.setCenter(pos);
//     }, function() {
//       handleNoGeolocation(true);
//     });
//   } else {
//     // Browser doesn't support Geolocation
//     handleNoGeolocation(false);
//   }
// }

// function handleNoGeolocation(errorFlag) {
//   if (errorFlag) {
//     var content = 'Error: The Geolocation service failed.';
//   } else {
//     var content = 'Error: Your browser doesn\'t support geolocation.';
//   }

//   var options = {
//     map: map,
//     position: new google.maps.LatLng(60, 105),
//     content: content
//   };

//   var infowindow = new google.maps.InfoWindow(options);
//   map.setCenter(options.position);
// }

// google.maps.event.addDomListener(window, 'load', initialize);

// };







// angular.module('basic.services', [])

// .factory('RandomValue', function(){
// 	return function (array) {
// 		var randomSelect=Math.floor(Math.random() * array.length);
// 		return array[randomSelect];
// 	}
// }

// .factory('StudentNames', function(){
// 	var twoStudents = function(array) {

// 		var firstRandom = Math.floor(Math.random() * array.length);


// 		var secondRandom = Math.floor(Math.random() * array.length);

// 			while(firstRandom === secondRandom) {
// 				firstRandom++;
// 			}

// 		var studentOneArray = array[firstRandom];
// 		var studentTwoArray = array[secondRandom];
		
// 		return studentOneArray + ", " + studentTwoArray
// 	}
// 	return twoStudents;
// })

// .factory('Dash', function() {
// 	var noSpace = function(dashSymbol) {

// 	var spaceFill = string.replace(/ /g, "-");
// 	return spaceFill
// 	}
// 	return noSpace;
// })
