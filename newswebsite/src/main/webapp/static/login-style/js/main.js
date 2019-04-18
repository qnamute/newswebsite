var configLogin = function(){
	this.initialize = function(){
		$("#signup").hide();
		registerEvents();
	}
	function registerEvents(){
		$("#sign-in-link").on('click', function(){
			$('#signin').show();
			$('#signup').hide();
		});
		$("#sign-up-link").on('click', function(){
			$('#signin').hide();
			$('#signup').show();
		});
	}
}