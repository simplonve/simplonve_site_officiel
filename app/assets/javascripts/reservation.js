$(document).ready(function() {
	$('.input__field, .textarea').blur(function() {
		if ( $(this).val() != "" ) {
			$(this).next().addClass('filled');
		}
		else {
			$(this).next().removeClass('filled');
		}
	});

	if ( $('.date').val() != "" ) {
		$('.date').blur();
	}
})
