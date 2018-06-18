<?php echo $header; ?>
<link href="catalog/view/theme/default/stylesheet/index.css" rel="stylesheet">
<link href="catalog/view/theme/default/stylesheet/marine_fish.css" rel="stylesheet">
<!--
<?php if($thumb){ ?>
<div class="image_slot">
<div class="row">
<div class="col-sm-12">
<div class="banner_img" style="background:url(<?php echo $thumb; ?>)no-repeat center;background-size:cover;"></div>
</div>
</div>
</div>
<?php } ?>-->

<!-- imgage start here-->
<div class="image_slot">
<div class="row">
	<img src="<?php echo $thumb;?>" alt="" class="img-fluid" style="width: 100%;"/>
</div>
</div>
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
<section style="background-color:#e7f8ff;">
<div class="container">
<div class="row">
<div class="col-sm-12 pad20">
<h2 class="fish_heading_one"><?php echo $heading_title; ?></h2>
<p>Seawater fish is a delight to have on your dining table.Whether it’s a family get together on a weekend or a party on-the-house with friends, it’s always a welcome. Try out your culinary expertise with Ohhfish Seafood’s Pomfret, Salmon or King Fish and please everybody’s appetite. Saltwater fish taste best in any way. Taste lovers can go for saute, pan fry, deep fry or bake. Health freaks can try their hands on poach, broil or steam. Seafood barbecue on the beach will definitely create an eternal experience and everlasting memory. Come celebrate!</p>
</div>
</div>
</div>
</section>
<!--section start here-->
<section>
<div class="top_row_1">
<div class="container">
<div class="row">
<div class="col-md-3 col-sm-3 col-xs-12" style="background-color:#fafafa;">
  <div class="form-group input-group input-group-sm">
	<div class="filterbyCls" style="margin:10px 0;">Filter By</div>
	<?php foreach ($sorts as $sorts) { ?>
	<?php if ($sorts['value'] == $sort . '-' . $order) { ?>
		 <label class="check_container"><?php echo $sorts['text']; ?>
			<input type="checkbox" name="sorter[]" value="<?php echo $sorts['href']; ?>" CHECKED onchange="location = this.value;" />
			<span class="checkmark"></span>
		 </label>
	<?php } else { ?>
		<label class="check_container"><?php echo $sorts['text']; ?>
			<input type="checkbox" name="sorter[]" value="<?php echo $sorts['href']; ?>" onchange="location = this.value;" />
			<span class="checkmark"></span>
		</label>
	<?php } ?>
	<?php } ?>
  </div>
</div>
<div class="col-sm-9 col-md-9 col-xs-12">
<div class="row">
<?php
	if ($products) {
	$p = 1;
?>
<div class="col-md-12 col-sm-12 col-xs-12">
	<ul class="row" style="list-style-type: none;">
		<?php foreach ($products as $product) { ?>
			<li class="col-md-4 col-sm-6 col-xs-6">
				<div class="thumbnail">
				<a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive" /></a>
				<div class="caption">
				<h3 class="fish_heading"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?> </a><span class="second_text"><?php if($product['size'] != '') { echo '( '.$product['size'].' )'; } ?> </span></h3>
				<h3 class="fish_type_marathi">( <?php echo $product['sku']; ?> )  </h3>
				<span class="details_gm"> <?php if($product['approx'] != '') { echo '( '.$product['approx'].' )'; } ?> </span>
				<div class="availTxt"><i class="fa fa-circle" style="font-size:14px;color:#00a651"></i> Available</div>
				<?php if ($product['price']) { ?>
                <h3 class="price" id="pricer_<?php echo $product['product_id']; ?>" alt="<?php echo $product['only_price']; ?>">
                  <?php if (!$product['special']) { ?>
                  <?php echo 'Rs. '.round($product['only_price']/2); ?>
                  <?php } else { ?>
                  <span class="price-new"><?php echo $product['special']; ?></span> <span class="price-old"><?php echo $product['price']; ?></span>
                  <?php } ?>
                <!--<span class="kg">(Kg) </span>--> </h3>
                <?php } ?>
				
				<div class="quantity_box">
				<input type="number" id="quantity_<?php echo $product['product_id']; ?>" alt="<?php echo $product['product_id']; ?>" min="0.5" max="5" value="0.5" />
				<span class="kg">Kg </span>
				</div>
				<a href="javascript:void(0);" role="button" class="add_to_cart" onclick="show_details('<?php echo $product['href']; ?>','<?php echo $product['product_id']; ?>');">Show Details</a>
				</div>
				</div>
			</li>
		<?php
				/*if($p % 3 == 0){
					echo '</ul></div><div class="col-md-12 col-sm-12 col-xs-12"><ul style="list-style-type: none;">';
				}
				$p++;*/
			}
		?>
	</ul>
</div>
<?php } ?>

</div>

<?php if (!$categories && !$products) { ?>
  <p><?php echo $text_empty; ?></p>
  <div class="buttons">
	<div class="pull-left"><a href="<?php echo $continue; ?>" class="btn btn-primary"><?php echo $button_continue; ?></a></div>
  </div>
  <br/><br/>
  <br/><br/>
  <?php } ?>

<div class="col-sm-2">
	<div class="right_sec"></div>
</div>
</div>

<!--<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>-->
<script>
function show_details(product_href,product_id) {
	var quantity = $("#quantity_"+product_id).val();
	if(product_href.indexOf("?") == '-1'){
		location.href = product_href+'?quantity='+quantity;
		return false;
	} else {
		location.href = product_href+'&quantity='+quantity;
		return false;
	}
	
}

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

					return finalval;
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

					return finalval;
				});
			});
	    });
	};
})(jQuery);

$('input[type=number]').spinner();
</script>
</div>
</div>
</div>
</section>
<section>
<div class="order_process">
	<div class="container">
		<div class="col-sm-12">
			<h3 class="order_heading">How to Order? </h3>
			<div class="row seven-cols">
			<div class="circle_pro">
			<div class="col-lg-1 col-md-3 col-sm-4 col-xs-6 c_space">
			<div class="circle_one">
				<img src="catalog/view/theme/default/image/login.png" alt="login" class="order_icons">
			</div>
			<p class="login_tx">Login to <br>www.ohhfish.com</p>
			</div>

			<div class="col-lg-1 col-md-3 col-sm-4 col-xs-6 c_space">
			<div class="circle_one">
				<img src="catalog/view/theme/default/image/f_fish.png" alt="login" class="order_icons">
			</div>
			<p class="login_tx">Select<br> Favourite Fish</p>
			</div>

			<div class="col-lg-1 col-md-3 col-sm-4 col-xs-6 c_space">
			<div class="circle_one">
				<img src="catalog/view/theme/default/image/location.png" alt="login" class="order_icons">
			</div>
			<h4 class="login_tx">Check pincode <br> service & availability</h4>
			</div>

			<div class="col-lg-1 col-md-3 col-sm-4 col-xs-6 c_space">
			<div class="circle_one">
				<img src="catalog/view/theme/default/image/d_slot.png" alt="login" class="order_icons">
			</div>
			<h4 class="login_tx">Select delivery <br> date & slot </h4>
			</div>


			<div class="col-lg-1 col-md-3 col-sm-4 col-xs-6 c_space">
			<div class="circle_one">
				<img src="catalog/view/theme/default/image/pay.png" alt="login" class="order_icons">
			</div>
			<h4 class="login_tx">Pay securely</h4>
			</div>


			<div class="col-lg-1 col-md-3 col-sm-4 col-xs-6 c_space">
			<div class="circle_one">
				<img src="catalog/view/theme/default/image/home_delivery.png" alt="login" class="order_icons">
			</div>
			<h4 class="login_tx">Ready to receive <br>home delivery</h4>
			</div>

			<!--<div class="col-lg-1 col-md-3 col-sm-4 col-xs-6 c_help">
			<img src="catalog/view/theme/default/image/helpyou.png"  class="help" alt="geniee">
			</div>-->

			</div>
			</div>
		</div>
	</div>
</div>
</section>
<?php echo $footer; ?>