<?php
	echo $header; 
	
	$popup_session = 'no';
	if(isset($_SESSION['fish_popup'])){
		$popup_session = 'no';
	} else {
		$_SESSION['fish_popup'] = 'yes';
	}
	
	/*
	$popup_cookie = 'yes';
	if(isset($_COOKIE['fishgeniee_popup'])){
		$popup_cookie = 'no';
	}
	*/
?>
<link href="catalog/view/theme/default/stylesheet/index.css" rel="stylesheet">
<link href="catalog/view/theme/default/stylesheet/font-awesome.min.css" rel="stylesheet">
<link href="catalog/view/theme/default/stylesheet/font-awesome.css" rel="stylesheet">
<script src="catalog/view/javascript/index.js" type="text/javascript"></script>



<!--slider jquery start here-->
<link href="catalog/view/theme/default/stylesheet/slider_bootstrap.min.css" rel="stylesheet" />
<script src="catalog/view/javascript/slider_jquery.min.js"></script>
<script src="catalog/view/javascript/slider_bootstrap.min.js"></script>


<script type="text/javascript">
	$(document).ready(function(){
		
		var popup = '<?php echo $popup_session; ?>';
		if(popup == 'yes'){
			$.colorbox({width:"45%", height:"85%", href:"popup.html"});
			$.colorbox.resize();
			/*
			$.ajax({
				url: 'ajax.php',
				type: 'post',
				dataType: 'json',
				data: 'flag=add_cookie',
				success: function(data) {
					
				}
			});
			*/
		}
	});
</script>





<div class="img_slot">

<div id="myCarousel" class="carousel slide" data-ride="carousel"> 
  <!-- Indicators -->
  
  <ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1"></li>
    <li data-target="#myCarousel" data-slide-to="2"></li>
  </ol>
  <div class="carousel-inner">
    <div class="item active"> <img src="catalog/view/theme/default/image/slides/home_01.jpg" style="width:100%" alt="First slide">
      <div class="container">
        <!--div class="carousel-caption">
          <h1>Slide 1</h1>
          <p>Aenean a rutrum nulla. Vestibulum a arcu at nisi tristique pretium.</p>
          <p><a class="btn btn-lg btn-primary" href="#" role="button">Sign up today</a></p>
        </div>-->
      </div>
    </div>
    <div class="item"> <img src="catalog/view/theme/default/image/slides/home_02.jpg" style="width:100%" data-src="" alt="Second    slide">
      <div class="container">
       <!-- <div class="carousel-caption">
          <h1>Slide 2</h1>
          <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed vitae egestas purus. </p>
          <p><a class="btn btn-lg btn-primary" href="#" role="button">Learn more</a></p>
        </div>-->
      </div>
    </div>
    <div class="item"><img src="catalog/view/theme/default/image/slides/home_03.jpg" style="width:100%" data-src="" alt="Third slide">
      <div class="container">
       <!-- <div class="carousel-caption">
          <h1>Slide 3</h1>
          <p>Donec sit amet mi imperdiet mauris viverra accumsan ut at libero.</p>
          <p><a class="btn btn-lg btn-primary" href="#" role="button">Browse gallery</a></p>
        </div>-->
      </div>
    </div>
  </div>	
  <a class="left carousel-control" href="#myCarousel" data-slide="prev"><span class="glyphicon glyphicon-chevron-left"></span></a> 
  <a class="right carousel-control" href="#myCarousel" data-slide="next"><span class="glyphicon glyphicon-chevron-right"></span></a>
  </div>

<!--news-->
<div id="news">


<div class="ticker-wrap">
<div class="ticker">
<div class="ticker__item"><a href="#">Delivery available in two slot*</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<span class="line">|</span>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div>

<div class="ticker__item"><a href="#">Slot 1: 8.30am to 12.30pm (Order accepted before one day till 8.00pm) </a>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<span class="line">|</span>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div>


<div class="ticker__item"><a href="#">Slot 2: 4.30pm to 8.30pm (Order accepted same day before 12.00pm)</a> </div>
  
</div>
</div>

</div>

<main class="site-main">
<!--article start here-->
<article>
<div class="container">
<div class="row">
<div class="col-sm-12">
<h3 class="article_text">
We deliver Fresh, Cleant, Ready to fry/cook Seafood to your doorstep.</h3>
<p class="doorstep">ORDER... COOK... EAT..<br>from the sea, to your plate. 
</p>

</div>
</div>
</div>
</article>


<!--section start here-->
<section class="home-area">
<?php
	if ($marine_products) {
?>
<div class="home_content_1">
<div class="home_content">
<div class="container">
<div class="row">
<div class="col-sm-12">
<h2 class="fish_heading_one">Marine Fish</h2></div>
<div class="home_list">
	<ul>
		<?php foreach ($marine_products as $product) { ?>
			<li class="col-md-3 col-sm-6 col-xs-12 fish_row">
				<div class="thumbnail">
				<a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive" /></a>
				<div class="caption">
				<h3 class="fish_heading"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?> </a><span class="second_text">(<?php echo $product['size']; ?>) </span></h3>
				<h3 class="fish_type_marathi">( <?php echo $product['sku']; ?> )  </h3>
				<?php if ($product['price']) { ?>
                <h3 class="price" id="pricer_<?php echo $product['product_id']; ?>" alt="<?php echo $product['only_price']; ?>">
                  <?php if (!$product['special']) { ?>
                  <?php echo 'Rs. '.round($product['only_price']/2); ?>
                  <?php } else { ?>
                  <span class="price-new"><?php echo $product['special']; ?></span> <span class="price-old"><?php echo $product['price']; ?></span>
                  <?php } ?>
                <!--<span class="kg">(Per Kg) </span>--> </h3>
                <?php } ?>
				
				<span class="details_gm">( <?php echo $product['approx']; ?> ) </span>
				<div class="quantity_box">	
				<input type="number" alt="<?php echo $product['product_id']; ?>" min="0.5" max="5" value="0.5" />
				<span class="kg">Kg </span>
				</div>
				<a href="<?php echo $product['href']; ?>" role="button" class="add_to_cart">View Details</a>
				</div>
				</div>
			</li>
		<?php 
			}
		?>                          
	</ul>
</div>                            
                      
</div>
   
</div>
<div class="view">
<div class="view_arrow"><a href="/marine-fish"> View More  </a> </p>
</div> 
</div>
</div>
</div>
<?php } ?>

<?php
	if ($shell_products) {
?>
<div class="home_content_2">
<div class="home_content">
<div class="container">
<div class="row">
<div class="col-sm-12">
<h2 class="fish_heading_one">Crustaceans</h2></div>
<div class="home_list">
	<ul>
		<?php foreach ($shell_products as $product) { ?>
			<li class="col-md-3 col-sm-6 col-xs-12 fish_row">
				<div class="thumbnail">
				<a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive" /></a>
				<div class="caption">
				<h3 class="fish_heading"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?> </a>
				<span class="second_text">(<?php echo $product['size']; ?>) </span></h3>
				<h3 class="fish_type_marathi">( <?php echo $product['sku']; ?> )  </h3>
				<?php if ($product['price']) { ?>
                <h3 class="price" id="pricer_<?php echo $product['product_id']; ?>" alt="<?php echo $product['only_price']; ?>">
                  <?php if (!$product['special']) { ?>
                  <?php echo 'Rs. '.round($product['only_price']/2); ?>
                  <?php } else { ?>
                  <span class="price-new"><?php echo $product['special']; ?></span> <span class="price-old"><?php echo $product['price']; ?></span>
                  <?php } ?>
                <!--<span class="kg">(Per Kg) </span>--> </h3>
                <?php } ?>
				
				<span class="details_gm">( <?php echo $product['approx']; ?> ) </span>
				<div class="quantity_box">	
				<input type="number" alt="<?php echo $product['product_id']; ?>" min="0.5" max="5" value="0.5" />
				<span class="kg">Kg </span>
				</div>
				<a href="<?php echo $product['href']; ?>" role="button" class="add_to_cart">View Details</a>
				</div>
				</div>
			</li>
		<?php 
			}
		?>                          
	</ul>
</div>                            
                      
</div>
   
</div>
<div class="view">
<div class="view_arrow"><a href="/shell-fish"> View More  </a> </p>
</div> 
</div>
</div>
</div>
<?php } ?>


<?php
	if ($fillet_products) {
?>
<div class="home_content_3">
<div class="home_content">
<div class="container">
<div class="row">
<div class="col-sm-12">
<h2 class="fish_heading_one">Fillet</h2></div>
<div class="home_list">
	<ul>
		<?php foreach ($fillet_products as $product) { ?>
			<li class="col-md-3 col-sm-6 col-xs-12 fish_row">
				<div class="thumbnail">
				<a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive" /></a>
				<div class="caption">
				<h3 class="fish_heading"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?> </a>
				<!--<span class="second_text">(<?php echo $product['size']; ?>) </span>--></h3>
				<h3 class="fish_type_marathi">( <?php echo $product['sku']; ?> )  </h3>
				<?php if ($product['price']) { ?>
                <h3 class="price" id="pricer_<?php echo $product['product_id']; ?>" alt="<?php echo $product['only_price']; ?>">
                  <?php if (!$product['special']) { ?>
                  <?php echo 'Rs. '.round($product['only_price']/2); ?>
                  <?php } else { ?>
                  <span class="price-new"><?php echo $product['special']; ?></span> <span class="price-old"><?php echo $product['price']; ?></span>
                  <?php } ?>
                <!--<span class="kg">(Per Kg) </span>--> </h3>
                <?php } ?>
				
				<!--<span class="details_gm">( <?php echo $product['approx']; ?> ) </span>-->
				<div class="quantity_box">	
				<input type="number" alt="<?php echo $product['product_id']; ?>" min="0.5" max="5" value="0.5" />
				<span class="kg">Kg </span>
				</div>
				<a href="<?php echo $product['href']; ?>" role="button" class="add_to_cart">View Details</a>
				</div>
				</div>
			</li>
		<?php 
			}
		?>                          
	</ul>
</div>                            
                      
</div>
   
</div>
<div class="view">
<div class="view_arrow"><a href="/fillet-fish"> View More  </a> </p>
</div> 
</div>
</div>
</div>
<?php } ?>

 
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


<div class="order_process">
<div class="container">
<div class="col-sm-12">
<h3 class="order_heading">How to Order? </h3>


<div class="row seven-cols">
<div class="circle_pro">
<div class="col-lg-1 col-md-3 col-sm-4 col-xs-6 c_space">
<div class="circle_one">
<img src="catalog/view/theme/default/image/login.png" alt="login" class="order_icons">
<p class="login_tx">Login to <br>www.fishgeniee.com</p>
</div>
</div>

<div class="col-lg-1 col-md-3 col-sm-4 col-xs-6 c_space">
<div class="circle_one">
<img src="catalog/view/theme/default/image/f_fish.png" alt="login" class="order_icons">
<p class="login_tx">Select<br> Favourite Fish</p>
</div>
</div>






<div class="col-lg-1 col-md-3 col-sm-4 col-xs-6 c_space">
<div class="circle_one">
<img src="catalog/view/theme/default/image/location.png" alt="login" class="order_icons">
<h4 class="login_tx">Check pincode <br> service & availibility</h4>
</div>
</div>

<div class="col-lg-1 col-md-3 col-sm-4 col-xs-6 c_space">
<div class="circle_one">
<img src="catalog/view/theme/default/image/d_slot.png" alt="login" class="order_icons">
<h4 class="login_tx">Select delivery <br> date & slot </h4>
</div>
</div>


<div class="col-lg-1 col-md-3 col-sm-4 col-xs-6 c_space">
<div class="circle_one">
<img src="catalog/view/theme/default/image/pay.png" alt="login" class="order_icons">
<h4 class="login_tx">Pay securely</h4>
</div>
</div>


<div class="col-lg-1 col-md-3 col-sm-4 col-xs-6 c_space">
<div class="circle_one">
<img src="catalog/view/theme/default/image/home_delivery.png" alt="login" class="order_icons">
<h4 class="login_tx">Ready to receive <br>home delivery</h4>
</div>
</div>


<div class="col-lg-1 col-md-3 col-sm-4 col-xs-6 c_help">
<img src="catalog/view/theme/default/image/helpyou.png"  class="help" alt="geniee">
</div>


</div>
</div>
</div>
</div>
</div>

<div class="boxes_area">
            <div class="container">
                <div class="row">
                    <div class="col-sm-4">
                        <div class="box_orange">
						
                         <h3 class="box_heading">
						 Fresh Fish</h3>  
                        </div>
                    </div>
                    <div class="col-sm-4">
                        <div class="box_orange">
                           <h3 class="box_heading">
						   Hygienic</h3>                
                        </div>
                    </div>
                    <div class="col-sm-4">
                        <div class="box_orange">
                         <h3 class="box_heading">Quality Product</h3>
                    </div>
                </div>
            </div>
</div>

<!--connect start here-->
<!--<div class="connect">
<div class="container">
<div class="row">
<div class="col-sm-12 connect_center">

<div class="icons">
<a class="facebook" href="https://www.facebook.com/SheoreyDigitalSystems/" target="_blank" title="Facebook"></a>
<a class="twitter" href="#" title="Twitter"></a>
<a class="linkedin" href="https://plus.google.com" target="_blank"  title="google-plus"></a>
</div>

</div>
</div>
</div>
</div>-->


<!--join us start here-->
<div class="join_us">
<div class="container">
<div class="row">
<div class="col-sm-12">
<h3 class="join_text">Join Fishgeniee today To get special Offers </h3>   
<div class="w3ls-form">
				<form action="#" method="post" class="subscribe_form" name="newsletter_form" id="newsletter_form">
					<input type="email" name="newsletter_subscriber" id="newsletter_subscriber" placeholder="Email Id" required />
					<button type="submit" id="newsletter_btn" class="btn1"><i class="fa fa-paper-plane" aria-hidden="true"></i></button>
				</form>
			</div> 


</div>
</div>
</div>
</div>
<script type="text/javascript">
$("#newsletter_form").on('submit',(function(e) {
	e.preventDefault();	
	$.ajax({
		url: 'index.php?route=common/home/newsletterForm', // Url to which the request is send
		type: "POST",             // Type of request to be send, called as method
		data: new FormData(this), // Data sent to server, a set of key/value pairs (i.e. form fields and values)
		dataType: 'json',
		contentType: false,       // The content type used when sending data to the server.
		cache: false,             // To unable request pages to be cached
		processData:false,        // To send DOMDocument or non processed data file it is set to false
		beforeSend: function() {
			$('.success, .warning, .error').remove();
			$('#newsletter_btn').attr('disabled', true);
		},
		complete: function() {
			$('#newsletter_btn').attr('disabled', false);
		},
		success: function(data)   // A function to be called if request succeeds
		{
			if (data['error']) {
				$('#newsletter_form').before('<div class="warning" style="color:red;margin-bottom:10px;">' + data['error'] + '</div>');
				return false;
		    }
		    if (data['success']) {
				$('#newsletter_form').before('<div class="success" style="color:white;margin-bottom:10px;">' + data['success'] + '</div>');
				$("#newsletter_subscriber").val('');
				
				return false;
		    }
		}
	});
	return false;
}));
</script>
<?php echo $footer; ?>