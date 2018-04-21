<?php echo $header; ?>
<link href="catalog/view/theme/default/stylesheet/checkout.css" rel="stylesheet">

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
  <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?>
    <button type="button" class="close" data-dismiss="alert">&times;</button>
  </div>
  <?php } ?>
<div class="product_d">
<div class="container">
<div class="row">
<div class="col-sm-8 for_992">

<div class="order_box">
<div class="container_box">
	<ul class="payment-wizard">
    	<li id="login_section" class="<?php if (!$logged) { ?>active<?php } else { ?>completed<?php } ?>">
        	<div class="wizard-heading">
            	1. Login Information
                <span class="icon-user"></span>
            </div>
            <div class="wizard-content" <?php if ($logged) { echo 'style="display:none;"'; } ?>>
            	<div id="error_msg" style="display:none;color:red;font-weight:bold;"></div>
				<div class="field_set_mo" id="login_box">
					<label><p class="text_l"><em>*</em> Enter Your Mobile No.</p></label>
					<div class="box_space"> 
					<div class="form-group">
					<input type="text" id="mobile" autocomplete="off" placeholder="Enter Your Mobile No." class="box" value="" name="telephone" title="Mobile No." required />
					</div>
					</div>
					
					<!--forgot password->
					<label><p class="text_l"><em>*</em> Enter your Mobile No.</p></label>
					<div class="box_space"> 
					<div class="form-group">
					<input type="number" maxlength="10" autocomplete="off" placeholder="Enter Mobile No." class="box" value="" name="Mobile No." title="Mobile No.">
					</div>
					</div>-->
					<button class="btn-green done" id="go_next" type="submit">Continue</button>
				</div>
            	<div class="field_set_mo" id="pass_box" style="display:none;">
					<label><p class="text_l"><em>*</em> Enter Password</p></label>
					<div class="box_space"> 
					<div class="form-group">
					<input type="password" id="login_password" autocomplete="off" placeholder="Enter Login Password" class="box" value="" name="login_password" title="Login Password" required />
					</div>
					<button class="continue_b" id="check_login" type="button">LOGIN </button>
					</div>
				</div>
				<div class="field_set_mo" id="otp_box" style="display:none;">
					<label><p class="text_l"><em>*</em> Enter OTP.</p></label>
					<div class="box_space"> 
					<div class="form-group">
					<input type="number" id="otp" maxlength="6" autocomplete="off" placeholder="Enter OTP" class="box" value="" name="otp" title="OTP" required />
					</div>
					<button class="continue_b" id="check_otp" type="button">VERIFY </button>
					<br/><br/>
					<p>(you will receive OTP in 180 sec to your mobile number.)</p>
					</div>
				</div>
				<div class="field_set_mo" id="login_pass_box" style="display:none;">
					<label><p class="text_l"><em>*</em> Create New Password</p></label>
					<div class="box_space"> 
					<div class="form-group">
					<input type="password" id="login_new_password" autocomplete="off" placeholder="Enter New Password" class="box" value="" name="login_new_password" title="New Password" required />
					</div>
					<div class="form-group">
					<input type="password" id="login_confirm_password" autocomplete="off" placeholder="Confirm New Password" class="box" value="" name="login_confirm_password" title="Confirm Password" required />
					</div>
					<button class="continue_b" id="login_create_new_password" type="button">SUBMIT </button>
					</div>
				</div>
				<div class="field_set_mo" id="forgot_link" style="display:none;">
					<label><p class="text_l"><a href="javascript:void(0);" onclick="show_forgot_box();">Forgot Password ?</a></p></label>
				</div>
				<div class="field_set_mo" id="forgot_box" style="display:none;">
					<label><p class="text_l"><em>*</em> Enter Mobile No.</p></label>
					<div class="box_space"> 
					<div class="form-group">
					<input type="number" id="forgot_mobile" autocomplete="off" placeholder="Enter Mobile No." class="box" value="" name="forgot_mobile" title="Forgot Password" required />
					</div>
					<button class="continue_b" id="check_forgot" type="button">SEND OTP </button>
					</div>
				</div>
				<div class="field_set_mo" id="forgot_otp_box" style="display:none;">
					<label><p class="text_l"><em>*</em> Enter OTP.</p></label>
					<div class="box_space"> 
					<div class="form-group">
					<input type="number" id="forgot_otp" maxlength="6" autocomplete="off" placeholder="Enter OTP" class="box" value="" name="forgot_otp" title="OTP" required />
					</div>
					<button class="continue_b" id="check_forgot_otp" type="button">VERIFY </button>
					<br/><br/>
					<p>(you will receive OTP in 180 sec to your mobile number.)</p>
					</div>
				</div>
				<div class="field_set_mo" id="forgot_pass_box" style="display:none;">
					<label><p class="text_l"><em>*</em> Create New Password</p></label>
					<div class="box_space"> 
					<div class="form-group">
					<input type="password" id="new_password" autocomplete="off" placeholder="Enter New Password" class="box" value="" name="new_password" title="New Password" required />
					</div>
					<div class="form-group">
					<input type="password" id="confirm_password" autocomplete="off" placeholder="Confirm New Password" class="box" value="" name="confirm_password" title="Confirm Password" required />
					</div>
					<button class="continue_b" id="create_new_password" type="button">SUBMIT </button>
					</div>
				</div>
            </div>
        </li>
        <li id="delivery_section" <?php if ($logged) { echo 'class="active"'; } ?>>
        	<div class="wizard-heading">
            	2. Delivery Address
                <span class="icon-location"></span>
            </div>
            <div class="wizard-content" <?php if ($logged) { echo 'style="display:block;"'; } ?>>
			
				<div class="panel-collapse" id="collapse-payment-address">
					<div class="panel-body"></div>
				</div>
		  
				<!--<div class="field_set_mo">
					<h2 class="info_p">Personal Information:</h2>
					<div class="set_one">
						<label><p class="text_l"><em>*</em> First Name:</p></label>
						<div class="box_space"> 
						<div class="form-group">
						<input type="text" id="firstname" placeholder="Enter First Name" class="box" name="firstname" value="" title="First Name" maxlength="255" 
						class="input-text validate-alpha required-entry">
						</div>
						</div>
					</div>
					<div class="set_two">
						<div class="box_space"> 
						<div class="form-group">
						<label><p class="text_l"><em>*</em> Last Name:</p></label>
						<input type="text" id="LastName" placeholder="Enter Last Name" class="box" name="firstname" value="" title="First Name" maxlength="255" class="input-text validate-alpha required-entry">
						</div>
						</div>
					</div>
					<div class="set_three">
						<div class="box_space"> 
						<div class="form-group">
						<label><p class="text_l"><em>*</em> Email ID:</p></label>
						<input type="text" id="emailid" placeholder="Enter Email ID" class="box" name="firstname" value="" title="First Name" maxlength="255" class="input-text validate-alpha required-entry">
						</div>
						</div>
					</div>
					<hr class="style9">
					<h2 class="info_p">Address:</h2>
					<div class="set_one">
						<label><p class="text_l">Select City</p></label>
						<div class="box_space">
						<div class="form-group">
						<select class="form-control-w" id="city_option">
							<option>Mumbai</option>
							<option>Navi Mumbai</option>
							<option>Thane</option>
						</select>
						</div>
						</div>
					</div>
					<div class="set_two">
						<div class="box_space"> 
						<div class="form-group">
						<label><p class="text_l">Pincode</p></label>
						<input type="number" maxlength="10" placeholder="Enter pincode" autocomplete="off" class="box" value="" name="Pincode" title="Pincode">
						</div>
						</div>
					</div>
					<div class="set_five">
						<div class="box_space"> 
						<div class="form-group">
						<label><p class="text_l"><em>*</em> Flat No./ Bldg Name/ Area / Street / Landmark: </p></label>
						<textarea class="fk-input" rows="3" cols="1" placeholder="Enter Delivery Address" id="account_page_new_address_line1"></textarea>
						</div>
						</div>
					</div>
				</div>
				<div style="clear:both;"></div>
				<button class="btn-green done" type="submit">Save and Deliver Here</button>
				<hr class="stylec">
				<p class="change_address"><img height="14" width="14" src="catalog/view/theme/default/image/plus.svg" class="plus_s">Add New Address</p>-->
			</div>
		</li>
		<li id="summary_section">
			<div class="wizard-heading">
				3. Order Summary
				<span class="icon-summary"></span>
			</div>
			<div class="wizard-content">
				<?php if ($products) { ?>
				<?php foreach ($products as $product) { ?>
				<div class="order_b">
				<div class="item_a">
				<?php if ($product['thumb']) { ?>
					<a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" class="pro_img" alt="<?php echo $product['name']; ?>" /></a>
				<?php } ?>
				</div>

				<div class="item_b">
				<p class="product_id"><?php echo $product['model']; ?></p>
				<p class="productname"> <?php echo $product['name']; ?> <span class="fish_type_marathi"> ( <?php echo $product['sku']; ?> ) </span></p>
				<?php if ($product['option']) { ?>
				<?php foreach ($product['option'] as $option) { ?>
				<br />
				<small><?php echo $option['name']; ?>: <?php echo $option['value']; ?></small>
				<?php } ?>
				<?php } ?>
				<p class="available">Availibility: <span class="stock"><?php echo $product['stock'] > 0 ? 'In Stock' : 'Out of Stock'; ?></span></p>
				<h3 class="price" id="pricer_<?php echo $product['cart_id']; ?>" alt="<?php echo $product['unit_price']; ?>"><?php echo $product['total']; ?> <!--<span class="kg">(Per Kg) </span>--> </h3>

				<div class="quantity_box">	
				<strong>Quantity :</strong> <?php echo $product['quantity']; ?><span class="kg_a">Kg </span>
				<a href="javascript:void(0);" onclick="cart.remove('<?php echo $product['cart_id']; ?>');" role="button" class="remove_b"><i class="fa fa-trash-o" aria-hidden="true"></i> Remove </a>
				</div>
				</div>


				<div class="item_c">
				<p class="d_date" id="available_msg"></p>
				<p class="d_date"><?php echo $product['ship_date'] != '0000-00-00' ? date('D, j M Y',strtotime($product['ship_date'])) : date('D, j M Y',strtotime("+2 day")); ?> </p>
				<p class="d_slot">Delivery between <br><?php if($product['ship_time'] != '') { echo $product['ship_time']; } else { echo '8.30am to 12.30pm'; } ?> </p>
				</p>

				</div>
				</div>
				<?php } ?>
				<?php } ?>
				
				<button class="btn-green" id="summary_continue" type="button">Continue</button>
				<hr style="dotted_line">
				<p class="email_id_confo">Order conformation email will be sent to 
				<input type="text" id="emailid" placeholder="Enter Email ID" class="box_email" name="emailid" value="<?php echo $customer_email; ?>" title="Email ID" maxlength="255" class="input-text validate-alpha required-entry" />
				</p>
			</div>
        </li>
        <li id="payment_section">
        	<div class="wizard-heading">
            	4. Payment Options
                <span class="icon-mode"></span>
            </div>
            <div class="wizard-content">
            	<div class="panel-collapse" id="collapse-payment-method">
					<div class="panel-body"></div>
				</div>
				<div class="panel-collapse collapse" id="collapse-checkout-confirm">
					<div class="panel-body"></div>
				</div>
			</div>
        </li>
    </ul>    
</div>

<script src="https://code.jquery.com/jquery-1.11.3.min.js"></script>
<script type="text/javascript">
$(window).load(function(){	
	$(".done").click(function(){
		var this_li_ind = $(this).parent().parent("li").index();
		if($('.payment-wizard li').hasClass("jump-here")){
			$(this).parent().parent("li").removeClass("active").addClass("completed");
			$(this).parent(".wizard-content").slideUp();
			$('.payment-wizard li.jump-here').removeClass("jump-here");
		}else{
			$(this).parent().parent("li").removeClass("active").addClass("completed");
			$(this).parent(".wizard-content").slideUp();
			$(this).parent().parent("li").next("li:not('.completed')").addClass('active').children('.wizard-content').slideDown();
		}
	});
	
	$('.payment-wizard li .wizard-heading').click(function(){
		if($(this).parent().hasClass('completed')){
			var this_li_ind = $(this).parent("li").index();		
			var li_ind = $('.payment-wizard li.active').index();
			if(this_li_ind < li_ind){
				$('.payment-wizard li.active').addClass("jump-here");
			}
			$(this).parent().addClass('active').removeClass('completed');
			$(this).siblings('.wizard-content').slideDown();
		}
	});
})
</script>


</div>

</div>

<div class="col-sm-4">
<div class="price_box" id="order_total_box">
<div class="head_row"><p class="p_details">Order Summary </p>
</div>


<div class="price_detail_box">
	<?php
		foreach ($totals as $total) { 
		if($total['title'] == 'Order Total'){
			echo '<hr class="order_l"><br/>';
		}
	?>
	<div class="<?php if($total['title'] == 'Order Total'){ ?>amount_p<?php } else { ?>text_p<?php } ?>"> <?php echo $total['title']; ?></div>
	<div class="<?php if($total['title'] == 'Order Total'){ ?>text_amount_price<?php } else { ?>text_product_price<?php } ?>"><p class="price_n"> <?php echo $total['text']; ?>  </p></div>
	<br><br>
	<?php } ?>
</div>

<div class="buttons clearfix" style="text-align:center;padding-bottom:10px;">  
	<button style="display:none;" class="btn-green done" id="place_order" data-loading-text="Loading.." type="button">Place Order</button>
</div>
</div>


<div class="safe_row">
<div class="hygine">
<img src="catalog/view/theme/default/image/hygine.png" class="shield_i">
<span class="hygine_text">Safe and Secure Payments. 100% hygine.</span>
</div>
</div>

</div>
</div>

</div>
</div>
</div>
<script type="text/javascript">
	function show_forgot_box(){
		$("#error_msg").hide();
		$("#pass_box").hide();
		$("#otp_box").hide();
		$("#forgot_link").hide();
		$("#login_box").hide();
		$("#forgot_box").show();
	}
	
	$(document).ready(function(){
		$("#go_next").click(function(){
			var mobile = $("#mobile").val();
			if(mobile == ''){
				alert('Please enter your Mobile No.');
				return false;
			} else {
				$("#go_next").attr('disabled',true).prop('disabled',true);
				$.ajax({
					url: 'index.php?route=account/register/loginMobile',
					type: 'post',
					dataType: 'html',
					data: 'mobile='+mobile,
					success: function(output) {
						if(output == '0'){
							$("#error_msg").hide();
							$("#go_next").hide();
							$("#pass_box").hide();
							$("#otp_box").show();
							
							//$("#next_step").show();
							return false;
						} else if(output == 'invalid'){
							$("#error_msg").html('Please enter valid mobile no!');
							$("#go_next").removeAttr('disabled').prop('disabled',false);
							$("#error_msg").show();
							return false;
						} else if(output == '3'){
							$("#error_msg").html('Please enter valid Mobile No.!');
							$("#error_msg").show();
							$("#go_next").removeAttr('disabled').prop('disabled',false);
							return false;
						} else if(output == '1'){
							$("#error_msg").hide();
							$("#go_next").removeAttr('disabled').prop('disabled',false);
							$("#otp_box").hide();
							$("#pass_box").show();
							$("#forgot_link").show();
							//$("#next_step").show();
							return false;
						}
					}
				});
			}
		});
		
		$("#check_login").click(function(){
			var mobile = $("#mobile").val();
			var pass = $("#login_password").val();
			if(pass == ''){
				alert('Please enter Password!');
				return false;
			} else {
				$.ajax({
					url: 'index.php?route=account/register/verifyPasswordLogin',
					type: 'post',
					dataType: 'html',
					data: 'mobile='+mobile+'&pass='+pass,
					success: function(output) {
						if(output == '0'){
							$("#error_msg").html('The Password you have entered is invalid!');
							$("#error_msg").show();
							$("#forgot_link").show();
							return false;
						} else {
							location.href='index.php?route=checkout/checkout';
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
					url: 'index.php?route=account/register/verifyOTPLogin',
					type: 'post',
					dataType: 'html',
					data: 'mobile='+mobile+'&otp='+otp,
					success: function(output) {
						if(output == '0'){
							$("#error_msg").html('The OTP you have entered is invalid!');
							$("#error_msg").show();
							$("#forgot_link").show();
							return false;
						} else if(output == '2'){
							$("#error_msg").html('Your account is inactive. Please contact customer care!');
							$("#error_msg").show();
							$("#forgot_link").show();
							return false;
						} else {
							$("#error_msg").hide();
							$("#forgot_link").hide();
							$("#forgot_box").hide();
							$("#pass_box").hide();
							$("#otp_box").hide();
							$("#login_pass_box").show();
							return false;
						}
					}
				});
			}
		});	
		
		$("#login_create_new_password").click(function(){
			var mobile = $("#mobile").val();
			var password = $("#login_new_password").val();
			var cofirmpassword = $("#login_confirm_password").val();
			
			if(password == ''){
				alert('Please enter Password!');
				return false;
			} else if(password != cofirmpassword){
				alert('Passwords dont match!');
				return false;
			} else {
				$.ajax({
					url: 'index.php?route=account/register/createNewPassword',
					type: 'post',
					dataType: 'html',
					data: 'mobile='+mobile+'&password='+password,
					success: function(output) {
						if(output == '2'){
							$("#error_msg").html('Your mobile no is not registered with us!');
							$("#error_msg").show();
							return false;
						} else {
							location.href='index.php?route=checkout/checkout';
							return false;
						}
					}
				});
			}
		});	
		
		$("#check_forgot_otp").click(function(){
			var mobile = $("#forgot_mobile").val();
			var otp = $("#forgot_otp").val();
			if(otp == ''){
				alert('Please enter valid OTP!');
				return false;
			} else {
				$.ajax({
					url: 'index.php?route=account/register/verifyForgotOTPLogin',
					type: 'post',
					dataType: 'html',
					data: 'mobile='+mobile+'&otp='+otp,
					success: function(output) {
						if(output == '0'){
							$("#error_msg").html('The OTP you have entered is invalid!');
							$("#error_msg").show();
							$("#forgot_link").show();
							return false;
						} else if(output == '2'){
							$("#error_msg").html('Your account is inactive. Please contact customer care!');
							$("#error_msg").show();
							$("#forgot_link").show();
							return false;
						} else {
							$("#forgot_link").hide();
							$("#forgot_box").hide();
							$("#forgot_otp_box").hide();
							$("#forgot_pass_box").show();
							return false;
						}
					}
				});
			}
		});
		
		
		$("#create_new_password").click(function(){
			var mobile = $("#forgot_mobile").val();
			var password = $("#new_password").val();
			var cofirmpassword = $("#confirm_password").val();
			
			if(password == ''){
				alert('Please enter Password!');
				return false;
			} else if(password != cofirmpassword){
				alert('Passwords dont match!');
				return false;
			} else {
				$.ajax({
					url: 'index.php?route=account/register/createNewPassword',
					type: 'post',
					dataType: 'html',
					data: 'mobile='+mobile+'&password='+password,
					success: function(output) {
						if(output == '2'){
							$("#error_msg").html('Your mobile no is not registered with us!');
							$("#error_msg").show();
							return false;
						} else {
							location.href='index.php?route=checkout/checkout';
							return false;
						}
					}
				});
			}
		});	
		
		
		$("#check_forgot").click(function(){
			var mobile = $("#forgot_mobile").val();
			$.ajax({
				url: 'index.php?route=account/register/forgotMobile',
				type: 'post',
				dataType: 'html',
				data: 'mobile='+mobile,
				success: function(output) {
					if(output == '1'){
						$("#error_msg").hide();
						$("#pass_box").hide();
						$("#forgot_link").hide();
						$("#forgot_box").hide();
						$("#forgot_otp_box").show();
						
						//$("#next_step").show();
						return false;
					} else if(output == 'invalid'){
						$("#error_msg").html('Please enter valid mobile no!');
						$("#error_msg").show();
						return false;
					} else if(output == '3'){
						$("#error_msg").html('Please enter valid Email / Mobile no.!');
						$("#error_msg").show();
						return false;
					} else if(output == '0'){
						$("#error_msg").html('Please enter valid Email / Mobile no.!');
						$("#error_msg").show();
						
						//$("#next_step").show();
						return false;
					}
				}
			});
		});
	});
</script>
<script type="text/javascript"><!--
$(document).on('change', 'input[name=\'account\']', function() {
	if ($('#collapse-payment-address').parent().find('.panel-heading .panel-title > *').is('a')) {
		if (this.value == 'register') {
			$('#collapse-payment-address').parent().find('.panel-heading .panel-title').html('<a href="#collapse-payment-address" data-toggle="collapse" data-parent="#accordion" class="accordion-toggle"><?php echo $text_checkout_account; ?> <i class="fa fa-caret-down"></i></a>');
		} else {
			$('#collapse-payment-address').parent().find('.panel-heading .panel-title').html('<a href="#collapse-payment-address" data-toggle="collapse" data-parent="#accordion" class="accordion-toggle"><?php echo $text_checkout_payment_address; ?> <i class="fa fa-caret-down"></i></a>');
		}
	} else {
		if (this.value == 'register') {
			$('#collapse-payment-address').parent().find('.panel-heading .panel-title').html('<?php echo $text_checkout_account; ?>');
		} else {
			$('#collapse-payment-address').parent().find('.panel-heading .panel-title').html('<?php echo $text_checkout_payment_address; ?>');
		}
	}
});

<?php if (!$logged) { ?>
$(document).ready(function() {
    $.ajax({
        url: 'index.php?route=checkout/login',
        dataType: 'html',
        success: function(html) {
           $('#collapse-checkout-option .panel-body').html(html);

			$('#collapse-checkout-option').parent().find('.panel-heading .panel-title').html('<a href="#collapse-checkout-option" data-toggle="collapse" data-parent="#accordion" class="accordion-toggle"><?php echo $text_checkout_option; ?> <i class="fa fa-caret-down"></i></a>');

			$('a[href=\'#collapse-checkout-option\']').trigger('click');
        },
        error: function(xhr, ajaxOptions, thrownError) {
            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
        }
    });
});
<?php } else { ?>
$(document).ready(function() {
    $.ajax({
        url: 'index.php?route=checkout/payment_address',
        dataType: 'html',
        success: function(html) {
            $('#collapse-payment-address .panel-body').html(html);

			$('#collapse-payment-address').parent().find('.panel-heading .panel-title').html('<a href="#collapse-payment-address" data-toggle="collapse" data-parent="#accordion" class="accordion-toggle"><?php echo $text_checkout_payment_address; ?> <i class="fa fa-caret-down"></i></a>');

			$('a[href=\'#collapse-payment-address\']').trigger('click');
        },
        error: function(xhr, ajaxOptions, thrownError) {
            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
        }
    });
});
<?php } ?>

// Checkout
$(document).delegate('#button-account', 'click', function() {
    $.ajax({
        url: 'index.php?route=checkout/' + $('input[name=\'account\']:checked').val(),
        dataType: 'html',
        beforeSend: function() {
        	$('#button-account').button('loading');
		},
        complete: function() {
			$('#button-account').button('reset');
        },
        success: function(html) {
            $('.alert, .text-danger').remove();

            $('#collapse-payment-address .panel-body').html(html);

			if ($('input[name=\'account\']:checked').val() == 'register') {
				$('#collapse-payment-address').parent().find('.panel-heading .panel-title').html('<a href="#collapse-payment-address" data-toggle="collapse" data-parent="#accordion" class="accordion-toggle"><?php echo $text_checkout_account; ?> <i class="fa fa-caret-down"></i></a>');
			} else {
				$('#collapse-payment-address').parent().find('.panel-heading .panel-title').html('<a href="#collapse-payment-address" data-toggle="collapse" data-parent="#accordion" class="accordion-toggle"><?php echo $text_checkout_payment_address; ?> <i class="fa fa-caret-down"></i></a>');
			}

			$('a[href=\'#collapse-payment-address\']').trigger('click');
        },
        error: function(xhr, ajaxOptions, thrownError) {
            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
        }
    });
});

// Login
$(document).delegate('#button-login', 'click', function() {
    $.ajax({
        url: 'index.php?route=checkout/login/save',
        type: 'post',
        data: $('#collapse-checkout-option :input'),
        dataType: 'json',
        beforeSend: function() {
        	$('#button-login').button('loading');
		},
        complete: function() {
            $('#button-login').button('reset');
        },
        success: function(json) {
            $('.alert, .text-danger').remove();
            $('.form-group').removeClass('has-error');

            if (json['redirect']) {
                location = json['redirect'];
            } else if (json['error']) {
                $('#collapse-checkout-option .panel-body').prepend('<div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> ' + json['error']['warning'] + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');

				// Highlight any found errors
				$('input[name=\'email\']').parent().addClass('has-error');
				$('input[name=\'password\']').parent().addClass('has-error');
		   }
        },
        error: function(xhr, ajaxOptions, thrownError) {
            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
        }
    });
});

// Register
$(document).delegate('#button-register', 'click', function() {
    $.ajax({
        url: 'index.php?route=checkout/register/save',
        type: 'post',
        data: $('#collapse-payment-address input[type=\'text\'], #collapse-payment-address input[type=\'date\'], #collapse-payment-address input[type=\'datetime-local\'], #collapse-payment-address input[type=\'time\'], #collapse-payment-address input[type=\'password\'], #collapse-payment-address input[type=\'hidden\'], #collapse-payment-address input[type=\'checkbox\']:checked, #collapse-payment-address input[type=\'radio\']:checked, #collapse-payment-address textarea, #collapse-payment-address select'),
        dataType: 'json',
        beforeSend: function() {
			$('#button-register').button('loading');
		},
        success: function(json) {
            $('.alert, .text-danger').remove();
            $('.form-group').removeClass('has-error');

            if (json['redirect']) {
                location = json['redirect'];
            } else if (json['error']) {
                $('#button-register').button('reset');

                if (json['error']['warning']) {
                    $('#collapse-payment-address .panel-body').prepend('<div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> ' + json['error']['warning'] + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');
                }

				for (i in json['error']) {
					var element = $('#input-payment-' + i.replace('_', '-'));

					if ($(element).parent().hasClass('input-group')) {
						$(element).parent().after('<div class="text-danger">' + json['error'][i] + '</div>');
					} else {
						$(element).after('<div class="text-danger">' + json['error'][i] + '</div>');
					}
				}

				// Highlight any found errors
				$('.text-danger').parent().addClass('has-error');
            } else {
                <?php if ($shipping_required) { ?>
                var shipping_address = $('#payment-address input[name=\'shipping_address\']:checked').prop('value');

                if (shipping_address) {
                    $.ajax({
                        url: 'index.php?route=checkout/shipping_method',
                        dataType: 'html',
                        success: function(html) {
							// Add the shipping address
                            $.ajax({
                                url: 'index.php?route=checkout/shipping_address',
                                dataType: 'html',
                                success: function(html) {
                                    $('#collapse-shipping-address .panel-body').html(html);

									$('#collapse-shipping-address').parent().find('.panel-heading .panel-title').html('<a href="#collapse-shipping-address" data-toggle="collapse" data-parent="#accordion" class="accordion-toggle"><?php echo $text_checkout_shipping_address; ?> <i class="fa fa-caret-down"></i></a>');
                                },
                                error: function(xhr, ajaxOptions, thrownError) {
                                    alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                                }
                            });

							$('#collapse-shipping-method .panel-body').html(html);

							$('#collapse-shipping-method').parent().find('.panel-heading .panel-title').html('<a href="#collapse-shipping-method" data-toggle="collapse" data-parent="#accordion" class="accordion-toggle"><?php echo $text_checkout_shipping_method; ?> <i class="fa fa-caret-down"></i></a>');

   							$('a[href=\'#collapse-shipping-method\']').trigger('click');

							$('#collapse-shipping-method').parent().find('.panel-heading .panel-title').html('<?php echo $text_checkout_shipping_method; ?>');
							$('#collapse-payment-method').parent().find('.panel-heading .panel-title').html('<?php echo $text_checkout_payment_method; ?>');
							$('#collapse-checkout-confirm').parent().find('.panel-heading .panel-title').html('<?php echo $text_checkout_confirm; ?>');
                        },
                        error: function(xhr, ajaxOptions, thrownError) {
                            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                        }
                    });
                } else {
                    $.ajax({
                        url: 'index.php?route=checkout/shipping_address',
                        dataType: 'html',
                        success: function(html) {
                            $('#collapse-shipping-address .panel-body').html(html);

							$('#collapse-shipping-address').parent().find('.panel-heading .panel-title').html('<a href="#collapse-shipping-address" data-toggle="collapse" data-parent="#accordion" class="accordion-toggle"><?php echo $text_checkout_shipping_address; ?> <i class="fa fa-caret-down"></i></a>');

							$('a[href=\'#collapse-shipping-address\']').trigger('click');

							$('#collapse-shipping-method').parent().find('.panel-heading .panel-title').html('<?php echo $text_checkout_shipping_method; ?>');
							$('#collapse-payment-method').parent().find('.panel-heading .panel-title').html('<?php echo $text_checkout_payment_method; ?>');
							$('#collapse-checkout-confirm').parent().find('.panel-heading .panel-title').html('<?php echo $text_checkout_confirm; ?>');
                        },
                        error: function(xhr, ajaxOptions, thrownError) {
                            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                        }
                    });
                }
                <?php } else { ?>
                $.ajax({
                    url: 'index.php?route=checkout/payment_method',
                    dataType: 'html',
                    success: function(html) {
                        $('#collapse-payment-method .panel-body').html(html);

						$('#collapse-payment-method').parent().find('.panel-heading .panel-title').html('<a href="#collapse-payment-method" data-toggle="collapse" data-parent="#accordion" class="accordion-toggle"><?php echo $text_checkout_payment_method; ?> <i class="fa fa-caret-down"></i></a>');

						$('a[href=\'#collapse-payment-method\']').trigger('click');

						$('#collapse-checkout-confirm').parent().find('.panel-heading .panel-title').html('<?php echo $text_checkout_confirm; ?>');
                    },
                    error: function(xhr, ajaxOptions, thrownError) {
                        alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                    }
                });
                <?php } ?>

                $.ajax({
                    url: 'index.php?route=checkout/payment_address',
                    dataType: 'html',
                    complete: function() {
                        $('#button-register').button('reset');
                    },
                    success: function(html) {
                        $('#collapse-payment-address .panel-body').html(html);

						$('#collapse-payment-address').parent().find('.panel-heading .panel-title').html('<a href="#collapse-payment-address" data-toggle="collapse" data-parent="#accordion" class="accordion-toggle"><?php echo $text_checkout_payment_address; ?> <i class="fa fa-caret-down"></i></a>');
                    },
                    error: function(xhr, ajaxOptions, thrownError) {
                        alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                    }
                });
            }
        },
        error: function(xhr, ajaxOptions, thrownError) {
            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
        }
    });
});

// Payment Address
$(document).delegate('#button-payment-address', 'click', function() {

	if($("input[name=\'payment_address\']:checked").val() == 'existing'){
		
	} else {
		var pincoder = $("#input-payment-postcode").val();
		if(pincoder == '400060' || pincoder == '112233' || pincoder == '400615'){
		
		} else {
			alert('Sorry Currently Delivery is not Available in your area!');
			return false;
		}
	}
    $.ajax({
        url: 'index.php?route=checkout/payment_address/save',
        type: 'post',
        data: $('#collapse-payment-address input[type=\'text\'], #collapse-payment-address input[type=\'date\'], #collapse-payment-address input[type=\'datetime-local\'], #collapse-payment-address input[type=\'time\'], #collapse-payment-address input[type=\'password\'], #collapse-payment-address input[type=\'checkbox\']:checked, #collapse-payment-address input[type=\'radio\']:checked, #collapse-payment-address input[type=\'hidden\'], #collapse-payment-address textarea, #collapse-payment-address select'),
        dataType: 'json',
        beforeSend: function() {
        	$('#button-payment-address').prop('disabled',true);
		},
        complete: function() {
			$('#button-payment-address').prop('disabled',false);
        },
        success: function(json) {
            $('.alert, .text-danger').remove();

            if (json['redirect']) {
                location = json['redirect'];
            } else if (json['error']) {
                if (json['error']['warning']) {
                    $('#collapse-payment-address .panel-body').prepend('<div class="alert alert-warning">' + json['error']['warning'] + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');
                }

				for (i in json['error']) {
					var element = $('#input-payment-' + i.replace('_', '-'));

					if ($(element).parent().hasClass('input-group')) {
						$(element).parent().after('<div class="text-danger">' + json['error'][i] + '</div>');
					} else {
						$(element).after('<div class="text-danger">' + json['error'][i] + '</div>');
					}
				}

				// Highlight any found errors
				$('.text-danger').parent().parent().addClass('has-error');
            } else {
                <?php if ($shipping_required) { ?>
                $.ajax({
                    url: 'index.php?route=checkout/shipping_address',
                    dataType: 'html',
                    success: function(html) {
                        $('#collapse-shipping-address .panel-body').html(html);

						$('#collapse-shipping-address').parent().find('.panel-heading .panel-title').html('<a href="#collapse-shipping-address" data-toggle="collapse" data-parent="#accordion" class="accordion-toggle"><?php echo $text_checkout_shipping_address; ?> <i class="fa fa-caret-down"></i></a>');

						$('a[href=\'#collapse-shipping-address\']').trigger('click');

						$('#collapse-shipping-method').parent().find('.panel-heading .panel-title').html('<?php echo $text_checkout_shipping_method; ?>');
						$('#collapse-payment-method').parent().find('.panel-heading .panel-title').html('<?php echo $text_checkout_payment_method; ?>');
						$('#collapse-checkout-confirm').parent().find('.panel-heading .panel-title').html('<?php echo $text_checkout_confirm; ?>');
                    },
                    error: function(xhr, ajaxOptions, thrownError) {
                        alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                    }
                });
                <?php } else { ?>
                $.ajax({
                    url: 'index.php?route=checkout/payment_method',
                    dataType: 'html',
                    success: function(html) {
                        $('#collapse-payment-method .panel-body').html(html);

						$('#collapse-payment-method').parent().find('.panel-heading .panel-title').html('<a href="#collapse-payment-method" data-toggle="collapse" data-parent="#accordion" class="accordion-toggle"><?php echo $text_checkout_payment_method; ?> <i class="fa fa-caret-down"></i></a>');

						$('a[href=\'#collapse-payment-method\']').trigger('click');

						$("#delivery_section").removeClass('active').addClass('completed');
						$("#delivery_section").find(".wizard-content").slideUp();
						
						$("#summary_section").addClass('active');
						$("#summary_section").find(".wizard-content").slideDown();
						
						$('#collapse-checkout-confirm').parent().find('.panel-heading .panel-title').html('<?php echo $text_checkout_confirm; ?>');
                    },
                    error: function(xhr, ajaxOptions, thrownError) {
                        alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                    }
                });
                <?php } ?>

                $.ajax({
                    url: 'index.php?route=checkout/payment_address',
                    dataType: 'html',
                    success: function(html) {
                        $('#collapse-payment-address .panel-body').html(html);
                    },
                    error: function(xhr, ajaxOptions, thrownError) {
                        alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                    }
                });
            }
        },
        error: function(xhr, ajaxOptions, thrownError) {
            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
        }
    });
});

$(document).delegate('#summary_continue', 'click', function() {

	var order_emailid = $("#emailid").val();
	if(order_emailid == ''){
		alert('Please enter Email Address!');
		return false;
	}
	
	//Store Email Id..
	$.ajax({
		url: 'index.php?route=checkout/payment_address/addEmailAddress',
		type: 'post',
		data: 'order_email_id='+order_emailid,
		dataType: 'html',
		success: function(html) {
			$("#summary_section").removeClass('active').addClass('completed');
			$("#summary_section").find(".wizard-content").slideUp();
			
			$("#payment_section").addClass('active');
			$("#payment_section").find(".wizard-content").slideDown();
		},
		error: function(xhr, ajaxOptions, thrownError) {
			alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
		}
	});
});

// Shipping Address
$(document).delegate('#button-shipping-address', 'click', function() {
    $.ajax({
        url: 'index.php?route=checkout/shipping_address/save',
        type: 'post',
        data: $('#collapse-shipping-address input[type=\'text\'], #collapse-shipping-address input[type=\'date\'], #collapse-shipping-address input[type=\'datetime-local\'], #collapse-shipping-address input[type=\'time\'], #collapse-shipping-address input[type=\'password\'], #collapse-shipping-address input[type=\'checkbox\']:checked, #collapse-shipping-address input[type=\'radio\']:checked, #collapse-shipping-address textarea, #collapse-shipping-address select'),
        dataType: 'json',
        beforeSend: function() {
			$('#button-shipping-address').button('loading');
	    },
        success: function(json) {
            $('.alert, .text-danger').remove();

            if (json['redirect']) {
                location = json['redirect'];
            } else if (json['error']) {
                $('#button-shipping-address').button('reset');

                if (json['error']['warning']) {
                    $('#collapse-shipping-address .panel-body').prepend('<div class="alert alert-warning">' + json['error']['warning'] + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');
                }

				for (i in json['error']) {
					var element = $('#input-shipping-' + i.replace('_', '-'));

					if ($(element).parent().hasClass('input-group')) {
						$(element).parent().after('<div class="text-danger">' + json['error'][i] + '</div>');
					} else {
						$(element).after('<div class="text-danger">' + json['error'][i] + '</div>');
					}
				}

				// Highlight any found errors
				$('.text-danger').parent().parent().addClass('has-error');
            } else {
                $.ajax({
                    url: 'index.php?route=checkout/shipping_method',
                    dataType: 'html',
                    complete: function() {
                        $('#button-shipping-address').button('reset');
                    },
                    success: function(html) {
                        $('#collapse-shipping-method .panel-body').html(html);

						$('#collapse-shipping-method').parent().find('.panel-heading .panel-title').html('<a href="#collapse-shipping-method" data-toggle="collapse" data-parent="#accordion" class="accordion-toggle"><?php echo $text_checkout_shipping_method; ?> <i class="fa fa-caret-down"></i></a>');

						$('a[href=\'#collapse-shipping-method\']').trigger('click');

						$('#collapse-payment-method').parent().find('.panel-heading .panel-title').html('<?php echo $text_checkout_payment_method; ?>');
						$('#collapse-checkout-confirm').parent().find('.panel-heading .panel-title').html('<?php echo $text_checkout_confirm; ?>');

                        $.ajax({
                            url: 'index.php?route=checkout/shipping_address',
                            dataType: 'html',
                            success: function(html) {
                                $('#collapse-shipping-address .panel-body').html(html);
                            },
                            error: function(xhr, ajaxOptions, thrownError) {
                                alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                            }
                        });
                    },
                    error: function(xhr, ajaxOptions, thrownError) {
                        alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                    }
                });

                $.ajax({
                    url: 'index.php?route=checkout/payment_address',
                    dataType: 'html',
                    success: function(html) {
                        $('#collapse-payment-address .panel-body').html(html);
                    },
                    error: function(xhr, ajaxOptions, thrownError) {
                        alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                    }
                });
            }
        },
        error: function(xhr, ajaxOptions, thrownError) {
            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
        }
    });
});

// Guest
$(document).delegate('#button-guest', 'click', function() {
    $.ajax({
        url: 'index.php?route=checkout/guest/save',
        type: 'post',
        data: $('#collapse-payment-address input[type=\'text\'], #collapse-payment-address input[type=\'date\'], #collapse-payment-address input[type=\'datetime-local\'], #collapse-payment-address input[type=\'time\'], #collapse-payment-address input[type=\'checkbox\']:checked, #collapse-payment-address input[type=\'radio\']:checked, #collapse-payment-address input[type=\'hidden\'], #collapse-payment-address textarea, #collapse-payment-address select'),
        dataType: 'json',
        beforeSend: function() {
       		$('#button-guest').button('loading');
	    },
        success: function(json) {
            $('.alert, .text-danger').remove();

            if (json['redirect']) {
                location = json['redirect'];
            } else if (json['error']) {
                $('#button-guest').button('reset');

                if (json['error']['warning']) {
                    $('#collapse-payment-address .panel-body').prepend('<div class="alert alert-warning">' + json['error']['warning'] + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');
                }

				for (i in json['error']) {
					var element = $('#input-payment-' + i.replace('_', '-'));

					if ($(element).parent().hasClass('input-group')) {
						$(element).parent().after('<div class="text-danger">' + json['error'][i] + '</div>');
					} else {
						$(element).after('<div class="text-danger">' + json['error'][i] + '</div>');
					}
				}

				// Highlight any found errors
				$('.text-danger').parent().addClass('has-error');
            } else {
                <?php if ($shipping_required) { ?>
                var shipping_address = $('#collapse-payment-address input[name=\'shipping_address\']:checked').prop('value');

                if (shipping_address) {
                    $.ajax({
                        url: 'index.php?route=checkout/shipping_method',
                        dataType: 'html',
                        complete: function() {
                            $('#button-guest').button('reset');
                        },
                        success: function(html) {
							// Add the shipping address
                            $.ajax({
                                url: 'index.php?route=checkout/guest_shipping',
                                dataType: 'html',
                                success: function(html) {
                                    $('#collapse-shipping-address .panel-body').html(html);

									$('#collapse-shipping-address').parent().find('.panel-heading .panel-title').html('<a href="#collapse-shipping-address" data-toggle="collapse" data-parent="#accordion" class="accordion-toggle"><?php echo $text_checkout_shipping_address; ?> <i class="fa fa-caret-down"></i></a>');
                                },
                                error: function(xhr, ajaxOptions, thrownError) {
                                    alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                                }
                            });

						    $('#collapse-shipping-method .panel-body').html(html);

							$('#collapse-shipping-method').parent().find('.panel-heading .panel-title').html('<a href="#collapse-shipping-method" data-toggle="collapse" data-parent="#accordion" class="accordion-toggle"><?php echo $text_checkout_shipping_method; ?> <i class="fa fa-caret-down"></i></a>');

							$('a[href=\'#collapse-shipping-method\']').trigger('click');

							$('#collapse-payment-method').parent().find('.panel-heading .panel-title').html('<?php echo $text_checkout_payment_method; ?>');
							$('#collapse-checkout-confirm').parent().find('.panel-heading .panel-title').html('<?php echo $text_checkout_confirm; ?>');
                        },
                        error: function(xhr, ajaxOptions, thrownError) {
                            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                        }
                    });
                } else {
                    $.ajax({
                        url: 'index.php?route=checkout/guest_shipping',
                        dataType: 'html',
                        complete: function() {
                            $('#button-guest').button('reset');
                        },
                        success: function(html) {
                            $('#collapse-shipping-address .panel-body').html(html);

							$('#collapse-shipping-address').parent().find('.panel-heading .panel-title').html('<a href="#collapse-shipping-address" data-toggle="collapse" data-parent="#accordion" class="accordion-toggle"><?php echo $text_checkout_shipping_address; ?> <i class="fa fa-caret-down"></i></a>');

							$('a[href=\'#collapse-shipping-address\']').trigger('click');

							$('#collapse-shipping-method').parent().find('.panel-heading .panel-title').html('<?php echo $text_checkout_shipping_method; ?>');
							$('#collapse-payment-method').parent().find('.panel-heading .panel-title').html('<?php echo $text_checkout_payment_method; ?>');
							$('#collapse-checkout-confirm').parent().find('.panel-heading .panel-title').html('<?php echo $text_checkout_confirm; ?>');
                        },
                        error: function(xhr, ajaxOptions, thrownError) {
                            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                        }
                    });
                }
                <?php } else { ?>
                $.ajax({
                    url: 'index.php?route=checkout/payment_method',
                    dataType: 'html',
                    complete: function() {
                        $('#button-guest').button('reset');
                    },
                    success: function(html) {
                        $('#collapse-payment-method .panel-body').html(html);

						$('#collapse-payment-method').parent().find('.panel-heading .panel-title').html('<a href="#collapse-payment-method" data-toggle="collapse" data-parent="#accordion" class="accordion-toggle"><?php echo $text_checkout_payment_method; ?> <i class="fa fa-caret-down"></i></a>');

						$('a[href=\'#collapse-payment-method\']').trigger('click');

						$('#collapse-checkout-confirm').parent().find('.panel-heading .panel-title').html('<?php echo $text_checkout_confirm; ?>');
                    },
                    error: function(xhr, ajaxOptions, thrownError) {
                        alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                    }
                });
                <?php } ?>
            }
        },
        error: function(xhr, ajaxOptions, thrownError) {
            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
        }
    });
});

// Guest Shipping
$(document).delegate('#button-guest-shipping', 'click', function() {
    $.ajax({
        url: 'index.php?route=checkout/guest_shipping/save',
        type: 'post',
        data: $('#collapse-shipping-address input[type=\'text\'], #collapse-shipping-address input[type=\'date\'], #collapse-shipping-address input[type=\'datetime-local\'], #collapse-shipping-address input[type=\'time\'], #collapse-shipping-address input[type=\'password\'], #collapse-shipping-address input[type=\'checkbox\']:checked, #collapse-shipping-address input[type=\'radio\']:checked, #collapse-shipping-address textarea, #collapse-shipping-address select'),
        dataType: 'json',
        beforeSend: function() {
        	$('#button-guest-shipping').button('loading');
		},
        success: function(json) {
            $('.alert, .text-danger').remove();

            if (json['redirect']) {
                location = json['redirect'];
            } else if (json['error']) {
                $('#button-guest-shipping').button('reset');

                if (json['error']['warning']) {
                    $('#collapse-shipping-address .panel-body').prepend('<div class="alert alert-danger">' + json['error']['warning'] + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');
                }

				for (i in json['error']) {
					var element = $('#input-shipping-' + i.replace('_', '-'));

					if ($(element).parent().hasClass('input-group')) {
						$(element).parent().after('<div class="text-danger">' + json['error'][i] + '</div>');
					} else {
						$(element).after('<div class="text-danger">' + json['error'][i] + '</div>');
					}
				}

				// Highlight any found errors
				$('.text-danger').parent().addClass('has-error');
            } else {
                $.ajax({
                    url: 'index.php?route=checkout/shipping_method',
                    dataType: 'html',
                    complete: function() {
                        $('#button-guest-shipping').button('reset');
                    },
                    success: function(html) {
                        $('#collapse-shipping-method .panel-body').html(html);

						$('#collapse-shipping-method').parent().find('.panel-heading .panel-title').html('<a href="#collapse-shipping-method" data-toggle="collapse" data-parent="#accordion" class="accordion-toggle"><?php echo $text_checkout_shipping_method; ?> <i class="fa fa-caret-down"></i>');

						$('a[href=\'#collapse-shipping-method\']').trigger('click');

						$('#collapse-payment-method').parent().find('.panel-heading .panel-title').html('<?php echo $text_checkout_payment_method; ?>');
						$('#collapse-checkout-confirm').parent().find('.panel-heading .panel-title').html('<?php echo $text_checkout_confirm; ?>');
                    },
                    error: function(xhr, ajaxOptions, thrownError) {
                        alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                    }
                });
            }
        },
        error: function(xhr, ajaxOptions, thrownError) {
            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
        }
    });
});

$(document).delegate('#button-shipping-method', 'click', function() {
    $.ajax({
        url: 'index.php?route=checkout/shipping_method/save',
        type: 'post',
        data: $('#collapse-shipping-method input[type=\'radio\']:checked, #collapse-shipping-method textarea'),
        dataType: 'json',
        beforeSend: function() {
        	$('#button-shipping-method').button('loading');
		},
        success: function(json) {
            $('.alert, .text-danger').remove();

            if (json['redirect']) {
                location = json['redirect'];
            } else if (json['error']) {
                $('#button-shipping-method').button('reset');

                if (json['error']['warning']) {
                    $('#collapse-shipping-method .panel-body').prepend('<div class="alert alert-danger">' + json['error']['warning'] + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');
                }
            } else {
                $.ajax({
                    url: 'index.php?route=checkout/payment_method',
                    dataType: 'html',
                    complete: function() {
                        $('#button-shipping-method').button('reset');
                    },
                    success: function(html) {
                        $('#collapse-payment-method .panel-body').html(html);

						$('#collapse-payment-method').parent().find('.panel-heading .panel-title').html('<a href="#collapse-payment-method" data-toggle="collapse" data-parent="#accordion" class="accordion-toggle"><?php echo $text_checkout_payment_method; ?> <i class="fa fa-caret-down"></i></a>');

						$('a[href=\'#collapse-payment-method\']').trigger('click');

						$('#collapse-checkout-confirm').parent().find('.panel-heading .panel-title').html('<?php echo $text_checkout_confirm; ?>');
                    },
                    error: function(xhr, ajaxOptions, thrownError) {
                        alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                    }
                });
            }
        },
        error: function(xhr, ajaxOptions, thrownError) {
            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
        }
    });
});

$(document).delegate('#button-payment-method', 'click', function() {
    $.ajax({
        url: 'index.php?route=checkout/payment_method/save',
        type: 'post',
        data: $('#collapse-payment-method input[type=\'radio\']:checked, #collapse-payment-method input[type=\'checkbox\']:checked, #collapse-payment-method textarea'),
        dataType: 'json',
        beforeSend: function() {
         	$('#button-payment-method').val($('#button-payment-method').attr('data-loading-text')).prop('disabled',true);
		},
        success: function(json) {
            $('.alert, .text-danger').remove();

            if (json['redirect']) {
                location = json['redirect'];
            } else if (json['error']) {
                $('#button-payment-method').val('Place Order').prop('disabled',false);
                
                if (json['error']['warning']) {
                    $('#collapse-payment-method .panel-body').prepend('<div class="alert alert-danger">' + json['error']['warning'] + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');
                }
            } else {
                $.ajax({
                    url: 'index.php?route=checkout/confirm',
                    dataType: 'html',
                    complete: function() {
                         //$('#button-payment-method').val('Place Order').prop('disabled',false);
                    },
                    success: function(html) {
                        $('#collapse-checkout-confirm .panel-body').html(html);

						//$('#collapse-checkout-confirm').parent().find('.panel-heading .panel-title').html('<a href="#collapse-checkout-confirm" data-toggle="collapse" data-parent="#accordion" class="accordion-toggle"><?php echo $text_checkout_confirm; ?> <i class="fa fa-caret-down"></i></a>');

						//$('a[href=\'#collapse-checkout-confirm\']').trigger('click');
						
						//$("#collapse-payment-method").addClass('collapse');
						$('.confirm_order').trigger('click');
						
					},
                    error: function(xhr, ajaxOptions, thrownError) {
						 $('#button-payment-method').val('Place Order').prop('disabled',false);
                        alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                    }
                });
            }
        },
        error: function(xhr, ajaxOptions, thrownError) {
            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
        }
    });
});

$(document).on('click', 'input[name=\'payment_method\']', function() {
	
	$('.alert, .text-danger').remove();
	
	var payment_type = $('input:radio[name=payment_method]:checked').val();
	
	$.ajax({
        url: 'index.php?route=checkout/payment_method/updateDiscount',
        type: 'post',
        data: 'payment_type='+payment_type,
        dataType: 'json',
        beforeSend: function() {
         	$('#button-payment-method').val($('#button-payment-method').attr('data-loading-text')).prop('disabled',true);
		},
        success: function(json) {
            $('.alert, .text-danger').remove();

            if (json['redirect']) {
                location = json['redirect'];
            } else if (json['error']) {
                $('#button-payment-method').val('Place Order').prop('disabled',false);
                
                if (json['error']['warning']) {
                    $('#collapse-payment-method .panel-body').prepend('<div class="alert alert-danger">' + json['error']['warning'] + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');
                }
            } else {
                $('#order_total_box').load('index.php?route=checkout/order_total');
				$('#button-payment-method').val('Place Order').prop('disabled',false);
            }
        },
        error: function(xhr, ajaxOptions, thrownError) {
            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
        }
    });
	
});

//--></script>
<?php echo $footer; ?>
