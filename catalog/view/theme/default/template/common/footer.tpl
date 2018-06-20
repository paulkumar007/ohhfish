<!--footer start here-->
<div class="cart_box">
<a href="index.php?route=checkout/cart" class="cart_link">
<!-- <h3 class="add_text">My Cart </h3> -->
<span class="g_lamp">
<div class="bck_lamp">
<img src="catalog/view/theme/default/image/g_lamp.png" width="68px" height="88px" alt="geniee_lamp"></div>
<!--<i class="fa fa-shopping-basket" aria-hidden="true" style="font-size:30px; color:#fff;">-->
<span class="badge loc">
<?php echo $total_cart; ?></span><!--</i>--></span> </a></div>
<footer>

<div class="footer_links">
<!-- <ul class="footer_list">
			<li><a href="/about-us">About Us</a></li>
			<li>|</li>
			<li><a href="/faq">FAQ's</a></li>
			<li>|</li>
			<li><a href="/terms-and-conditions">Terms & Conditions</a></li>
		</ul> -->
		<div class="container">
		<div class="row">
		<div class="col-sm-5 col-sm-push-7">
			<h3 class="join_text"><strong>Join OhhFish today to get special offers</strong></h3>   
			<div class="w3ls-form">
				<form action="#" method="post" class="subscribe_form" name="newsletter_form" id="newsletter_form">
					<input type="email" name="newsletter_subscriber" id="newsletter_subscriber" placeholder="Enter your Email Id" required />
					<button type="submit" id="newsletter_btn" class="btn1"><i class="fa fa-paper-plane" aria-hidden="true"></i></button>
				</form>
			</div>
		</div>
		<div class="col-sm-7 col-sm-pull-5">
		<div class="row">
		<div class="col-sm-8 col-xs-12">
		<ul class="footer_list">
			<li><a href="/delivery">Delivery Information</a></li>
			<li>|</li>
			<li><a href="/privacy">Privacy Policy</a></li>
			<li>|</li>
			<li><a href="javascript:void(0);" class="tnc">Terms & Conditions</a></li>
			<li>|</li>
			<li><a href="javascript:void(0);" class="faq">FAQs</a></li>
		</ul>
		<ul class="footer_list" style="color:#fff;">
			<li><a href="mailto:care@ohhfish.in"><i class="fa fa-envelope-o" aria-hidden="true"></i> <?php echo $email; ?> </a></li>
			<li>|</li>
			<li><a href="tel:+918104464146"> <i class="fa fa-phone" aria-hidden="true"></i> <?php echo $telephone; ?> </a></li>
		</ul>
		</div>
		<div class="col-sm-4 col-xs-12 center-block text-center footer_socials">
		<div style="margin: 0px 0 10px;"><strong>Connect with us:</strong></div>
		<img src="catalog/view/theme/default/image/homepage_icons/whatsapp.png"/>
		<img src="catalog/view/theme/default/image/homepage_icons/facebook.png"/>
		<img src="catalog/view/theme/default/image/instalogo.png"/>
		</div>
		</div>
		</div>		
		</div>
		</div>
</div>


<div class="copyrights">
<p class="copy_text">© Copyright 2018 Ohh Fish. All Rights Reserved. Premium fresh fish daily
<!--<a href="#" class="copyright_a">customercare@fishgeniee.com</a>-->
</p>
</div>
		</div>
		</div>
		</div>		
</footer>


<!-- back to top button here-->

<a href="javascript:void(0);" id="scroll" title="Scroll to Top" style="display: none;">Top<span></span></a>

<script type='text/javascript'>
$(document).ready(function(){ 
    $(window).scroll(function(){ 
        if ($(this).scrollTop() > 100) { 
            $('#scroll').fadeIn(); 
        } else { 
            $('#scroll').fadeOut(); 
        } 
    }); 
    $('#scroll').click(function(){ 
        $("html, body").animate({ scrollTop: 0 }, 200); 
        return false; 
    }); 
});
</script>

<script>
$( document ).ready(function() {
	var talktwidth=800;
	var windotalkwd=$(window).width();
	if(windotalkwd<=768){
		talktwidth=320;
	}
	$('.faq').colorbox({
		href:function(){ return 'index.php?route=information/privacy' },
		width: talktwidth,
		close:'&times;',
	});
	$('.tnc').colorbox({
		href:function(){ return 'index.php?route=information/tnc' },
		width: talktwidth,
		close:'&times;',
	});
});
</script>
</body>
</html>