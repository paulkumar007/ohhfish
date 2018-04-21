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