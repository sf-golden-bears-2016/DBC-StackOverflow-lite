$(document).ready(function() {
	// This is called after the document has loaded in its entirety
	// This guarantees that any elements we bind to will exist on the page
	// when we try to bind to them

	// See: http://docs.jquery.com/Tutorials:Introducing_$(document).ready()
	$('ul.nav-tabs li').on('click', function(event) {

		var ul = $('ul#tabs li');
		var tp = $('.tab-content div.tab-pane');
		var tab = $(event.target).attr("href");

		ul.each(function(li) {
			$("li").removeClass("active");

		});

		tp.each(function(div) {
			// debugger;
			$("div").removeClass("active");
		});
		$(tab).addClass("active");
		$(this).addClass("active");
	});

});
