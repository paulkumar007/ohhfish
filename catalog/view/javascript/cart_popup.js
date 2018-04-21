jQuery(document).ready(function($){
	//open popup
	/*
	$('.cd-popup-triggerd').on('click', function(event){
		event.preventDefault();
		$('.cd-popupd').addClass('is-visible');
	});
	*/
	
	//close popup
	$('.cd-popupd').on('click', function(event){
		if( $(event.target).is('.cd-popupd-close') || $(event.target).is('.cd-popupd') ) {
			event.preventDefault();
			$(this).removeClass('is-visible');
		}
	});
	//close popup when clicking the esc keyboard button
	$(document).keyup(function(event){
    	if(event.which=='27'){
    		$('.cd-popupd').removeClass('is-visible');
	    }
    });
});