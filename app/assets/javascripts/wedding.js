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



$(document).ready(function(){
	setInterval('swapImages()', 3000);

	$('.guest-lists').hide();

	var numberOfClick = 0;
	$('#show-guests').on('click', function() {
		numberOfClick += 1;

		if (numberOfClick % 2 === 0) {
			$('.guest-lists').hide();
			$('#show-guests').html("Click here to see who is coming");
		} else {
			$('.guest-lists').show();
			$('#show-guests').html("Click to hide");
		}
	});

	$('#invite-guests').on('click', function() {
		inviteGuests();
	});
});

