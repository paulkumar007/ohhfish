<?php echo $header; ?>
<link href="catalog/view/theme/default/stylesheet/product_detail.css" rel="stylesheet">
<link href="catalog/view/theme/default/stylesheet/add_to_cart_popup.css" rel="stylesheet">
<link href="catalog/view/theme/default/stylesheet/marine_fish.css" rel="stylesheet">
<script src="catalog/view/javascript/cart_popup.js" type="text/javascript"></script>
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

<!--product details start here-->
<div class="product_d">
<div class="container">
<div class="row">
<div class="col-sm-6">

<!--https://bootsnipp.com/snippets/xBdN link for jquery-->

	<?php
		if ($thumb || $images) {
		$count_images = count($images);
	?>
    <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
      <!-- Indicators -->
      <ol class="carousel-indicators">
        <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
		<?php for($i=1; $i <= $count_images; $i++){ ?>
			<li data-target="#carousel-example-generic" data-slide-to="<?php echo $i; ?>"></li>
		<?php } ?>
      </ol>

      <!-- Wrapper for slides -->
		<div class="carousel-inner">
		<?php if ($thumb) { ?>
        <div class="item active">
          <img src="<?php echo $popup; ?>" alt="<?php echo $heading_title; ?>" />
          <div class="carousel-caption">
            <h2 class="img_l_heading"><?php echo $heading_title; ?></h2>
          </div>
        </div>
		<?php } ?>

		<?php if ($images) { ?>
            <?php foreach ($images as $image) { ?>
				<div class="item">
				  <img src="<?php echo $image['popup']; ?>" alt="<?php echo $image['caption']; ?>" />
				  <div class="carousel-caption">
					<h2 class="img_l_heading"><?php echo $image['caption']; ?></h2>
				  </div>
				</div>
			<?php } ?>
        <?php } ?>
      </div>

      <!-- Controls -->
      <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left"></span>
      </a>
      <a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right"></span>
      </a>
    </div>
	<?php } ?>

</div>

<div class="col-sm-6">
<div class="product_info" id="product">

	<!--<h3 class="product_heading">Product ID: <span id="model_no"><?php// echo $model; ?></span></h3>-->
	<h3 class="fish_heading"> <?php echo $heading_title; ?>  <span class="fish_type_marathi"> ( <?php echo $sku; ?> ) </span>  </h3>
	<span class="details_gm"> <?php if($approx != '') { echo '( '.$approx.' )'; } ?> </span>
	<h3 class="price" id="pricer_<?php echo $product_id; ?>" alt="<?php echo $only_price; ?>"><?php echo $price; ?> <!--<span class="kg">(Per Kg) </span>--> </h3>
	<h3 class="available">Availibility: <span class="stock"><?php echo $stock; ?></span></h3>
	<div class="quantity_box">
		<input type="number" name="quantity" alt="<?php echo $product_id; ?>" min="0.5" max="5" value="<?php echo $quantity; ?>" /><span class="kg_a">Kg </span>
		<input type="hidden" id="hidden_size" value="<?php echo $size; ?>" />
		<input type="hidden" name="product_code" id="product_code" value="" />
	</div>

<!--<p class="cuts">Cut Available</p>
<hr class="p_line">
<div class="radio">
      <label><input type="radio" name="optradio"> Whole</label>
    </div>
    <div class="radio">
      <label><input type="radio" name="optradio"> Sliced with Head - Wastage around 250 Grams</label>
    </div>
    <div class="radio">
      <label><input type="radio" name="optradio"> Sliced without Head - Wastage around 350 Grams</label>
    </div>
-->

	<?php if ($options) { ?>
        <hr>
        <h3><?php echo $text_option; ?></h3>
        <?php foreach ($options as $option) { ?>
            <?php if ($option['type'] == 'select') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
              <select name="option[<?php echo $option['product_option_id']; ?>]" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control">
                <option value=""><?php echo $text_select; ?></option>
                <?php foreach ($option['product_option_value'] as $option_value) { ?>
                <option value="<?php echo $option_value['product_option_value_id']; ?>"><?php echo $option_value['name']; ?>
                <?php if ($option_value['price']) { ?>
                (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
                <?php } ?>
                </option>
                <?php } ?>
              </select>
            </div>
            <?php } ?>
            <?php if ($option['type'] == 'radio') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <!--<label class="control-label"><?php //echo $option['name']; ?></label>-->
              <div id="input-option<?php echo $option['product_option_id']; ?>">
                <?php
					$o = 1;
					foreach ($option['product_option_value'] as $option_value) {
				?>
                <div class="radio">
                  <label>
                    <input type="radio" class="optioner" id="<?php echo $o; ?>" name="option[<?php echo $option['product_option_id']; ?>]" alt="<?php echo $option_value['name']; ?>" value="<?php echo $option_value['product_option_value_id']; ?>" />
                    <?php if ($option_value['image']) { ?>
                    <img src="<?php echo $option_value['image']; ?>" alt="<?php echo $option_value['name'] . ($option_value['price'] ? ' ' . $option_value['price_prefix'] . $option_value['price'] : ''); ?>" class="img-thumbnail" />
                    <?php } ?>
                    <?php echo $option_value['name']; ?>
                    <?php if ($option_value['price']) { ?>
                    (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
                    <?php } ?>
                  </label>
                </div>
                <?php
					$o++;
					}
				?>
              </div>
            </div>
            <?php } ?>
            <?php if ($option['type'] == 'checkbox') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label"><?php echo $option['name']; ?></label>
              <div id="input-option<?php echo $option['product_option_id']; ?>">
                <?php foreach ($option['product_option_value'] as $option_value) { ?>
                <div class="checkbox">
                  <label>
                    <input type="checkbox" name="option[<?php echo $option['product_option_id']; ?>][]" value="<?php echo $option_value['product_option_value_id']; ?>" />
                    <?php if ($option_value['image']) { ?>
                    <img src="<?php echo $option_value['image']; ?>" alt="<?php echo $option_value['name'] . ($option_value['price'] ? ' ' . $option_value['price_prefix'] . $option_value['price'] : ''); ?>" class="img-thumbnail" />
                    <?php } ?>
                    <?php echo $option_value['name']; ?>
                    <?php if ($option_value['price']) { ?>
                    (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
                    <?php } ?>
                  </label>
                </div>
                <?php } ?>
              </div>
            </div>
            <?php } ?>
            <?php if ($option['type'] == 'text') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
              <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['value']; ?>" placeholder="<?php echo $option['name']; ?>" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control" />
            </div>
            <?php } ?>
            <?php if ($option['type'] == 'textarea') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
              <textarea name="option[<?php echo $option['product_option_id']; ?>]" rows="5" placeholder="<?php echo $option['name']; ?>" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control"><?php echo $option['value']; ?></textarea>
            </div>
            <?php } ?>
            <?php if ($option['type'] == 'file') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label"><?php echo $option['name']; ?></label>
              <button type="button" id="button-upload<?php echo $option['product_option_id']; ?>" data-loading-text="<?php echo $text_loading; ?>" class="btn btn-default btn-block"><i class="fa fa-upload"></i> <?php echo $button_upload; ?></button>
              <input type="hidden" name="option[<?php echo $option['product_option_id']; ?>]" value="" id="input-option<?php echo $option['product_option_id']; ?>" />
            </div>
            <?php } ?>
            <?php if ($option['type'] == 'date') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
              <div class="input-group date">
                <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['value']; ?>" data-date-format="YYYY-MM-DD" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control" />
                <span class="input-group-btn">
                <button class="btn btn-default" type="button"><i class="fa fa-calendar"></i></button>
                </span></div>
            </div>
            <?php } ?>
            <?php if ($option['type'] == 'datetime') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
              <div class="input-group datetime">
                <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['value']; ?>" data-date-format="YYYY-MM-DD HH:mm" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control" />
                <span class="input-group-btn">
                <button type="button" class="btn btn-default"><i class="fa fa-calendar"></i></button>
                </span></div>
            </div>
            <?php } ?>
            <?php if ($option['type'] == 'time') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
              <div class="input-group time">
                <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['value']; ?>" data-date-format="HH:mm" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control" />
                <span class="input-group-btn">
                <button type="button" class="btn btn-default"><i class="fa fa-calendar"></i></button>
                </span></div>
            </div>
            <?php } ?>
        <?php } ?>
    <?php } ?>
			<input type="hidden" name="product_id" value="<?php echo $product_id; ?>" />
		<div class="cart_button">
			<a href="javascript:void(0);" role="button" id="button-cart" data-loading-text="<?php echo $text_loading; ?>" class="cd-popup-triggerd">Add to Cart</a>
			<!--<a href="#" class="add_to_cart_b" role="button">Checkout</a>-->
		</div>
		<div style="margin-top:20px;"><img src="catalog/view/theme/default/image/secure.png" style="vertical-align:top;"/><span style="padding-left:15px;display:inline-block;">Safe and secure Payments.<br>100% Fresh Products</span></div>
		<div class="cd-popupd" role="alert">
			<div class="cd-popupd-container">
				<p class="text_p">Product was successfully added to your shopping cart.</p>
				<ul class="cd-buttonsd">
					<li><a href="index.php"> Continue Shopping</a></li>
					<li><a href="index.php?route=checkout/cart"> View Cart & Checkout</a></li>
				</ul>
				<a href="javascript:void(0);" class="cd-popupd-close img-replace">Close</a>
			</div>
		</div>
	</div>
</div>
</div>
</div>
</div>
<div class="container">
<hr class="style9">
</div>

<!-- section start here-->
<section class="tabs_nutrition">
<div class="container">
<div class="row">
<div class="col-sm-12">
	<div class="tab" role="tabpanel">
		<!-- Nav tabs -->
		<ul class="nav nav-tabs" role="tablist">
			<li role="presentation" class="active"><a href="#Section1" aria-controls="home" role="tab" data-toggle="tab"> Nutrition</a></li>
			<li role="presentation"><a href="#Section2" aria-controls="profile" role="tab" data-toggle="tab"> Recipe</a></li>
			<li role="presentation"><a href="#Section3" aria-controls="messages" role="tab" data-toggle="tab"> Review</a></li>
		</ul>
		<!-- Tab panes -->
		<div class="tab-content tabs">
			<div role="tabpanel" class="tab-pane fade in active" id="Section1">
			<?php echo $nutrition; ?>
			</div>

			<div role="tabpanel" class="tab-pane fade" id="Section2">
			<?php echo $recipe; ?>
			</div>

			<div role="tabpanel" class="tab-pane fade" id="Section3">
				<?php if ($review_status) { ?>
				  <div class="rating">
					<p>
					  <?php for ($i = 1; $i <= 5; $i++) { ?>
					  <?php if ($rating < $i) { ?>
					  <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i></span>
					  <?php } else { ?>
					  <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
					  <?php } ?>
					  <?php } ?>
					  <a href="" onclick="$('a[href=\'#tab-review\']').trigger('click'); return false;"><?php echo $reviews; ?></a> / <a href="" onclick="$('a[href=\'#tab-review\']').trigger('click'); return false;"><?php echo $text_write; ?></a></p>
					<hr>
					<!-- AddThis Button BEGIN -->
					<div class="addthis_toolbox addthis_default_style" data-url="<?php echo $share; ?>"><a class="addthis_button_facebook_like" fb:like:layout="button_count"></a> <a class="addthis_button_tweet"></a> <a class="addthis_button_pinterest_pinit"></a> <a class="addthis_counter addthis_pill_style"></a></div>
					<script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-515eeaf54693130e"></script>
					<!-- AddThis Button END -->
				  </div>
				  <?php } ?>
			</div>
		</div>
	</div>
</div>
<?php if ($products) { ?>
      <h3>People who bought <?php echo $heading_title; ?> also bought</h3>
      <?php
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
            $p++;
          }
        ?>
      </ul>
    </div>
    <?php } ?>
</div>
</div>
</section>

<script type="text/javascript"><!--

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

$('select[name=\'recurring_id\'], input[name="quantity"]').change(function(){
	$.ajax({
		url: 'index.php?route=product/product/getRecurringDescription',
		type: 'post',
		data: $('input[name=\'product_id\'], input[name=\'quantity\'], select[name=\'recurring_id\']'),
		dataType: 'json',
		beforeSend: function() {
			$('#recurring-description').html('');
		},
		success: function(json) {
			$('.alert, .text-danger').remove();

			if (json['success']) {
				$('#recurring-description').html(json['success']);
			}
		}
	});
});
//--></script>
<script type="text/javascript"><!--
$('.optioner').change(function(){
	var final_name = '';
	var ider = $(this).attr('id');
	var alter = $(this).attr('alt');
	var sizer = $("#hidden_size").val();
	var size = sizer.charAt(0);
	if(size != ''){
		var product_model = '<?php echo $model; ?>'+' ('+size+') ';
	} else {
		var product_model = '<?php echo $model; ?>';
	}

	if(alter.toLowerCase() == 'fillet'){
		var final_name = product_model+'-F';
	} else if(ider == '1'){
		var final_name = product_model+'-A';
	} else if(ider == '2'){
		var final_name = product_model+'-B';
	} else if(ider == '3'){
		var final_name = product_model+'-C';
	} else if(ider == '4'){
		var final_name = product_model+'-D';
	}
	$("#model_no").html(final_name);
	$("#product_code").val(final_name);

});
//--></script>
<script type="text/javascript"><!--
$('#button-cart').on('click', function() {
	$.ajax({
		url: 'index.php?route=checkout/cart/add',
		type: 'post',
		data: $('#product input[type=\'text\'], #product input[type=\'number\'], #product input[type=\'hidden\'], #product input[type=\'radio\']:checked, #product input[type=\'checkbox\']:checked, #product select, #product textarea'),
		dataType: 'json',
		beforeSend: function() {
			$('#button-cart').attr('disabled',true);
		},
		complete: function() {
			$('#button-cart').removeAttr('disabled');
		},
		success: function(json) {
			$('.alert, .text-danger').remove();
			$('.form-group').removeClass('has-error');

			if (json['error']) {
				if (json['error']['option']) {
					for (i in json['error']['option']) {
						var element = $('#input-option' + i.replace('_', '-'));

						if (element.parent().hasClass('input-group')) {
							element.parent().after('<div class="text-danger">' + json['error']['option'][i] + '</div>');
						} else {
							element.after('<div class="text-danger">Opps!! Cuts not Selected</div>');
							//element.after('<div class="text-danger">' + json['error']['option'][i] + '</div>');
						}
					}
				}

				if (json['error']['recurring']) {
					$('select[name=\'recurring_id\']').after('<div class="text-danger">' + json['error']['recurring'] + '</div>');
				}

				// Highlight any found errors
				$('.text-danger').parent().addClass('has-error');
			}

			if (json['success']) {

				$('.cd-popupd').addClass('is-visible');

				$('.breadcrumb').after('<div class="alert alert-success">' + json['success'] + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');

				$('#cart > button').html('<span id="cart-total"><i class="fa fa-shopping-cart"></i> ' + json['total'] + '</span>');

				$('html, body').animate({ scrollTop: 0 }, 'slow');

				$('#cart > ul').load('index.php?route=common/cart/info ul li');
			}
		},
        error: function(xhr, ajaxOptions, thrownError) {
            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
        }
	});
});
//--></script>
<script type="text/javascript"><!--
$('.date').datetimepicker({
	pickTime: false
});

$('.datetime').datetimepicker({
	pickDate: true,
	pickTime: true
});

$('.time').datetimepicker({
	pickDate: false
});

$('button[id^=\'button-upload\']').on('click', function() {
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
					$('.text-danger').remove();

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
$('#review').delegate('.pagination a', 'click', function(e) {
    e.preventDefault();

    $('#review').fadeOut('slow');

    $('#review').load(this.href);

    $('#review').fadeIn('slow');
});

$('#review').load('index.php?route=product/product/review&product_id=<?php echo $product_id; ?>');

$('#button-review').on('click', function() {
	$.ajax({
		url: 'index.php?route=product/product/write&product_id=<?php echo $product_id; ?>',
		type: 'post',
		dataType: 'json',
		data: $("#form-review").serialize(),
		beforeSend: function() {
			$('#button-review').button('loading');
		},
		complete: function() {
			$('#button-review').button('reset');
		},
		success: function(json) {
			$('.alert-success, .alert-danger').remove();

			if (json['error']) {
				$('#review').after('<div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> ' + json['error'] + '</div>');
			}

			if (json['success']) {
				$('#review').after('<div class="alert alert-success"><i class="fa fa-check-circle"></i> ' + json['success'] + '</div>');

				$('input[name=\'name\']').val('');
				$('textarea[name=\'text\']').val('');
				$('input[name=\'rating\']:checked').prop('checked', false);
			}
		}
	});
});

$(document).ready(function() {
	$('.thumbnails').magnificPopup({
		type:'image',
		delegate: 'a',
		gallery: {
			enabled:true
		}
	});
});
//--></script>
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

$(".add").click();
$(".sub").click();
</script>
<?php echo $footer; ?>
