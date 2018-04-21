<?php echo $header; ?>
<link href="catalog/view/theme/default/stylesheet/order_summary_cart.css" rel="stylesheet">
<!-- imgage start here
<div class="image_slot">
<div class="row"> 
<div class="col-sm-12">
<div class="banner_img"></div>
</div>
</div>
</div>-->

<!--bread_area start here-->
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
<?php if ($attention) { ?>
  <div class="alert alert-info"><i class="fa fa-info-circle"></i> <?php echo $attention; ?>
    <button type="button" class="close" data-dismiss="alert">&times;</button>
  </div>
  <?php } ?>
  <?php if ($success) { ?>
  <div class="alert alert-success"><i class="fa fa-check-circle"></i> <?php echo $success; ?>
    <button type="button" class="close" data-dismiss="alert">&times;</button>
  </div>
  <?php } ?>
  <?php if ($error_warning) { ?>
  <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?>
    <button type="button" class="close" data-dismiss="alert">&times;</button>
  </div>
  <?php } ?>
<!--product details start here-->
<div class="product_d">
<div class="container">
<form id="cart_form" action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
<div class="row">
<div class="col-sm-8 for_992">

<div class="order_box">
<!--first_row-->
<div class="left_o_top">
<span class="my_cart">My Cart</span> 

<div class="right_o_top">
<div class="location">
<i class="fa fa-map-marker blue" aria-hidden="true"></i>
<form autocomplete="off" class="loc">
<input type="text" class="loc_details" placeholder="Enter Delivery Pincode" value="" tabindex="1" maxlength="6" id="pincodeInputId"></form>
<span class="check_t">Check</span>
</div>
</div>
</div>

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
<input type="number" name="quantity[<?php echo $product['cart_id']; ?>]" alt="<?php echo $product['cart_id']; ?>" value="<?php echo $product['quantity']; ?>" min="0.5" max="10" /><span class="kg_a">Kg </span>
<a href="javascript:void(0);" onclick="cart.remove('<?php echo $product['cart_id']; ?>');" role="button" class="remove_b"><i class="fa fa-trash-o" aria-hidden="true"></i> Remove </a>
</div>
</div>


<div class="item_c">
<p class="d_date" id="available_msg"></p>
<p class="d_date">
<span id="date_<?php echo $product['cart_id']; ?>"><?php echo $product['ship_date'] != '0000-00-00' ? date('D, j M Y',strtotime($product['ship_date'])) : date('D, j M Y',strtotime("+2 day")); ?></span>
<div id="dater_<?php echo $product['cart_id']; ?>" style="display:none;">
<div class="datepicker" alt="<?php echo $product['cart_id']; ?>"></div>
<input type="hidden" id="input_<?php echo $product['cart_id']; ?>" value="" />
</div>
<a href="javascript:void(0);" id="changer_<?php echo $product['cart_id']; ?>" onclick="change_delivery_date(<?php echo $product['cart_id']; ?>);"><strong>Change</strong></a>
</p>
<p class="d_slot">Delivery at Rs. 60, <br/>Free delivery on order over Rs.599.00</p>
<p><b>Choose Delivery Time Slots:</b><br/>
<input type="radio" name="delivery_<?php echo $product['cart_id']; ?>" class="delivery_timer" alt="<?php echo $product['cart_id']; ?>" <?php if($product['ship_time'] == '8:30 am to 12:30 pm'){ echo 'CHECKED'; } ?> value="8:30 am to 12:30 pm" /> 8:30 am to 12:30 pm<br/>
<input type="radio" name="delivery_<?php echo $product['cart_id']; ?>" class="delivery_timer" alt="<?php echo $product['cart_id']; ?>" <?php if($product['ship_time'] == '1:00 pm to 5:00 pm'){ echo 'CHECKED'; } ?> value="1:00 pm to 5:00 pm" /> 1:00 pm to 5:00 pm
</p>
</p>

</div>
</div>
<?php } ?>
<?php } ?>

<?php if ($modules) { ?>
<div class="order_b" style="display:none;">
  <div class="panel-group" id="accordion">
	<?php foreach ($modules as $module) { ?>
	<?php echo $module; ?>
	<?php } ?>
  </div>
</div>
  <?php } ?>

<div class="last_box">
<div class="button_place">
<a href="<?php echo $continue; ?>" class="b_con" role="button"><i class="fa fa-chevron-left" aria-hidden="true" style="font-size:14px"></i> <?php echo $button_shopping; ?> </a>
<a href="<?php echo $checkout; ?>" class="b_place" role="button"><?php echo $button_checkout; ?> </a>
</div>
</div>

</div>
</div>

<div class="col-sm-4">
<div class="price_box">
	<div class="head_row">
		<p class="p_details">PRICE DETAILS </p>
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
</div>

<div class="safe_row">
<div class="hygine">
<img src="catalog/view/theme/default/image/hygine.png" class="shield_i">
<span class="hygine_text">Safe and Secure Payments. 100% hygine.</span>
</div>
</div>

</div>
</div>
</form>

 
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script>
  $( function() {
	// 0 = monday, 1 = tuesday, 2 = wednesday, 3 = thursday,
    // 4=friday, 5 = saturday, 6=sunday

    var daysToDisable = [1, 2, 3, 4, 5];
			
    $( ".datepicker" ).datepicker({ 
		dateFormat: 'dd-mm-yy',
		beforeShowDay: disableSpecificWeekDays,
		onSelect: function(dateText, inst) {
			var date = $(this).val();
			var alter = $(this).attr('alt');
			$("#input_"+alter).val(date);
			save_delivery_date(alter);
		}
	});
	
	function disableSpecificWeekDays(date) {
		var day = date.getDay();
		for (i = 0; i < daysToDisable.length; i++) {
			if ($.inArray(day, daysToDisable) != -1) {
				return [false];
			}
		}
		return [true];
	}
			
  } );
</script>
<script>
(function($) {
	$.fn.spinner = function() {
		this.each(function() {
			var el = $(this);

			// add elements
			el.wrap('<span class="spinner"></span>');     
			el.before('<span class="sub">-</span>');
			el.after('<span class="add">+</span>');

			// substract
			el.parent().on('click', '.sub', function () {
				if (el.val() > parseFloat(el.attr('min')))
				el.val( function(i, oldval) {
					var finalval = parseFloat(oldval)-0.5;
					var alter = el.attr('alt');
					var quantity = finalval;
					
					var pricer = $("#pricer_"+alter).attr('alt');
					var total = quantity * pricer;
					$("#pricer_"+alter).html('Rs. '+total+' ');
					
					el.val(quantity);
					$("#cart_form").submit();
					//return finalval;
				});
			});

			// increment
			el.parent().on('click', '.add', function () {
				if (el.val() < parseFloat(el.attr('max')))
				el.val( function(i, oldval) {
					var finalval = parseFloat(oldval)+0.5;
					var alter = el.attr('alt');
					var quantity = finalval;
					
					var pricer = $("#pricer_"+alter).attr('alt');
					var total = quantity * pricer;
					$("#pricer_"+alter).html('Rs. '+total+' ');
		
					el.val(quantity);
					$("#cart_form").submit();
					//return finalval;
				});
			});
	    });
	};
})(jQuery);

$('input[type=number]').spinner();

$(function(){
	$(".check_t").click(function(){
		var pincode = $("#pincodeInputId").val();
		//$(this).text('Change');
		if(pincode == '400060' || pincode == '400013' || pincode == '400018' || pincode == '112233'){
			$("#available_msg").html('<span style="color:green;">Delivery Available </span>');
		} else {
			$("#available_msg").html('<span style="color:red;">Sorry Currently Delivery is not Available in your area!</span>');
		}
		$("#pincodeInputId").val('');
	});
});

function change_delivery_date(cart_id){
	$("#date_"+cart_id).hide();
	$("#changer_"+cart_id).hide();
	$("#dater_"+cart_id).show();
	//$("#saver_"+cart_id).show();
}

function save_delivery_date(cart_id){
	
	var ship_date = $("#input_"+cart_id).val();
	$("#date_"+cart_id).show();
	$("#changer_"+cart_id).show();
	$("#dater_"+cart_id).hide();
	//$("#saver_"+cart_id).hide();
	
	 $.ajax({
        url: 'index.php?route=checkout/cart/saveDeliveryDate',
        type: 'post',
        data: 'ship_date='+ship_date+'&cart_id='+cart_id,
        dataType: 'html',
        beforeSend: function() {
         	
		},
        success: function(output) {
			$("#date_"+cart_id).html(output);
        },
        error: function(xhr, ajaxOptions, thrownError) {
            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
        }
    });
	
}

$(".delivery_timer").click(function(){
	var ship_time = $(this).val();
	var cart_id = $(this).attr('alt');
	
	 $.ajax({
        url: 'index.php?route=checkout/cart/saveDeliveryTime',
        type: 'post',
        data: 'ship_time='+ship_time+'&cart_id='+cart_id,
        dataType: 'html',
        beforeSend: function() {
         	
		},
        success: function(output) {
			//$("#date_"+cart_id).html(output);
        },
        error: function(xhr, ajaxOptions, thrownError) {
            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
        }
    });
	
});
</script>
</div>
</div>
<?php echo $footer; ?>
