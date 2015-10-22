var swapImages = function(){
	var $active = $('#myGallery .active');
	var $next = ($('#myGallery .active').next().length > 0) ? $('#myGallery .active').next() : $('#myGallery img:first');

	$active.fadeOut(function(){
		$active.removeClass('active');
		$next.fadeIn().addClass('active');
	});
};


var inviteGuests = function() {
	var email = prompt("Please enter email", "example@example.com");
	if (email != null) {
		console.log("email: " + email);
	}
};


var numberClick = 1;
var showGuestsList = function() {
	numberClick += 1;
	if (numberClick % 2 === 0) {
		$('.love-story').css('opacity', "0.2");
		$('.show-guest-list').html("");
		$('.show-guest-list').css("background-color", "white");
		$('.view-all-guests').html("Hide Guests");

		var guests = gon.guests;
		for (var i = 0; i < guests.length; i++) {
			var p = $('<p />');
			p.html(guests[i]);
			$('.show-guest-list').append($('<p>' + p.html() + '</p>'));
		}
	} else {
		$('.show-guest-list').css("background-color", "");
		$('.love-story').css('opacity', "0.8");
		$('.guest-lists').hide();
		$('.view-all-guests').html("View Guests");
		$('.show-guest-list').html("");
	}
};


var numberClickLocation = 1;
var showLocation = function() {
	numberClickLocation += 1;
	if (numberClickLocation % 2 === 0) {
		$('.location').show();
		$('.view-location').html("Hide Location");
		google.maps.event.trigger(map, 'resize');
	} else {
		$('.location').hide();
		$('.view-location').html("View Location");
	}
};

var numberClickShowGuest = 1;
var showGuests = function() {
	numberClickShowGuest += 1;

	if (numberClickShowGuest % 2 === 0) {
		$('#show-guests').show();
		$('.guest-lists').show();
		$('.new-weddings').html("Hide Guests");
	} else {
		$('#show-guests').hide();
		$('.guest-lists').hide();
		$('.new-weddings').html("All Guests");
	}
};


$(document).ready(function(){
	setInterval('swapImages()', 3000);

	var numberOfClick = 0;

	$('#invite-guests').on('click', function() {
		inviteGuests();
	});


	$('.view-all-guests').on('click', function() {
		showGuestsList();
	});

	$('.view-location').on('click', function() {
		showLocation();
	})

	$('.new-weddings').on('click', function() {
		showGuests();
	});
});

