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
    <div class="item"> <img src="catalog/view/theme/default/image/slides/home_02.jpg" style="width:100%" data-src="" alt="Second slide">
      <div class="container">
       <!-- <div class="carousel-caption">
          <h1>Slide 2</h1>
          <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed vitae egestas purus. </p>
          <p><a class="btn btn-lg btn-primary" href="#" role="button">Learn more</a></p>
        </div>-->
      </div>
    </div>
  </div>
  <a class="left carousel-control" href="#myCarousel" data-slide="prev"><span class="glyphicon glyphicon-chevron-left"></span></a>
  <a class="right carousel-control" href="#myCarousel" data-slide="next"><span class="glyphicon glyphicon-chevron-right"></span></a>
  </div>

<!--news-->
<div id="news">
<marquee bgcolor="#2196f3" style="color: #FFFFFF;padding:10px" behavior="scroll" scrolldelay="100"> Delivery available in two slots: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<span class="line">|</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Slot 1: 9am to 2pm / Slot 2: 3pm to 6pm  (both orders accepted until 6pm previous day) </marquee>
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
						<li role="presentation" class="active"><a href="#Pescetarian" aria-controls="Pescetarian" role="tab" data-toggle="tab">Why a Pescetarian ?</a></li>
						<li role="presentation"><a href="#ourstory" aria-controls="ourstory" role="tab" data-toggle="tab">Our Story</a></li>
					</ul>

					<!-- Tab panes -->
					<div class="tab-content">
						<div role="tabpanel" class="tab-pane active scrollbar" id="Pescetarian">
						<strong style="color:#2196f3">What is Pescetarianism ?</strong><br/>
						Pescetarianism, or pesco-vegetarianism, means being vegetarian while still including seafood in your diet. One still cuts out red meat, pork, poultry, etc. from his or her diet like a vegetarian, but does not cut out fish and other seafood.<br/><br/>

						<strong style="color:#2196f3">Why turn Pescetarian ?</strong><br/>
						With the increase of fresh fish and vegetables in your diet, we believe that you’ll feel healthier, experience less headaches and sickness as well as increased energy levels. In the long-term, you may also improve your weight, the health of your brain and heart, hair and even your skin. A pescetarian diet may not only reduce your risk for heart disease and other cardiovascular diseases, but stroke, osteoporosis, obesity, diabetes, arthritis, high blood pressure and some types of cancer.<br/><br/>

						<strong style="color:#2196f3">What the experts say ?</strong><br/>
						Experts say that up to 80 percent of cancer cases are preventable through healthy diets that contain low amounts of fats and oils, and high amounts of fiber — the model pescetarian diet.<br/><br/>

						<strong style="color:#2196f3">Are we experiencing a revolution ?</strong><br/>
						More and more people around the world are turning Pescetarian including the die-hard vegetarians with increased awareness of the innumerable health benefits. With the amount of exposure on print and social media platforms educating people of the risks of eating red-meat and hybrid poultry, people are becoming health conscious. They're trying to cut on the unhealthy foods and making all efforts to remain fit at any cost.<br/>

						</div>
						<div role="tabpanel" class="tab-pane scrollbar" id="ourstory">We have been in the seafood business for three generations, indulged in retail, wholesale and exports and understand the true meaning of <strong>FRESH</strong>. Seafood being highly perishable item needs utmost care in preserving and hygene, especially, when it comes to exports, since the consignments have to maintain it's freshness until it reaches the shores and finally to the end consumer. But, we think otherwise; why should only export items be fresh? why deprive our citizens the right to the best quality food. With this mindset, <strong>Ohh Fish</strong> came into existence. We are based right at the heart of all the action - the BMC Fish Market at CSMT. We also have our own modern processing, packaging and logistics centre with a fleet of refrigerated trucks to take care of the delivery of our consignments. We also have highly trained and experienced staff to manage every aspect of this food chain including procuring, processing, cutting, packaging, quality control and transporting. We live by the mantra that our products will be nothing but the <strong>BEST.</strong><br/><br/>

						Our <strong>Aim</strong> is to provide export quality seafood to every consumer - the freshest seafood money can buy. Having said that, we ensure all this comes at a fair price.<br/><br/>

						It's our <strong>Mission</strong> to change the unhealthy food habbits and inculcate a sense of eating healthy food. Today, India ranks 154th amongst the 195 countries in the World Health Index and is the Diabetes & Heart Disease capital of the world, all this due to the unhealthy diet.<br/><br/>

						It is our <strong>Vision</strong> to see our country rank amongst the healthiest nations on the planet. We pledge to achieve this together !<br/><br/>
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
			<div class="col-sm-12"><h2 class="fish_heading_one" style="color:#2196f3;">Shop by Category</h2></div>
				<div class="col-sm-6">
					<div class="row">
					<div class="col-sm-12"><img src="catalog/view/theme/default/image/homepage_icons/shop-by-cat-seafish.jpg" class="img-responsive"/>
					<div class="shopbycat-info"><a href="/seawater-fish" alt="" style="color:#fff;text-decoration:none;">Seawater Fish <img src="catalog/view/theme/default/image/homepage_icons/shopbycat_arrow.png" class=""/></a></div>
					</div>
					<div class="col-sm-12"><img src="catalog/view/theme/default/image/homepage_icons/shop-by-cat-seafoods.jpg" class="img-responsive"/>
					<div class="shopbycat-info"><a href="/frozen-seafood" alt="" style="color:#fff;text-decoration:none;">Frozen Seafood <img src="catalog/view/theme/default/image/homepage_icons/shopbycat_arrow.png" class=""/></a></div>
					</div>
					</div>
				</div>
				<div class="col-sm-6">
					<div class="row">
					<div class="col-sm-12"><img src="catalog/view/theme/default/image/homepage_icons/shop-by-cat-fish.jpg" class="img-responsive"/>
					<div class="shopbycat-info"><a href="/freshwater-fish" alt="" style="color:#fff;text-decoration:none;">Freshwater Fish <img src="catalog/view/theme/default/image/homepage_icons/shopbycat_arrow.png" class=""/></a></div>
					</div>
					<div class="col-sm-12"><img src="catalog/view/theme/default/image/homepage_icons/shop-by-cat-exotic.jpg" class="img-responsive"/>
					<div class="shopbycat-info"><a href="/exotic" alt="" style="color:#fff;text-decoration:none;">Exotic <img src="catalog/view/theme/default/image/homepage_icons/shopbycat_arrow.png" class=""/></a></div>
					</div>
					<div class="col-sm-12"><img src="catalog/view/theme/default/image/homepage_icons/shop-by-cat-prawns.jpg" class="img-responsive"/>
					<div class="shopbycat-info"><a href="/prawns" alt="" style="color:#fff;text-decoration:none;">Prawns <img src="catalog/view/theme/default/image/homepage_icons/shopbycat_arrow.png" class=""/></a></div>
					</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>

<?php if($best_seller){ ?>
<section class="home-area" style="background:#aae7ff">
	<div class="home_content shopbycat" style="padding-bottom:100px;">
		<div class="container">
			<div class="row">
				<div class="col-sm-12"><h2 class="fish_heading_one">Best Sellers</h2></div>
				<div class="home_list col-sm-12">
					<ul id="owl-seller" class="owl-carousel owl-theme">						
						<!--<li class="fish_row item"><a href="#"><img src="catalog/view/theme/default/image/homepage_icons/bestseller1.jpg" alt="" title="" class="img-responsive" /></a>
						<div class="caption"><h4>Surmai - King Fish</h4></div>
						</li>
						<li class="fish_row item"><a href="#"><img src="catalog/view/theme/default/image/homepage_icons/bestseller2.jpg" alt="" title="" class="img-responsive" /></a>
						<div class="caption"><h4>Pomfret</h4></div>
						</li>
						<li class="fish_row item"><a href="#"><img src="catalog/view/theme/default/image/homepage_icons/bestseller3.jpg" alt="" title="" class="img-responsive" /></a>
						<div class="caption"><h4>Tiger - Prawns</h4></div>
						</li>
						<li class="fish_row item"><a href="#"><img src="catalog/view/theme/default/image/homepage_icons/bestseller4.jpg" alt="" title="" class="img-responsive" /></a>
						<div class="caption"><h4>Mackerel(Bangda)</h4></div>
						</li>-->
						<?php foreach($best_seller as $product){ ?>
						<li class="fish_row item"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="" title="" class="img-responsive" /></a>
						<div class="caption"><h4><?php echo $product['name']; ?></h4></div>
						</li>
						<?php } ?>
					</ul>
				</div>
			</div>
		</div>
	</div>
</section>
<?php } ?>

<div class="boxes_area">
            <div class="container">
				<h3 class="order_heading">Why only <strong>Ohhfish </strong>Seafoods?</h3>
                <div class="col-container">
                    <div class="col">
                        <div class="box_orange center-block">
						 <div class="box_orange_img text-center">
							<img src="catalog/view/theme/default/image/homepage_icons/why_sec4.png"/><br/></div>
                         <h3 class="box_heading">Direct<br/>Sourcing</h3>
						 <p>OhhFish Seafoods does sourcing for all it's prducts directly through the fishermen. We have the manpower and the infrastructure to handle all aspects of business from the port to the customer's plate. We have a strict 'No Middle-man' policy to ensure only the freshest catch reaches our customer and at the right price.</p>
                        </div>
                    </div>
                    <div class="col">
                        <div class="box_orange center-block">
						<div class="box_orange_img text-center">
							<img src="catalog/view/theme/default/image/homepage_icons/why_sec1.png"/><br/></div>
                           <h3 class="box_heading">Doorstep<br/>Delivery</h3>
							<p>Our customers can now stop worrying about visiting the chaotic and stingy markets and having to haggle with the bullying vendors for a bargain. Your fresh pick will now be delivered to your doorstep.</p>
                        </div>
                    </div>
                    <div class="col">
                        <div class="box_orange center-block">
							<div class="box_orange_img text-center">
							<img src="catalog/view/theme/default/image/homepage_icons/why_sec2.png"/><br/></div>
                         <h3 class="box_heading">Freshness at your<br/> fingertips</h3>
						 <p>Your fresh pick is now only a few clicks away. No need to worry for tendering exact change. Make cashless transactions for hassle free and best deals</p>
						</div>
					</div>
                    <div class="col">
                        <div class="box_orange center-block">
							<div class="box_orange_img text-center">
							<img src="catalog/view/theme/default/image/homepage_icons/why_sec3.png"/><br/></div>
                         <h3 class="box_heading">Choose<br/>your Cut</h3>
						 <p>Choose your favourite cut or slice; be it fillets or steaks, for no exrta cost.</p>
						</div>
					</div>
            </div>
			<div class="clear"></div>
			<div class="row">
				<h3 class="order_heading">Health Benefits </h3>
				<div class="col-sm-12">
				<p>Fish is loaded with important nutrients that is beneficial to health like Omega 3 fatty acids and Vitamins D and B2. Fish is rich in calcium and phosphorus. Fish is also a great source of minerals such as  iron, zinc, iodine, magnesium and potassium. Most Health organisations have recommended eating fish atleast twice a week. Here's a list of health benefits from consuming fish.</p>
				<div class="owl-carousel owl-theme" id="owl-benefits">
					<div class="well well-blue">It lowers risk of Heart diseases</div>
					<div class="well well-blue">It reduces risk of Alzheimer's disease</div>
					<div class="well well-blue">It can help lower symptoms of Depression</div>
					<div class="well well-blue">It’s a great source of Vitamin D</div>
					<div class="well well-blue">It helps improves Vision and Eye Health</div>
					<div class="well well-blue">It can help you Sleep Better</div>
					<div class="well well-blue">It helps fight Acne</div>
					<div class="well well-blue">It's helpful in alleviating Rheumatoid Arthritis</div>
					<div class="well well-blue">It's a Lean Meat</div>
					<div class="well well-blue">It helps lower Cholesterol</div>
					<div class="well well-blue">It decrease risk of Heart Failure</div>
					<div class="well well-blue">It lowers risk of Strokes</div>
					<div class="well well-blue">It decreases the risk of Autoimmune disease</div>
					<div class="well well-blue">It lowes risk of Cancer</div>
					<div class="well well-blue">It speeds up your Metabolism</div>
					<div class="well well-blue">It lowers Blood Pressure</div>
					<div class="well well-blue">It increase Concentration and Attention Span</div>
					<div class="well well-blue">It Alleviates PMS Symptoms</div>
					<div class="well well-blue">It helps treat Liver disease</div>
					<div class="well well-blue">It helps Athelets recover faster</div>
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
		<h3 class="order_heading">What people are saying? </h3>
		<div class="row">
		<div class="col-sm-12">
		<div class="owl-carousel owl-theme" id="owl-testimonial">
			<div class="text-center center-block">
				<div class="well well-lg well-testimonial">
					<img src="catalog/view/theme/default/image/homepage_icons/blockquotes.png"  class="img-responsive center-block" style="width:auto"/><br/><br/>
					<p>Thanks to OhhFish for changing the way I buy my fish. I can now order online sitting in my office or on my way home for an express delivery and still enjoy my favourite fish over dinner.</p><br/>
					<img src="catalog/view/theme/default/image/testimonial/testi3.jpg" class="img-responsive center-block" style="width:auto"/><br/><br/>
					<p><strong>Mr. & Mrs. Kushal Saraf</strong></p>
					<p> Vile Parle, Mumbai</p>
				</div>
			</div>
			<div class="text-center center-block">
				<div class="well well-lg well-testimonial">
					<img src="catalog/view/theme/default/image/homepage_icons/blockquotes.png" class="img-responsive center-block" style="width:auto"/><br/><br/>
					<p>Who says seafood parties are only enjoyed at restaurants by footing big bills and reserving tables. Ohh Fish has come as a saviour; we can now order from OhhFish in bulk quantities at great prices and showcase our culinary skills to our guests at the comfort of our homes.</p><br/>
					<img src="catalog/view/theme/default/image/testimonial/testi1.jpg" class="img-responsive center-block" style="width:auto"/><br/><br/>
					<p><strong>Mr. & Mrs. Rohit & Jolene Serrao</strong></p>
					<p> Andheri, Mumbai</p>
				</div>
			</div>
			<div class="text-center center-block">
				<div class="well well-lg well-testimonial">
					<img src="catalog/view/theme/default/image/homepage_icons/blockquotes.png" class="img-responsive center-block" style="width:auto"/><br/><br/>
					<p>I prefer to personally visit OhhFish, not just for the wide variety of seafood and great ambience, but also for the friendly staff and the freshness tips that I get which is priceless.</p><br/>
					<img src="catalog/view/theme/default/image/testimonial/testi2.jpg" class="img-responsive center-block" style="width:auto"/><br/><br/>
					<p><strong>Mr. Shahzad Shaikh</strong></p>
					<p> Mira Road, Mumbai</p>
				</div>
			</div>
			<div class="text-center center-block">
				<div class="well well-lg well-testimonial">
					<img src="catalog/view/theme/default/image/homepage_icons/blockquotes.png" class="img-responsive center-block" style="width:auto"/><br/><br/>
					<p>Being a working couple, we're always on the move and hardly get time to pick our favourite stuff, as our weekends are spent on completing household chores. With OhhFish at our disposal, we can now order fresh seafood on the go at great prices.</p><br/>
					<img src="catalog/view/theme/default/image/testimonial/testi4.jpg" class="img-responsive center-block" style="width:auto"/><br/><br/>
					<p><strong>Mr. & Mrs. Rupesh & Trupti Karbate</strong></p>
					<p> Worli, Mumbai</p>
				</div>
			</div>
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
	dots: false,
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
});
$('#owl-benefits').owlCarousel({
    loop:false,
	items:6,
    margin:10,
    nav:true,
	dots: false,
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
});
$('#owl-testimonial').owlCarousel({
    loop:false,
	items:3,
    margin:10,
    nav:true,
	dots: false,
    responsive:{
        0:{
            items:2
        },
        600:{
            items:5
        },
        1000:{
            items:3
        }
    }
})
 $( ".owl-prev").html('<i class="fa fa-angle-left fa-2x"></i>');
 $( ".owl-next").html('<i class="fa fa-angle-right fa-2x"></i>');
});
</script>
<style>

.scrollbar {height:300px;overflow-y:scroll;}
.scrollbar::-webkit-scrollbar{width:6px;background-color:#000;}
.scrollbar::-webkit-scrollbar-thumb{background-color:#ccc;border-radius:10px;}
.scrollbar::-webkit-scrollbar-thumb:hover{background-color:#ccc;border:1px solid #ccc;}
.scrollbar::-webkit-scrollbar-thumb:active{background-color:#666666;border:1px solid #fff;}
.scrollbar::-webkit-scrollbar-track{border:1px #333 solid;-webkit-box-shadow:0 0 2px #333 inset;} 
</style>
<?php echo $footer; ?>