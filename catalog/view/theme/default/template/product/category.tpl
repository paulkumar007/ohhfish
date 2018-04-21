<?php echo $header; ?>
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
<img src="<?php echo $thumb;?>" alt="<?php echo $product['name']; ?>" class="img-fluid"/>

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

<!--section start here-->
<section>
<div class="top_row_1">
<div class="container">
<div class="row">
<div class="col-sm-12">
<div class="marine_fish_one">
<h2 class="fish_heading_one"><?php echo $heading_title; ?></h2>
</div>

<?php
	if ($products) { 
	$p = 1;
?>
<div class="home_list">
	<ul class="fish_list">
		<?php foreach ($products as $product) { ?>
			<li class="col-md-3 col-sm-6 col-xs-12 fish_row">
				<div class="thumbnail">
				<a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive" /></a>
				<div class="caption">
				<h3 class="fish_heading"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?> </a><span class="second_text"><?php if($product['size'] != '') { echo '( '.$product['size'].' )'; } ?> </span></h3>
				<h3 class="fish_type_marathi">( <?php echo $product['sku']; ?> )  </h3>
				<?php if ($product['price']) { ?>
                <h3 class="price" id="pricer_<?php echo $product['product_id']; ?>" alt="<?php echo $product['only_price']; ?>">
                  <?php if (!$product['special']) { ?>
                  <?php echo 'Rs. '.round($product['only_price']/2); ?>
                  <?php } else { ?>
                  <span class="price-new"><?php echo $product['special']; ?></span> <span class="price-old"><?php echo $product['price']; ?></span>
                  <?php } ?>
                <!--<span class="kg">(Kg) </span>--> </h3>
                <?php } ?>
				
				<span class="details_gm"> <?php if($product['approx'] != '') { echo '( '.$product['approx'].' )'; } ?> </span>
				<div class="quantity_box">	
				<input type="number" alt="<?php echo $product['product_id']; ?>" min="0.5" max="5" value="0.5" />
				<span class="kg">Kg </span>
				</div>
				<a href="<?php echo $product['href']; ?>" role="button" class="add_to_cart">View Details</a>
				</div>
				</div>
			</li>
		<?php 
				if($p % 4 == 0){
					echo '</ul></div><div class="home_list"><ul>';
				}
				$p++;
			}
		?>                          
	</ul>
</div>
<?php } ?>

<?php if (!$categories && !$products) { ?>
  <p><?php echo $text_empty; ?></p>
  <div class="buttons">
	<div class="pull-left"><a href="<?php echo $continue; ?>" class="btn btn-primary"><?php echo $button_continue; ?></a></div>
  </div>
  <br/><br/>
  <br/><br/>
  <?php } ?>
	  
<div class="col-sm-2">
<div class="right_sec">

</div>

</div>
</div>

<!--<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>-->
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


</section>

<?php echo $footer; ?>
