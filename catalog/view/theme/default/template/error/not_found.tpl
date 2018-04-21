<?php echo $header; ?>
<link href="catalog/view/theme/default/stylesheet/marine_fish.css" rel="stylesheet">
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
      <p><?php echo $text_error; ?></p>
	  
	  <div class="last_box">
		<div class="button_place">
		<a href="<?php echo $continue; ?>" class="btn btn-primary" role="button"><?php echo $button_continue; ?></a>
		</div>
		</div>
		<br/><br/>
</div>
</div>
</div>

<?php echo $footer; ?>
