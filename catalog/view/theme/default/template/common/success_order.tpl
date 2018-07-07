<?php echo $header; ?>
 <style type="text/css">
.banner_img{
	background: url(catalog/view/theme/default/image/slides/home_01.jpg)no-repeat center;
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
<?php echo $footer; ?>