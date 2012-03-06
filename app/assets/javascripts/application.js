// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require_tree .

$(document).ready(function(){
    $('a[rel=image]').lightBox();

	$("#search_brand_id_eq").change(function() {
	  // make a POST call and replace the content
	  var brand = $('select#search_brand_id_eq :selected').val();
	  if(brand == "") brand = "0";
	  $.get('/cars/update_carmodels_select/' + brand, function(data){
	    $("#search_carmodel_id_eq").html(data);
	  })
	  return false;
	});
	
	$(".vitrine").jCarouselLite({
		visible: 1,
		start: 0,
		auto: 4000,
		speed: 1000,
	    btnGo:
		    [".nav .1", ".nav .2",
		    ".nav .3", ".nav .4"]
    });
});