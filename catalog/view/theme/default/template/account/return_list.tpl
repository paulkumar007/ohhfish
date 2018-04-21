<?php echo $header; ?>
<!-- image start here-->
<div class="image_slot">
<div class="row"> 
<img src="catalog/view/theme/default/image/register.jpg" class="img-fluid" alt="Responsive image">
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
      <?php if ($returns) { ?>
      <div class="table-responsive">
        <table class="table table-bordered table-hover">
          <thead>
            <tr>
              <td class="text-right"><?php echo $column_return_id; ?></td>
              <td class="text-left"><?php echo $column_status; ?></td>
              <td class="text-left"><?php echo $column_date_added; ?></td>
              <td class="text-right"><?php echo $column_order_id; ?></td>
              <td class="text-left"><?php echo $column_customer; ?></td>
              <td></td>
            </tr>
          </thead>
          <tbody>
            <?php foreach ($returns as $return) { ?>
            <tr>
              <td class="text-right">#<?php echo $return['return_id']; ?></td>
              <td class="text-left"><?php echo $return['status']; ?></td>
              <td class="text-left"><?php echo $return['date_added']; ?></td>
              <td class="text-right"><?php echo $return['order_id']; ?></td>
              <td class="text-left"><?php echo $return['name']; ?></td>
              <td class="text-right"><a href="<?php echo $return['href']; ?>" data-toggle="tooltip" title="<?php echo $button_view; ?>" class="btn btn-info"><i class="fa fa-eye"></i></a></td>
            </tr>
            <?php } ?>
          </tbody>
        </table>
      </div>
      <div class="row">
        <div class="col-sm-6 text-left"><?php echo $pagination; ?></div>
        <div class="col-sm-6 text-right"><?php echo $results; ?></div>
      </div>
      <?php } else { ?>
      <p><?php echo $text_empty; ?></p>
      <?php } ?>
      <div class="buttons clearfix">
        <div class="pull-right"><a href="<?php echo $continue; ?>" class="btn btn-primary"><?php echo $button_continue; ?></a></div>
      </div>
	  <br/><br/><br/>
</div>
</div>
</div>
<?php echo $footer; ?>
