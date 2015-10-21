var map;

$(document).ready(function() {

	if ($('.map-canvas').length <= 0) {
		return;
	}

	var address = gon.address;

	var mapCanvas = document.getElementsByClassName('map-canvas')[0];

	var geocoder = new google.maps.Geocoder();

	geocoder.geocode({'address': address}, function(results, status) {
		if (status == google.maps.GeocoderStatus.OK) {
			var latitude = results[0].geometry.location.lat();
			var longitude = results[0].geometry.location.lng();

			var mapOptions = {
				center: new google.maps.LatLng(latitude, longitude),
				zoom: 12,
				mapTypeId: google.maps.MapTypeId.ROADMAP
			};

			map = new google.maps.Map(mapCanvas, mapOptions);


			marker = new google.maps.Marker({
				position: { lat: latitude, lng: longitude },
				map: map,
				label: 'W' 
			});

			var infowindow = new google.maps.InfoWindow({
				content: address
			});

			marker.addListener('mouseover', function() {
				infowindow.open(map, marker);
			});
		} 
	});


});

 	
