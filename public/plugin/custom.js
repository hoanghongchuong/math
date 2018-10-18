$(document).ready(function(){
	$('#sort_document').on('change', function(){
		$('#filter_products').submit();
	});


	$('#btn-download').on('click', function(){
		var id = $(this).attr('data-id');
		$.ajax({
			url: baseUrl() + '/count/download',
			type: 'GET',
			data: { id: id },
			success: function(res){
				$('.count-download').html(res);
			}

		});
	});
})