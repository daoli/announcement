var announcement_height;

$(document).ready(function(){
	// Place after the body
	$('#announcement').prependTo('body');

	// Hide with margin
	$('#announcement').css({
		'margin-top' : -'1500px',
	});

	// Close button click
	$('#announcement-close-button').click(function(){
		$('#announcement').animate({'margin-top': -announcement_height+'px'}, 300);
	});
});
$(window).load(function(){
	// Get height
	announcement_height = $('#announcement').height();

	$('#announcement')
		// Fix margin
		.css({'margin-top' : -announcement_height+'px'})
		// Animate down on window load
		.animate({'margin-top': 0}, 300);

	if(autohide){
		setTimeout(function(){
			$('#announcement').animate({'margin-top': -announcement_height+'px'}, 300);
		}, time)
	}
});
