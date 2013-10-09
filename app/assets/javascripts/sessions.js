$(function(){
	$('#pa_newReg').on('click', function(evt){
		if($(this).hasClass("pa_passwordHidden")){
			$('#pa_inputPassword').show(300);
			$('#pa_passwordLabel').show(300);
			$('#pa_showPassword').show(300);
			$('.pa_reset').show(300);
			$('.pa_signup').hide(300);
			$(this).html('Register');
			$(this).removeClass("pa_passwordHidden");
		}
		else{
			$('#pa_inputPassword').hide(300);
			$('#pa_passwordLabel').hide(300);
			$('#pa_showPassword').hide(300);
			$('.pa_reset').hide(300);
			$('.pa_signup').show(300);
			$(this).html('Log In');
			$(this).addClass("pa_passwordHidden")
		}
		return false;
	});
	$('#pa_toggle_password_field').on('click', function(evt){
		if($(this).hasClass('alert')){
			$(this).html('Hide Password');
			$(this).removeClass('alert');
			$(this).addClass('success');
			$('#pa_inputPassword').attr('type', 'text')
		}
		else{
			$(this).html('Show Password');
			$(this).removeClass('success');
			$(this).addClass('alert');
			$('#pa_inputPassword').attr('type', 'password')
		}
	})
})