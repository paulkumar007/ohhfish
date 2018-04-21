<!--footer start here-->
<div class="cart_box">
<a href="index.php?route=checkout/cart" class="cart_link">
<h3 class="add_text">My Cart </h3>
<span class="g_lamp">
<div class="bck_lamp">
<img src="catalog/view/theme/default/image/g_lamp.png" width="64px" height="64px" alt="geniee_lamp"></div>
<!--<i class="fa fa-shopping-basket" aria-hidden="true" style="font-size:30px; color:#fff;">-->
<span class="badge loc">
<?php echo $total_cart; ?></span><!--</i>--></span> </a></div>
<footer>

<div class="footer_links">
<ul class="footer_list">
			<li><a href="/about-us">About Us</a></li>
			<li>|</li>
			<li><a href="/faq">FAQ's</a></li>
			<li>|</li>
			<li><a href="/terms-and-conditions">Terms & Conditions</a></li>
		</ul>
</div>


<div class="copyrights">
<p class="copy_text">Copyright © 2017-2018, www.fishgeniee.com. All rights reserved. 
<a href="#" class="copyright_a">customercare@fishgeniee.com</a>
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
</body>
</html>