<!DOCTYPE html>
<!--[if IE]><![endif]-->
<!--[if IE 8 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie8"><![endif]-->
<!--[if IE 9 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie9"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<!--<![endif]-->
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title><?php echo $title; ?></title>
<base href="<?php echo $base; ?>" />
<?php if ($description) { ?>
<meta name="description" content="<?php echo $description; ?>" />
<?php } ?>
<?php if ($keywords) { ?>
<meta name="keywords" content= "<?php echo $keywords; ?>" />
<?php } ?>
<script src="catalog/view/javascript/jquery/jquery-2.1.1.min.js" type="text/javascript"></script>
<link href="catalog/view/javascript/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen" />
<script src="catalog/view/javascript/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<script src="catalog/view/javascript/owl.carousel.min.js" type="text/javascript"></script>
<link href="catalog/view/javascript/font-awesome/css/font-awesome.min.css" rel="stylesheet">
<link href="catalog/view/javascript/font-awesome/css/font-awesome.css" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Open+Sans:400,400i,300,700" rel="stylesheet" type="text/css" />
<link href="https://fonts.googleapis.com/css?family=Roboto+Slab:300,400,700" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Oleo+Script:400,700" rel="stylesheet">
<link href="catalog/view/theme/default/stylesheet/customstyle.css" rel="stylesheet">
<link href="catalog/view/theme/default/stylesheet/navigation.css" rel="stylesheet">
<link href="catalog/view/theme/default/stylesheet/popup.css" rel="stylesheet">
<link href="catalog/view/theme/default/stylesheet/cart_button.css" rel="stylesheet">
<link href="catalog/view/theme/default/stylesheet/colorbox.css" rel="stylesheet">
<link href="catalog/view/theme/default/stylesheet/register.css" rel="stylesheet">
<link href="catalog/view/theme/default/stylesheet/owl.carousel.min.css" rel="stylesheet">
<link href="catalog/view/theme/default/stylesheet/owl.theme.default.min.css" rel="stylesheet">
<link href="catalog/view/theme/default/stylesheet/index.css" rel="stylesheet">
<?php foreach ($styles as $style) { ?>
<link href="<?php echo $style['href']; ?>" type="text/css" rel="<?php echo $style['rel']; ?>" media="<?php echo $style['media']; ?>" />
<?php } ?>
<script src="catalog/view/javascript/navigation/menumaker.js" type="text/javascript"></script>
<script src="catalog/view/javascript/jquery.colorbox-min.js" type="text/javascript"></script>
<script src="catalog/view/javascript/common.js" type="text/javascript"></script>
<?php foreach ($links as $link) { ?>
<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
<?php } ?>
<?php foreach ($scripts as $script) { ?>
<script src="<?php echo $script; ?>" type="text/javascript"></script>
<?php } ?>
<?php foreach ($analytics as $analytic) { ?>
<?php echo $analytic; ?>
<?php } ?>


<!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-111878967-1"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'UA-111878967-1');
</script>

</head>
<body class="<?php echo $class; ?>">
<header>
        <div class="top_bar">
         <div class="container">
               <div class="row">
                    <div class="col-sm-6 left_b"></div>
                    <div class="col-sm-6 right_b">
					 <ul class="top_ul">
						<li class="toplist"><a href="mailto:care@ohhfish.in"><i class="fa fa-envelope-o" aria-hidden="true"></i> care@ohhfish.in </a></li>
						<li class="toplist"> | </li>
						<li class="toplist"><a href="tel:8104464146"> <i class="fa fa-phone" aria-hidden="true"></i> +91 8104-46-41-46 </a></li>
					</ul>
                        <!-- <ul class="top_ul_r">
							<li class="toplist_r"><a href="javascript:void(0);">Refer to neighbour</a></li>
							<li class="vertical_line"> | </li>
							<?php //if ($logged) { ?>
							<li class="toplist_r"> <a href="index.php?route=account/account"> <?php //if($customer_name != '') { echo $customer_name; } else { echo 'My Account'; } ?></a></li>
							<li class="vertical_line"> | </li>
							<li class="toplist_r"><a href="index.php?route=account/logout">Log Out</a></li>
							<li class="vertical_line"> | </li>
							<?php //} else { ?>
							<li class="toplist_r"> <a href="#0" class="cd-popup-trigger"><i class="fa fa-user-o" aria-hidden="true"></i> <?php // echo $customer_name; ?></a></li>
							<li class="vertical_line"> | </li>
							<li class="toplist_r"><a href="index.php?route=account/register">Register</a></li>
							<li class="vertical_line"> | </li>
							<?php //} ?>
							<!-- <li class="toplist_r"><a href="index.php?route=checkout/cart"><i class="fa fa-shopping-cart" aria-hidden="true"></i> My Cart</a></li> -->
							<!-- <li class="vertical_line"> | </li>
							<li class="toplist_r">
							<div class="white">
							<form method="get" action="index.php?route=product/search" id="search">
								<input name="search" id="searcher" type="text" size="40" placeholder="Search..." />
							</form>
							</div></li>
                        </ul>-->
                    </div>
                </div>
            </div>
<div class="cd-popup" role="alert">
	<div class="cd-popup-container">
		<div  class="login_box">
		<div class="head_h"><h3 class="login_heading">Log In</h3>
			<a href="#0" class="cd-popup-close img-replace">Close</a>
		</div>
		<div class="middle_box">
		<div class="left_info">
		<h3 class="get_off">Get Exciting offer Log in Today</h3>
		</div>

		<div class="right_info">
		<form id="log_one" action="index.php?route=account/login" autocomplete="off" method="post" enctype="multipart/form-data">
		<div class="login">
		<input type="text" name="email" class="user active" value="" autocomplete="false"  placeholder="Mobile No." required />
		<input type="password" name="password" class="lock active" autocomplete="false" placeholder="Password" required />
		<!--<input type="text" name="email" class="user active" value="User name" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'User name';}" required />
		<input type="password" name="password" class="lock active" value="Password" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Password';}" required />-->
		</div>
		<div class="forgot">
		<div class="login-check">
 			 <label class="checkbox">
			 <input type="checkbox" name="checkbox"> Remember Me</label>
 		  </div>
		<div class="clear"> </div>
		</div>
		<div class="login-bwn">
	    <input type="button" name="button-login" id="button-login" value="Log in" />
		</div>
		</form>
		<div class="login-para">
 			<p><a href="index.php?route=account/forgotten"> Forgot Password? </a></p>
 		</div>

		<div class="register">
			<p class="register_p">Don't have an Account?<a href="index.php?route=account/register" target="_blank"> Register Now </a></p>
 		</div>
		</div>

		</div>
		</div>

	</div> <!-- cd-popup-container -->
</div>
</div>
</header>

<div class="box_navigation" id="box_navigation">
<div class="container">
<div id="top_left_n">
<a href="index.php">
<img src="catalog/view/theme/default/image/ohhfish_logo.png" alt="Ohhfish_logo"></a></div>
<div id="top_right_n">
<div>
	<div class="white">
	<form method="get" action="index.php?route=product/search" id="search">
		<select class="selectpicker">
		  <option data-icon="glyphicon-heart">Choose Location</option>
		</select>
<input name="search" id="searcher" type="text" size="40" placeholder="Search what you like..." />
	</form>
	</div>
	<div class="inlineBlock">
	<ul class="top_ul_r">
		<?php if ($logged) { ?>
		<li class="toplist_r"> <a href="index.php?route=account/account"> <?php if($customer_name != '') { echo $customer_name; } else { echo 'My Account'; } ?></a></li>
		<li class="vertical_line"> | </li>
		<li class="toplist_r"><a href="index.php?route=account/logout">Log Out</a></li>
		<?php } else { ?>
		<li class="toplist_r"> <a href="#0" class="cd-popup-trigger"><i class="fa fa-user-o" aria-hidden="true"></i> <?php echo $customer_name; ?></a></li>
		<li class="toplist_r"><a href="index.php?route=account/register">Register</a></li>
		<?php } ?>
	</ul>
	</div>
</div>
<?php if ($categories) { ?>
	<div id="navigation">
	<div id="cssmenu">
	<ul>
		<li><a href="/">Home</a></li>
		<?php foreach ($categories as $category) { ?>
			<?php if ($category['children']) { ?>
			<li class="dropdown"><a href="<?php echo $category['href']; ?>" class="dropdown-toggle" data-toggle="dropdown"><?php echo $category['name']; ?></a>
			  <div class="dropdown-menu">
				<div class="dropdown-inner">
				  <?php foreach (array_chunk($category['children'], ceil(count($category['children']) / $category['column'])) as $children) { ?>
				  <ul class="list-unstyled">
					<?php foreach ($children as $child) { ?>
					<li><a href="<?php echo $child['href']; ?>"><?php echo $child['name']; ?></a></li>
					<?php } ?>
				  </ul>
				  <?php } ?>
				</div>
				<a href="<?php echo $category['href']; ?>" class="see-all"><?php echo $text_all; ?> <?php echo $category['name']; ?></a> </div>
			</li>
			<?php } else { ?>
			<li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
			<?php } ?>
		<?php } ?>
	</ul>
	</div>
	<script type="text/javascript">
		$("#cssmenu").menumaker({
			title: "Menu",
			format: "multitoggle"
		});
	</script>
	</div>
<?php } ?>
</div>
</div>
</div>
<script type="text/javascript"><!--

$('#button-login').on('click', function() {
  $.ajax({
    url: 'index.php?route=account/login/confirm',
    type: 'post',
    dataType: 'json',
    data: $("#log_one").serialize(),
    beforeSend: function() {
      $('#button-login').button('loading');
    },
    complete: function() {
      $('#button-login').button('reset');
    },
    success: function(json) {
      $('.alert-success, .alert-danger').remove();

      if (json['error']) {
        $('#log_one').prepend('<div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> ' + json['error'] + '</div>');
      }

      if (json['success']) {
	  /*
	    if(parent.jQuery(".quiz_form").length > 0){
		    var ider = jQuery(".quiz_form").attr('id');
			parent.jQuery("#"+ider).submit();
			return false;
		}
		*/
        //$('#log_one').prepend('<div class="alert alert-success"><i class="fa fa-check-circle"></i> ' + json['success'] + '</div>');
        $('input[name=\'email\']').val('');
        $('input[name=\'password\']').val('');
        $(".close").trigger('click');

		if(json['redirect']){
			location.href= json['redirect'];
			return false;
		}
      }
    }
  });
});

//--></script>
<script type="text/javascript"><!--

$('#button-register').on('click', function() {
  $.ajax({
    url: 'index.php?route=account/register/confirm',
    type: 'post',
    dataType: 'json',
    data: $("#form-register").serialize(),
    beforeSend: function() {
      $('#button-register').button('loading');
    },
    complete: function() {
      $('#button-register').button('reset');
    },
    success: function(json) {
      $('.alert-success, .alert-danger').remove();

      if (json['error']) {
        $('#register').after('<div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> ' + json['error'] + '</div>');
      }

      if (json['success']) {
        fbq('track', 'CompleteRegistration');
        $('#register').after('<div class="alert alert-success"><i class="fa fa-check-circle"></i> ' + json['success'] + '</div>');

        $('input[name=\'firstname\']').val('');
        $('input[name=\'email\']').val('');
        $('input[name=\'password\']').val('');
        $(".close").trigger('click');

		if(json['redirect']){
			location.href= json['redirect'];
			return false;
		}

      }
    }
  });
});

//--></script>
<script type="text/javascript"><!--

$('#button-forgot').on('click', function() {
  $.ajax({
    url: 'index.php?route=account/forgotten/confirm',
    type: 'post',
    dataType: 'json',
    data: $("#form-forgot").serialize(),
    beforeSend: function() {
      $('#button-forgot').button('loading');
    },
    complete: function() {
      $('#button-forgot').button('reset');
    },
    success: function(json) {
      $('.alert-success, .alert-danger').remove();

      if (json['error']) {
        $('#forgot').after('<div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> ' + json['error'] + '</div>');
      }

      if (json['success']) {
        $('#forgot').after('<div class="alert alert-success"><i class="fa fa-check-circle"></i> ' + json['success'] + '</div>');

        $('input[name=\'email\']').val('');
        /*$('#modal-agree').modal('hide');
            setTimeout(function(){
               location.reload();
          }, 100);*/
      }
    }
  });
});

//--></script>
<script type="text/javascript"><!--

function forgot() {
	$('.loginpop-wrap').addClass('hidden');
	$('.forgot-wrap').removeClass('hidden');
}
function go_back(){
	$('.forgot-wrap').addClass('hidden');
	$('.loginpop-wrap').removeClass('hidden');
}

//--></script>
<style type="text/css">
[name=search] {  outline: none;}
#livesearch /*#livesearch **/ {  margin: 0;  padding: 0;  list-style: none; width:600px;}
#livesearch {  position: absolute;  width: 100% !important; max-width:569px;  top: 0px;  background: #ffffff;  z-index: 100000;  box-shadow: 0px 10px 30px rgba(0,0,0,.5); margin-top:0px; }
#livesearch li {  border-top: 1px solid #eeeeee;}
#livesearch a {  display: block;  clear: both;  overflow: hidden;  /*line-height: 20px;  padding: 10px;*/  text-decoration: none;color: #333141;}
/*#livesearch a:hover, #livesearch li.active a { background: #F0EEED;  color:#000;}*/
#livesearch a:hover p { color:#000;}
#livesearch img {float: left;  /*width: auto;  height: 50px;  margin-right: 10px;margin-bottom:20px;*/}
#livesearch img[src=''] {  display: none;}
.more {  text-align: center;}
#livesearch a em {  display: block;  color: #333141;  font-style: normal; }
#livesearch a:hover em, #livesearch li.active a em {  color: #333141;}
#livesearch strike {color: #aaaaaa;}
#livesearch a:hover strike {  color: lightblue;}
#livesearch small {display: block; }
</style>
<script type="text/javascript">
$(function(){

	var delay = (function(){
	  var timer = 0;
	  return function(callback, ms){
	    clearTimeout (timer);
	    timer = setTimeout(callback, ms);
	  };
	})();

/* Desktop Search */
var a = (!!$("#livesearch").length ? $("#livesearch") : $("<ul id='livesearch' class='searchresult-listing'></ul>") ), b = $("#searcher");
function repositionLivesearch() {
	var winwidth = $(window).width();
	if(winwidth < 768){
		a.css({ top: (b.offset().top+b.outerHeight()), left:0, width: winwidth });
	} else {
		a.css({ top: (b.offset().top+b.outerHeight()), left:b.offset().left, width: b.outerWidth() });
	}
}
$(window).resize(function(){ repositionLivesearch(); });
b.keyup(function(e){
	console.log('yess');
  switch (e.keyCode) {
	case 13:
			$.ajax({
					url: 'index.php?route=product/search/saveSearch',
					type: 'post',
					dataType: 'html',
					data: 'search=' + b.val(),
					beforeSend: function() {

					},
					complete: function() {

					},
					success: function(response) {

					}

				});
		$(".active", a).length && (window.location = $(".active a", a).attr("href"));
		return false;
		break;
	case 40:
		($(".active", a).length ? $(".active", a).removeClass("active").next().addClass("active") : $("li:first", a).addClass("active"))
		return false;
		break;
	case 38:
		($(".active", a).length ? $(".active", a).removeClass("active").prev().addClass("active") : $("li:last", a).addClass("active"))
		return false;
		break;
	default:
		var query = b.val();
		if (query.length > 2) {
			delay(function(){
				$.getJSON(
					$('base').attr('href') + "index.php?route=product/search/livesearch&search=" + query,
					function(data) {
					console.log('hello');
						a.empty();
						$.each(data, function( k, v ) {
							a.append("<li>"+(k == 5 ? "<div class='btnwrap'><span><a class='btn blackbtn' href='"+v.href+"'><span>"+v.name+"</span></a></span><span><input type='button' onclick='$(\"#livesearch\").hide();' name='close' id='close' class='btn blackbtn' value='Close' /></span></div>" : "<a href='"+v.href+"'>"+(v.thumb ? "<div class='proimg'><img src='"+v.thumb+"' alt='"+v.name+"'></div>" : '')+"<div class='proinfo' "+(v.thumb ? '' : "style='float:left;width:100%;'" )+"><h4>"+v.name+(v.size ? "<span> ("+v.size+")</span>" : '')+(v.sku ? "<small>"+v.sku+"</small>" : '')+"</h4><p>"+(v.price ? v.price : '')+"</p></div></a>")+"</li>");
						});
						a.remove(); $("body").prepend(a); repositionLivesearch();

						$("ul#livesearch li a").click(function(){
							b.val($(this).text());
							$(".searchMeme-button-icon").click();
						});

						delay(function(){
							$.ajax({
									url: 'index.php?route=product/search/saveSearch',
									type: 'post',
									dataType: 'html',
									data: 'search=' + query,
									beforeSend: function() {

									},
									complete: function() {

									},
									success: function(response) {

									}

								});
							}, 500 );

					}
				);
			}, 500 );


		} else {
			a.empty();
		}
	}

}).blur(function(){ setTimeout(function(){  },500); }).focus(function(){ repositionLivesearch(); a.show(); });
});
</script>
<script>
if(window.width() > 768) {
window.onscroll = function() {myFunction()};

var header = document.getElementById("box_navigation");
var sticky = header.offsetTop;

function myFunction() {
  if (window.pageYOffset >= sticky) {
    header.classList.add("sticky");
  } else {
    header.classList.remove("sticky");
  }
}
}
</script>
<style>

.sticky {
	position: fixed;
	top: 0;
	width: 100%;
	z-index: 999;
	background: #fff;
}
</style>