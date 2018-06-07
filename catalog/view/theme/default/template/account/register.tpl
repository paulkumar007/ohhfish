<?php echo $header; ?>
<style type="text/css">

.close_b{
	position:relative;
}
a.close_b:link,
a.close_b:active,
a.close_b:visited{
	font-family:Open Sans, sans-serif; 
	font-size:14px;
	text-decoration:none;
	font-weight:400; 
	color:#fff; 
	background-color:#1faad8; 
	padding:6px 20px;
}
a.close_b:hover{
	background-color:#1886aa; 
}
</style>
<script type="text/javascript">
	$(document).ready(function(){
		$("#go_next").click(function(){
			var mobile = $("#mobile").val();
			if(mobile == ''){
				alert('Please enter Mobile no.');
				return false;
			} else {
				$.ajax({
					url: 'index.php?route=account/register/checkMobile',
					type: 'post',
					dataType: 'html',
					data: 'mobile='+mobile,
					success: function(output) {
						if(output == '1'){
							$("#error_msg").html('This mobile no. is already registered with us!');
							$("#error_msg").show();
							return false;
						} else if(output == 'invalid'){
							$("#error_msg").html('Please enter valid mobile no!');
							$("#error_msg").show();
							return false;
						} else {
							$("#error_msg").hide();
							$("#email_box").hide();
							$("#otp_box").show();
							
							//$("#next_step").show();
							return false;
						}
					}
				});
			}
		});
		
		$("#check_otp").click(function(){
			var mobile = $("#mobile").val();
			var otp = $("#otp").val();
			if(otp == ''){
				alert('Please enter valid OTP!');
				return false;
			} else {
				$.ajax({
					url: 'index.php?route=account/register/verifyOTP',
					type: 'post',
					dataType: 'html',
					data: 'mobile='+mobile+'&otp='+otp,
					success: function(output) {
						if(output == '0'){
							$("#error_msg").html('The OTP you have entered is invalid!');
							$("#error_msg").show();
							return false;
						} else {
							$("#error_msg").hide();
							$("#email_box").hide();
							$("#otp_box").hide();
							$("#next_step").show();
							return false;
						}
					}
				});
			}
		});
		
		$(".inline").colorbox({inline: true });
	});
	
	/*
	function saveData(){
		
		var mobile = $("#mobile").val();
		var first_name = $("#first_name").val();
		var last_name = $("#last_name").val();
		var email = $("#email").val();
		var city = $("#city").val();
		var pincode = $("#pincode").val();
		var address = $("#address").val();
		var password = $("#password").val();
		var confirm_password = $("#confirm_password").val();
		
		if(password != confirm_password){
			alert('Password and confirm password do not match!');
			return false;
		} else {		
			$.ajax({
					url: 'ajax.php',
					type: 'post',
					dataType: 'html',
					data: 'flag=save_customer&mobile='+mobile+'&first_name='+first_name+'&last_name='+last_name+'&email='+email+'&city='+city+'&pincode='+pincode+'&address='+address+'&password='+password,
					success: function(output) {
						if(output != ''){
							$(".inline").trigger('click');
							//$("#succes_msg").html(output);
							//$("#succes_msg").show();
							//$("html, body").animate({ scrollTop: 0 }, 200);
							$("#reset_btn").trigger('click');
							return false;
						}
					}
				});
			return false;
		}
		return false;
	}
	*/
</script>

<!-- image start here-->
<!-- <div class="image_slot">
<div class="row"> 
<img src="catalog/view/theme/default/image/register.jpg" class="img-fluid" alt="Responsive image">
</div>
</div> -->

<div class="bread_area">
	<div class="container">
		<div class="row">
			<div class="col-sm-12">
				<ul class="breadcrumb" style="margin-bottom:0;background-color:#fff;">
					<?php foreach ($breadcrumbs as $breadcrumb) { ?>
						<li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
					<?php } ?>
				</ul>                                 
			</div>
		</div>
	</div>
</div>
  <?php if ($error_warning) { ?>
  <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?></div>
  <?php } ?>
<div class="product_d">
<div class="container">
<div class="row">
<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" class="form-horizontal">
<section>
<div class="container">
<div class="row">
<div class="col-sm-12">
<!--register form start here-->
<div class="register_form">
<div class="register">
<h3 class="register_heading">Register your Account</h3>
</div>
<div id="error_msg" style="display:none;color:red;font-weight:bold;"></div>
<ul class="register_form">

<li class="list_row_1">
<div class="field_set_mo" id="email_box">
<label><p class="text_l"><em>*</em> Enter your Mobile No.</p></label>
<div class="box_space"> 
<div class="form-group">
<input type="tel" id="mobile" maxlength="10" autocomplete="off" placeholder="Enter Mobile No." class="box" value="<?php echo $telephone; ?>" name="telephone" title="Mobile No." required />
</div>
<button class="continue_b" id="go_next" type="button">Continue </button>
</div>
</div>
<div class="field_set_mo" id="otp_box" style="display:none;">
<label><p class="text_l"><em>*</em> Enter OTP.</p></label>
<div class="box_space"> 
<div class="form-group">
<input type="tel" id="otp" maxlength="6" autocomplete="off" placeholder="Enter OTP" class="box" value="" name="otp" title="OTP" required />
</div>
<button class="continue_b" id="check_otp" type="button">VERIFY </button>
</div>
</div>
</li>
</ul>

<ul class="register_form" id="next_step" style="display:none;">
<li class="line_r"><hr class="style9"></li>

<li class="list_row_2">
<h2 class="info_p">Personal Information:</h2>
		
		<div class="set_one">
		<div class="box_space"> 
		<div class="form-group">
		<label><p class="text_l"><em>*</em> First Name:</p></label>
		<input type="text" id="firstname" placeholder="Enter First Name" class="box" name="firstname" value="<?php echo $firstname; ?>" title="First Name" maxlength="255" class="input-text validate-alpha required-entry" required />
		</div>
		</div>
		</div>
		
		<div class="set_two">
		<div class="box_space"> 
		<div class="form-group">
		<label><p class="text_l"><em>*</em> Last Name:</p></label>
		<input type="text" id="lastname" placeholder="Enter Last Name" class="box" name="lastname" value="<?php echo $lastname; ?>" title="Last Name" maxlength="255" class="input-text validate-alpha required-entry" required />
		</div>
		</div>
		</div>
			
</li>

<li class="list_row_3">
<div class="set_three">
		<div class="box_space"> 
		<div class="form-group">
		<label><p class="text_l"><em>*</em> Email ID:</p></label>
		<input type="email" id="email" placeholder="Enter Email ID" class="box" name="email" value="<?php echo $email; ?>" title="Email ID" maxlength="255" class="input-text validate-alpha required-entry" required />

		</div>
		</div>
</div>
</li>

<li class="line_r"><hr class="style9"></li>

<li class="list_row_4">
<h2 class="info_p">Address:</h2>
		<div class="set_one">
		<label><p class="text_l">Select City</p></label>
		<div class="box_space">
		<div class="form-group">
		<input type="hidden" name="country_id" value="99" />
		<input type="hidden" name="zone_id" value="1493" />
		<select class="form-control-w" id="city" name="city" required>
        <option value="Mumbai" <?php if($city == 'Mumbai'){ echo 'SELECTED'; } ?>>Mumbai</option>
        <option value="Navi Mumbai" <?php if($city == 'Navi Mumbai'){ echo 'SELECTED'; } ?>>Navi Mumbai</option>
        <option value="Thane" <?php if($city == 'Thane'){ echo 'SELECTED'; } ?>>Thane</option>
      </select>
		</div>
		</div>
		</div>
		
		<div class="set_two">
		<div class="box_space"> 
		<div class="form-group">
		<label><p class="text_l">Pincode</p></label>
		<input type="number" maxlength="10" placeholder="Enter pincode" autocomplete="off" class="box" value="<?php echo $postcode; ?>" id="postcode" name="postcode" title="Pincode" required />
		</div>
		</div>
		</div>
</li>

<li class="list_row_5">
	<div class="set_five">
	<div class="box_space"> 
	<div class="form-group">
	<label><p class="text_l"><em>*</em> Flat No./ Bldg Name/ Area / Street / Landmark: </p></label>
	<textarea class="fk-input" rows="3" cols="1" placeholder="Enter Delivery Address" id="address_1" name="address_1" required><?php echo $address_1; ?></textarea>
	</div>
	</div>
	</div>
</li>

<li class="line_r">
<hr class="style9">
</li>

<li class="list_row_4">

<h2 class="info_p">Login Information:</h2>
		<div class="set_one">
		<div class="box_space"> 
		<div class="form-group">
		<label><p class="text_l"><em>*</em> Password:</p></label>
		<input type="password" id="password" placeholder="Enter Password" class="box" name="password" value="<?php echo $password; ?>" title="Password" maxlength="300" class="input-text validate-alpha required-entry" required />
		<?php if ($error_password) { ?>
		  <div class="text-danger"><?php echo $error_password; ?></div>
		  <?php } ?>
		</div>
		</div>
		</div>
		
		<div class="set_two">
		<div class="box_space"> 
		<div class="form-group">
		<label><p class="text_l"><em>*</em> Confirm Password:</p></label>
		<input type="password" id="confirm_password" placeholder="Enter Confirm Password" class="box" name="confirm" value="<?php echo $confirm; ?>" title="Confirm Password" maxlength="255" class="input-text validate-alpha required-entry" required />
		<?php if ($error_confirm) { ?>
		  <div class="text-danger"><?php echo $error_confirm; ?></div>
		  <?php } ?>
		</div>
		</div>
		</div>
</li>

<li class="list_row_6">
	<div class="set_six">
	<div class="box_space"> 
	<button class="continue_b" name="submit" id="submit" type="submit">Submit </button>&nbsp; &nbsp;
	<button class="continue_b" name="reset" id="reset_btn" type="reset">Reset </button>		
	</div>
	</div>
</li>

</ul>
					
</div>

</div>
</div>
</div>
</section>
</form>
<div style="display:none;">
	<div id="thanku_popup">
		<div id="mailsub" class="notification" align="center">
			<div id="box" style="width:320px; margin:20% auto; border:6px solid #f4992e; position:relative;">
				<div class="top_text" style="height:190px;">
					<h2 class="f_name" style="font-family:Open Sans, sans-serif; font-size:22px; font-weight:400; color:#333; padding:25px 0px 0px 0px; margin:0px;" >Thank you   </h2>
					<p class="welcome" style="font-family:Open Sans, sans-serif; font-size:14px; font-weight:400; color:#555; padding:25px 0px 0px 0px; margin:0px 0px 0px 0px;" >Welcome to Fishgeniee!</p>
					<p class="welcome" style="font-family:Open Sans, sans-serif; font-size:12px; font-weight:400; color:#000; padding:2px 0px; margin:0px;" >Please take a second to confirm your email address</p>
					<div class="close"  style=" width:100px; padding:30px 0px 0px 0px; margin:0px;">
						<a href="#" class="close_b">Close</a>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
</div>
</div>
</div>
<script type="text/javascript"><!--
// Sort the custom fields
$('#account .form-group[data-sort]').detach().each(function() {
	if ($(this).attr('data-sort') >= 0 && $(this).attr('data-sort') <= $('#account .form-group').length) {
		$('#account .form-group').eq($(this).attr('data-sort')).before(this);
	}

	if ($(this).attr('data-sort') > $('#account .form-group').length) {
		$('#account .form-group:last').after(this);
	}

	if ($(this).attr('data-sort') == $('#account .form-group').length) {
		$('#account .form-group:last').after(this);
	}

	if ($(this).attr('data-sort') < -$('#account .form-group').length) {
		$('#account .form-group:first').before(this);
	}
});

$('#address .form-group[data-sort]').detach().each(function() {
	if ($(this).attr('data-sort') >= 0 && $(this).attr('data-sort') <= $('#address .form-group').length) {
		$('#address .form-group').eq($(this).attr('data-sort')).before(this);
	}

	if ($(this).attr('data-sort') > $('#address .form-group').length) {
		$('#address .form-group:last').after(this);
	}

	if ($(this).attr('data-sort') == $('#address .form-group').length) {
		$('#address .form-group:last').after(this);
	}

	if ($(this).attr('data-sort') < -$('#address .form-group').length) {
		$('#address .form-group:first').before(this);
	}
});

$('input[name=\'customer_group_id\']').on('change', function() {
	$.ajax({
		url: 'index.php?route=account/register/customfield&customer_group_id=' + this.value,
		dataType: 'json',
		success: function(json) {
			$('.custom-field').hide();
			$('.custom-field').removeClass('required');

			for (i = 0; i < json.length; i++) {
				custom_field = json[i];

				$('#custom-field' + custom_field['custom_field_id']).show();

				if (custom_field['required']) {
					$('#custom-field' + custom_field['custom_field_id']).addClass('required');
				}
			}


		},
		error: function(xhr, ajaxOptions, thrownError) {
			alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
		}
	});
});

$('input[name=\'customer_group_id\']:checked').trigger('change');
//--></script>
<script type="text/javascript"><!--
$('button[id^=\'button-custom-field\']').on('click', function() {
	var node = this;

	$('#form-upload').remove();

	$('body').prepend('<form enctype="multipart/form-data" id="form-upload" style="display: none;"><input type="file" name="file" /></form>');

	$('#form-upload input[name=\'file\']').trigger('click');

	if (typeof timer != 'undefined') {
    	clearInterval(timer);
	}

	timer = setInterval(function() {
		if ($('#form-upload input[name=\'file\']').val() != '') {
			clearInterval(timer);

			$.ajax({
				url: 'index.php?route=tool/upload',
				type: 'post',
				dataType: 'json',
				data: new FormData($('#form-upload')[0]),
				cache: false,
				contentType: false,
				processData: false,
				beforeSend: function() {
					$(node).button('loading');
				},
				complete: function() {
					$(node).button('reset');
				},
				success: function(json) {
					$(node).parent().find('.text-danger').remove();

					if (json['error']) {
						$(node).parent().find('input').after('<div class="text-danger">' + json['error'] + '</div>');
					}

					if (json['success']) {
						alert(json['success']);

						$(node).parent().find('input').val(json['code']);
					}
				},
				error: function(xhr, ajaxOptions, thrownError) {
					alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
				}
			});
		}
	}, 500);
});
//--></script>
<script type="text/javascript"><!--
$('.date').datetimepicker({
	pickTime: false
});

$('.time').datetimepicker({
	pickDate: false
});

$('.datetime').datetimepicker({
	pickDate: true,
	pickTime: true
});
//--></script>
<script type="text/javascript"><!--
$('select[name=\'country_id\']').on('change', function() {
	$.ajax({
		url: 'index.php?route=account/account/country&country_id=' + this.value,
		dataType: 'json',
		beforeSend: function() {
			$('select[name=\'country_id\']').after(' <i class="fa fa-circle-o-notch fa-spin"></i>');
		},
		complete: function() {
			$('.fa-spin').remove();
		},
		success: function(json) {
			if (json['postcode_required'] == '1') {
				$('input[name=\'postcode\']').parent().parent().addClass('required');
			} else {
				$('input[name=\'postcode\']').parent().parent().removeClass('required');
			}

			html = '<option value=""><?php echo $text_select; ?></option>';

			if (json['zone'] && json['zone'] != '') {
				for (i = 0; i < json['zone'].length; i++) {
					html += '<option value="' + json['zone'][i]['zone_id'] + '"';

					if (json['zone'][i]['zone_id'] == '<?php echo $zone_id; ?>') {
						html += ' selected="selected"';
					}

					html += '>' + json['zone'][i]['name'] + '</option>';
				}
			} else {
				html += '<option value="0" selected="selected"><?php echo $text_none; ?></option>';
			}

			$('select[name=\'zone_id\']').html(html);
		},
		error: function(xhr, ajaxOptions, thrownError) {
			alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
		}
	});
});

$('select[name=\'country_id\']').trigger('change');
//--></script>
<?php echo $footer; ?>
