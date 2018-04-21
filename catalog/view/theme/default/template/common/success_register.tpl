<?php echo $header; ?>
 <style type="text/css">
.banner_img{
	background: url(catalog/view/theme/default/image/about_us.jpg)no-repeat center;
	min-height:350px;
	background-size:cover;
}
.close_b{
	position:relative;
}
a.close_b:link,
a.close_b:active,
a.close_b:visited{
	font-family:Open Sans, sans-serif; 
	font-size:14px;
	text-decoration:none;
	font-weight:400; 
	color:#fff; 
	background-color:#1faad8; 
	padding:6px 20px;
}
a.close_b:hover{
	background-color:#1886aa; 
}
</style>
<script type="text/javascript">
	$(document).ready(function(){
		$(".inline").colorbox({inline: true });
		$(".inline").trigger('click');
	});
</script>
<!-- imgage start here-->
<div class="image_slot">
<div class="row"> 
<div class="col-sm-12">
<div class="banner_img"></div>
</div>
</div>
</div>
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
<div class="row"> 
      <h1><?php echo $heading_title; ?></h1>
      <?php echo $text_message; ?>
      <div class="buttons">
        <div class="pull-right"><a href="<?php echo $continue; ?>" class="btn btn-primary"><?php echo $button_continue; ?></a></div>
      </div>
	  <br/><br/><br/>
</div>
</div>
</div>
<a href="#thanku_popup" class="inline"></a>
<div style="display:none;">
	<div id="thanku_popup">
		<div id="mailsub" class="notification" align="center">
			<div id="box" style="width:320px; margin:20% auto; border:6px solid #f4992e; position:relative;">
				<div class="top_text" style="height:190px;">
					<h2 class="f_name" style="font-family:Open Sans, sans-serif; font-size:22px; font-weight:400; color:#333; padding:25px 0px 0px 0px; margin:0px;" >Thank you   </h2>
					<p class="welcome" style="font-family:Open Sans, sans-serif; font-size:14px; font-weight:400; color:#555; padding:25px 0px 0px 0px; margin:0px 0px 0px 0px;" >Welcome to Fishgeniee!</p>
					<p class="welcome" style="font-family:Open Sans, sans-serif; font-size:12px; font-weight:400; color:#000; padding:2px 0px; margin:0px;" >Please take a second to confirm your email address</p>
					<div class="close"  style=" width:100px; padding:30px 0px 0px 0px; margin:0px;">
						<a href="#" class="close_b">Close</a>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<?php echo $footer; ?>