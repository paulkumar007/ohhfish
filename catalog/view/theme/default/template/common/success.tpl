<?php echo $header; ?>
<link href="catalog/view/theme/default/stylesheet/thankyou_page.css" rel="stylesheet">
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
<div class="product_d">
	<div class="container">
		<div class="col-sm-12">
			<div class="thank_u">
				<img src="catalog/view/theme/default/image/icon_fish.jpg" width="120px" height="120px" class="fish_ico" align="left">
				<h3 class="thank_h">Thank you for your order!</h3>
				<p class="thank_p">Your order has been placed and is being processed. 
				When the item(s) are shipped, you 
				will receive an email/ Sms with the details.</p>
			</div>

			<div class="order_details">
				<div class="order_in">
					<div class="col-sm-6 border_a">
						<div class="order_left">
							<h3 class="order_heading">Order Details</h3>
							<div class="col-sm-3 lef_p"><p class="order_ds">Order ID:  </p></div>
							<div class="col-sm-9 right_p"> <p class="order_info"><?php echo $order_info['order_id']; ?> (<?php echo $total_quantity; ?>) </p></div>
							<div class="col-sm-3 lef_p"><p class="order_ds">Order Date:</p></div>
							<div class="col-sm-9 right_p"> <p class="order_info"><?php echo date("D, M jS Y g:i A",strtotime($order_info['date_added'])); ?></p></div>
							<div class="col-sm-3 lef_p"><p class="order_ds">Total Amount:</p></div>
							<div class="col-sm-9 right_p"><p class="order_info">₹<?php echo round($order_info['total']); ?>  through <?php echo $order_info['payment_method']; ?></p></div>
						</div>
					</div>
					<div class="col-sm-6">
						<div class="order_right">
							<h3 class="order_heading">Delivery Address</h3>
							<div class="col-sm-12">
								<p class="name_info"><?php echo $order_info['payment_firstname'].' '.$order_info['payment_lastname']; ?> </p>
								<p class="add_info"><?php echo $order_info['payment_address_1'].', '.$order_info['payment_city'].' - '.$order_info['payment_postcode'].', '.$order_info['payment_zone'].', '.$order_info['payment_country']; ?></p>
								<p class="add_info">Tel No.: <?php echo $order_info['telephone']; ?> </p>
							</div>
						</div>
					</div>
				</div>
				<?php if($products){ ?>
				<?php foreach($products as $product){ ?>
				<div class="order_b">
					<div class="item_a">
						<a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['image']; ?>" class="pro_img"></a>
					</div>
					<div class="item_b">
						<p class="product_id"><?php echo $product['model']; ?></p>
						<p class="productname"> <?php echo $product['name']; ?> <span class="fish_type_marathi"> (<?php echo $product['sku']; ?>) </span></p>
						<h3 class="price">Rs. <?php echo round($product['total']); ?></h3>
					</div>
					<div class="item_c">
						<div class="col-sm-1">
							<img src="catalog/view/theme/default/image/tempo.svg" class="tempo" />
						</div>
						<div class="col-sm-11">
							<p class="d_slot">
							Delivery expected by <?php echo $product['ship_date'] != '0000-00-00' ? date('D, jS M Y',strtotime($product['ship_date'])) : date('D, jS M Y',strtotime("+2 day")); ?>
							<br>between <?php if($product['ship_time'] != '') { echo $product['ship_time']; } else { echo '8.30am to 12.30pm'; } ?>
							</p>
						</div>
					</div>
					<div class="item_d">
						<p class="info_cancel">The order will not be canceled after 30 minutes </p>
						<a href="index.php?route=account/return/add&order_id=<?php echo $product['order_id']; ?>&product_id=<?php echo $product['product_id']; ?>" target="_blank" class="cancel_button">
							<div class="cancel_item_a">
								<img src="catalog/view/theme/default/image/cancel.svg" class="can">
							</div>
							<p class="cancel_item">Cancel Item</p>
						</a>
					</div>
				</div>
			<?php } ?>
			<?php } ?>
			</div>

			<div class="last_box">
				<div class="button_place">
					<a href="index.php" class="b_con" role="button"><i class="fa fa-chevron-left" aria-hidden="true" style="font-size:14px"></i> CONTINUE SHOPPING </a>
				</div>
			</div>
		</div>
	</div>
</div>
<?php echo $footer; ?>