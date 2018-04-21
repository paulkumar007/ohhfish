<form class="form-horizontal">
  <?php if ($addresses) { ?>
  <div class="radio">
    <label>
      <input type="radio" name="payment_address" value="existing" checked="checked" />
      <?php echo $text_address_existing; ?></label>
  </div>
  <div id="payment-existing">
    <select name="address_id" class="form-control" style="height:40px;">
      <?php foreach ($addresses as $address) { ?>
      <?php if ($address['address_id'] == $address_id) { ?>
      <option value="<?php echo $address['address_id']; ?>" selected="selected"><?php echo $address['firstname']; ?> <?php echo $address['lastname']; ?>, <?php echo $address['address_1']; ?>, <?php echo $address['city']; ?>, <?php echo $address['zone']; ?>, <?php echo $address['country']; ?></option>
      <?php } else { ?>
      <option value="<?php echo $address['address_id']; ?>"><?php echo $address['firstname']; ?> <?php echo $address['lastname']; ?>, <?php echo $address['address_1']; ?>, <?php echo $address['city']; ?>, <?php echo $address['zone']; ?>, <?php echo $address['country']; ?></option>
      <?php } ?>
      <?php } ?>
    </select>
  </div>
  <div class="radio">
    <label>
      <input type="radio" name="payment_address" value="new" />
      <?php echo $text_address_new; ?></label>
  </div>
  <?php } ?>
  <br />
  <div id="payment-new" style="display: <?php echo ($addresses ? 'none' : 'block'); ?>;">
    
	<div class="field_set_mo">
		<h2 class="info_p">Personal Information:</h2>
		<div class="set_one">
			<label><p class="text_l"><em>*</em> First Name:</p></label>
			<div class="box_space"> 
			<div class="form-group">
			<input type="text" id="input-payment-firstname" placeholder="Enter First Name" class="box" name="firstname" value="" title="First Name" maxlength="255" 
			class="input-text validate-alpha required-entry">
			</div>
			</div>
		</div>
		<div class="set_two">
			<div class="box_space"> 
			<div class="form-group">
			<label><p class="text_l"><em>*</em> Last Name:</p></label>
			<input type="text" id="input-payment-lastname" placeholder="Enter Last Name" class="box" name="lastname" value="" title="First Name" maxlength="255" class="input-text validate-alpha required-entry">
			</div>
			</div>
		</div>
		<!--<div class="set_three">
			<div class="box_space"> 
			<div class="form-group">
			<label><p class="text_l"><em>*</em> Email ID:</p></label>
			<input type="text" id="emailid" placeholder="Enter Email ID" class="box" name="firstname" value="" title="First Name" maxlength="255" class="input-text validate-alpha required-entry">
			</div>
			</div>
		</div>-->
		<hr class="style9">
		<h2 class="info_p">Address:</h2>
		<div class="set_one">
			<label><p class="text_l">Select City</p></label>
			<div class="box_space">
			<div class="form-group">
			<select class="form-control-w" name="city" id="input-payment-city">
				<option value="Mumbai">Mumbai</option>
				<option value="Navi Mumbai">Navi Mumbai</option>
				<option value="Thane">Thane</option>
			</select>
			</div>
			</div>
		</div>
		<div class="set_two">
			<div class="box_space"> 
			<div class="form-group">
			<label><p class="text_l">Pincode</p></label>
			<input type="text" maxlength="10" id="input-payment-postcode" placeholder="Enter pincode" autocomplete="off" class="box" value="" name="postcode" title="Pincode">
			</div>
			</div>
		</div>
		<div class="set_five">
			<div class="box_space"> 
			<div class="form-group">
			<label><p class="text_l"><em>*</em> Flat No./ Bldg Name/ Area / Street / Landmark: </p></label>
			<textarea class="fk-input" name="address_1" rows="3" cols="1" placeholder="Enter Delivery Address" id="input-payment-address-1"></textarea>
			</div>
			</div>
		</div>
	</div>
    <div style="clear:both;"></div>
	<input type="hidden" name="country_id" value="99" />
	<input type="hidden" name="zone_id" value="1493" />			
  </div>
  <div class="buttons clearfix">  
	<button class="btn-green done" id="button-payment-address" data-loading-text="<?php echo $text_loading; ?>" type="button">Save and Deliver Here</button>
  </div>
</form>
<script type="text/javascript"><!--
$('input[name=\'payment_address\']').on('change', function() {
	if (this.value == 'new') {
		$('#payment-existing').hide();
		$('#payment-new').show();
	} else {
		$('#payment-existing').show();
		$('#payment-new').hide();
	}
});
//--></script>