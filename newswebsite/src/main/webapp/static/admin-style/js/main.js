var configAdmin = function(){
	this.initialize = function(){
		registerEvents();
	}
	function registerEvents(){
		$("#btn-file").on('click', function(){
			$('#image-post').click();	
		});
		
		$("#image-post").change(function() {		 
			  var sourceimg = $('#image-post').val().replace(/C:\\fakepath\\/i, '');
			  sourceimg = "/static/post-img/"+sourceimg;
			  $('#img-post').attr('src',sourceimg);
		});
	}
}