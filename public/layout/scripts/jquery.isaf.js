
jQuery("#backtotop").click(function () {
    jQuery("body,html").animate({
        scrollTop: 0
    }, 600);
});
jQuery(window).scroll(function () {
    if (jQuery(window).scrollTop() > 150) {
        jQuery("#backtotop").addClass("visible");
    } else {
        jQuery("#backtotop").removeClass("visible");
    }
    if (jQuery(window).scrollTop() > 410 && jQuery(window).width() > 1200) {
        jQuery("#isafmini").addClass("visible");
    } 

	else {
        jQuery("#isafmini").removeClass("visible");
    }	
	
    if (jQuery(window).width() > 1200) {
		jQuery("#schwung_ol").addClass("visible");
		jQuery("#schwung_ur").addClass("visible");
	}
	
	
});


jQuery(window).resize(function(){
  	if (jQuery(window).width() < 1200) {
		jQuery("#isafmini").removeClass("visible");
		jQuery("#schwung_ol").removeClass("visible");
		jQuery("#schwung_ur").removeClass("visible");
	} else {
		jQuery("#isafmini").addClass("visible");
		jQuery("#schwung_ol").addClass("visible");
		jQuery("#schwung_ur").addClass("visible");
	}
	
	if (jQuery(window).width() > 1200) {
		jQuery("#schwung_ol").addClass("visible");
		jQuery("#schwung_ur").addClass("visible");
	}
	
	if (jQuery(window).scrollTop() < 410) {
        jQuery("#isafmini").removeClass("visible");
    } 
});