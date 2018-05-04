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



<!--slider jquery start here
<link href="catalog/view/theme/default/stylesheet/slider_bootstrap.min.css" rel="stylesheet" />
<script src="catalog/view/javascript/slider_jquery.min.js"></script>
<script src="catalog/view/javascript/slider_bootstrap.min.js"></script>-->


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
<!--article start here
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
</article>-->

<!--section start here-->
<section class="home-area">
	<div class="home_content">
		<div class="container">
			<div class="row">
				<div class="col-sm-12">
				<div class="tab-section">
				  <div class="tab-inner">
					<ul class="nav nav-tabs" role="tablist">
						<li role="presentation" class="active"><a href="#Pescetarian" aria-controls="Pescetarian" role="tab" data-toggle="tab">Why a Pescetarian</a></li>
						<li role="presentation"><a href="#ourstory" aria-controls="ourstory" role="tab" data-toggle="tab">Our story</a></li>
					</ul>

					<!-- Tab panes -->
					<div class="tab-content">
						<div role="tabpanel" class="tab-pane active" id="Pescetarian">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<br/><br/>
						
						Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<br/><br/>
						
						Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<br/><br/>
						
						Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<br/><br/>
						
						Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<br/><br/>
						</div>
						<div role="tabpanel" class="tab-pane" id="ourstory">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.<br/><br/>
						
						
						Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<br/><br/>
						
						Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passage..
						</div>
					</div>
				  </div>
				</div>
				</div>
			</div>
		</div>
	</div>
</section>

<!--section start here-->
<section class="home-area">
	<div class="home_content shopbycat">
		<div class="container">
			<div class="row">
				<div class="col-sm-6">
					<div class="row">
					<div class="col-sm-12"><img src="catalog/view/theme/default/image/homepage_icons/shop-by-cat-seafish.jpg" class="img-responsive"/>
					<div class="shopbycat-info">SeawaterFish <img src="catalog/view/theme/default/image/homepage_icons/shopbycat_arrow.png" class=""/></div>
					</div>
					<div class="col-sm-12"><img src="catalog/view/theme/default/image/homepage_icons/shop-by-cat-seafoods.jpg" class="img-responsive"/>
					<div class="shopbycat-info">Frozen Seafood <img src="catalog/view/theme/default/image/homepage_icons/shopbycat_arrow.png" class=""/></div>
					</div>
					</div>
				</div>
				<div class="col-sm-6">
					<div class="row">
					<div class="col-sm-12"><img src="catalog/view/theme/default/image/homepage_icons/shop-by-cat-fish.jpg" class="img-responsive"/>
					<div class="shopbycat-info">Freshwater Fish <img src="catalog/view/theme/default/image/homepage_icons/shopbycat_arrow.png" class=""/></div>
					</div>
					<div class="col-sm-12"><img src="catalog/view/theme/default/image/homepage_icons/shop-by-cat-exotic.jpg" class="img-responsive"/>
					<div class="shopbycat-info">Exotic <img src="catalog/view/theme/default/image/homepage_icons/shopbycat_arrow.png" class=""/></div>
					</div>
					<div class="col-sm-12"><img src="catalog/view/theme/default/image/homepage_icons/shop-by-cat-prawns.jpg" class="img-responsive"/>
					<div class="shopbycat-info">Prawns <img src="catalog/view/theme/default/image/homepage_icons/shopbycat_arrow.png" class=""/></div>
					</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>

<section class="home-area" style="background:#aae7ff">
	<div class="home_content shopbycat" style="padding-bottom:100px;">
		<div class="container">
			<div class="row">
				<div class="col-sm-12"><h2 class="fish_heading_one">Best Sellers</h2></div>
				<div class="home_list col-sm-12">
					<ul id="owl-seller" class="owl-carousel owl-theme">
						<li class="fish_row item"><a href="#"><img src="catalog/view/theme/default/image/homepage_icons/bestseller1.jpg" alt="" title="" class="img-responsive" /></a>
						<div class="caption"><h4>Surmai - King Fish</h4></div>
						</li>
						<li class="fish_row item"><a href="#"><img src="catalog/view/theme/default/image/homepage_icons/bestseller2.jpg" alt="" title="" class="img-responsive" /></a>
						<div class="caption"><h4>Pomfret</h4></div>
						</li>
						<li class="fish_row item"><a href="#"><img src="catalog/view/theme/default/image/homepage_icons/bestseller3.jpg" alt="" title="" class="img-responsive" /></a>
						<div class="caption"><h4>Tiger - Prawns</h4></div>
						</li>
						<li class="fish_row item"><a href="#"><img src="catalog/view/theme/default/image/homepage_icons/bestseller4.jpg" alt="" title="" class="img-responsive" /></a>
						<div class="caption"><h4>Mackerel(Bangada)</h4></div>
						</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</section>


<div class="boxes_area">
            <div class="container">
				<h3 class="order_heading">Why Only <strong>ohh fish </strong> Seafoods? </h3>
                <div class="col-container">
                    <div class="col">
                        <div class="box_orange center-block">
						 <div class="box_orange_img text-center">
							<img src="catalog/view/theme/default/image/homepage_icons/why_sec1.png"/><br/></div>
                         <h3 class="box_heading">Delivery at Your<br/>Door Step</h3>  
						 <p>Our customers enjoy fresh pick every day sitting right at home, without witnessing the market chaos, polluted lanes, contaminated containers, bullying vendors and soaring prices.Our customers enjoy fresh pick every day sitting right at home, without witnessing the market chaos, polluted lanes, contaminated containers, bullying vendors and soaring prices.</p>
                        </div>
                    </div>
                    <div class="col">
                        <div class="box_orange center-block">
						<div class="box_orange_img text-center">
							<img src="catalog/view/theme/default/image/homepage_icons/why_sec2.png"/><br/></div>
                           <h3 class="box_heading">Best Price for<br/>Best Catch</h3> 
							<p>We offer best value for money deals in line with the excellent quality product vis-a-vis market offer.</p>				   
                        </div>
                    </div>
                    <div class="col">
                        <div class="box_orange center-block">
							<div class="box_orange_img text-center">
							<img src="catalog/view/theme/default/image/homepage_icons/why_sec3.png"/><br/></div>
                         <h3 class="box_heading">Your Wish is Our<br/>Command</h3>
						 <p>Our customers have an upper hand in choosing their most favoured cuts and slices, be it fillet, steaks or anything.</p>
						</div>
					</div>
                    <div class="col">
                        <div class="box_orange center-block">
							<div class="box_orange_img text-center">
							<img src="catalog/view/theme/default/image/homepage_icons/why_sec4.png"/><br/></div>
                         <h3 class="box_heading">No Middle man Policy</h3>
						 <p>At ohh fish Sea Foods sourcing of fishes, prawns & crabs are directly done by us. We have the infrastructure and manpower to handle the business right from the port. We have a strict policy of...Readmore</p>
						</div>
					</div>
            </div>
			<div class="clear"></div>
			<div class="row">
				<h3 class="order_heading">Benefits </h3>
				<div class="col-sm-12">
				<p>Fish is loaded with important nutrients that is beneficial to health like Omega 3 fatty acids and Vitamins D and B2. Fish is rich in calcium and phosphorus. Fish is also a great source of minerals such as  iron, zinc, iodine, magnesium and potassium. Most Health organisations have recommended eating fish atleast twice a week. Here's a list of health benefits from consuming fish.</p>
				<div class="row owl-carousel owl-theme" id="owl-benefits">
					<div class="well well-blue">It lowers risk of Heart diseases</div>
					<div class="well well-blue">It reduces risk of Alzheimer's disease</div>
					<div class="well well-blue">It can help lower symptoms of Depression</div>
					<div class="well well-blue">It’s a great source of Vitamin D</div>
					<div class="well well-blue">It helps improves Vision and Eye Health</div>
					<div class="well well-blue">It helps improves Vision and Eye Health</div>
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
			<h3 class="order_heading">What people are saying </h3>
			<div class="col-sm-4 text-center center-block">
				<div class="col-sm-12 well well-lg well-testimonial">
					<img src="catalog/view/theme/default/image/homepage_icons/blockquotes.png"/><br/><br/>
					<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make</p><br/>
					<img src="catalog/view/theme/default/image/homepage_icons/testimonial_noimage.png"/><br/><br/>
					<p><strong>Rupesh Karbate</strong></p>
					<p> Mumbai, Dadar</p>
				</div>
			</div>
			<div class="col-sm-4 text-center center-block">
				<div class="col-sm-12 well well-lg well-testimonial">
					<img src="catalog/view/theme/default/image/homepage_icons/blockquotes.png"/><br/><br/>
					<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make</p><br/>
					<img src="catalog/view/theme/default/image/homepage_icons/testimonial_noimage.png"/><br/><br/>
					<p><strong>Rupesh Karbate</strong></p>
					<p> Mumbai, Dadar</p>
				</div>
			</div>
			<div class="col-sm-4 text-center center-block">
				<div class="col-sm-12 well well-lg well-testimonial">
					<img src="catalog/view/theme/default/image/homepage_icons/blockquotes.png"/><br/><br/>
					<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make</p><br/>
					<img src="catalog/view/theme/default/image/homepage_icons/testimonial_noimage.png"/><br/><br/>
					<p><strong>Rupesh Karbate</strong></p>
					<p> Mumbai, Dadar</p>
				</div>
			</div>
		</div>
	</div>
</div>

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
<p class="login_tx">Login to <br>www.fishgeniee.com</p>
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
<h4 class="login_tx">Check pincode <br> service & availibility</h4>
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
<script type="text/javascript">
$(document).ready(function () {
$('#owl-seller').owlCarousel({
	items:4,
    loop:false,
    margin:10,
    responsiveClass:true,
    responsive:{
        0:{
            items:1,
            nav:true
        },
        600:{
            items:3,
            nav:false
        },
        1000:{
            items:4,
            nav:true,
            loop:false
        }
    }
})
$('#owl-benefits').owlCarousel({
    loop:false,
	items:6,
    margin:10,
    nav:true,
    responsive:{
        0:{
            items:2
        },
        600:{
            items:5
        },
        1000:{
            items:6
        }
    }
})


});
</script>
<?php echo $footer; ?>