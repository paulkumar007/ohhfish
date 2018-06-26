<?php
class ControllerCheckoutSuccess extends Controller {
	public function index() {
		$this->load->language('checkout/success');
		
		$data['order_info'] = array();	
		$data['products'] = array();	
		$data['order_products'] = array();	
		$data['total_quantity'] = 0;
		
		if (isset($this->session->data['order_id'])) {	
		$this->load->model('account/order');		
		$this->load->model('tool/image');			
		$order_info = $this->model_account_order->getOrder($this->session->data['order_id']);	
		$order_products = $this->model_account_order->getOrderProducts($this->session->data['order_id']);		
		$data['order_info'] = $order_info;	
		$data['order_products'] = $order_products;	
		$data['total_quantity'] = count($order_products) == 1 ? '1 item' : count($order_products).' items';		
		
		$delivery_date = '';
		if($order_products){		
			foreach($order_products as $order_product){
			
				if ($order_product['image']) {		
					$image = HTTP_SERVER . 'image/' . $order_product['image'];	
				} else {		
					$image = $this->model_tool_image->resize('placeholder.png', 100, 100);	
				}	
				
				$data['products'][] = array(
									'order_product_id'  => $order_product['order_product_id'],	
									'product_id'  		=> $order_product['product_id'],			
									'order_id'  		=> $order_product['order_id'],				
									'name'  			=> $order_product['name'],				
									'model'  			=> $order_product['model'],				
									'sku'  				=> $order_product['sku'],				
									'quantity'  		=> $order_product['quantity'],			
									'price'  			=> $order_product['price'],				
									'total'  			=> $order_product['total'],				
									'tax'  				=> $order_product['tax'],			
									'reward'  			=> $order_product['reward'],		
									'ship_date'  		=> $order_product['ship_date'],		
									'ship_time'  		=> $order_product['ship_time'],		
									'image'       		=> $image,	
									'href'       		=> $this->url->link('product/product', 'product_id=' . $order_product['product_id'])	
								);		
								
				$delivery_date = date("d-m-Y",strtotime($order_product['ship_date']));
			}
			
			
			$mobile = $order_info['telephone'];
			/* SEND SMS */
			$order_url = $order_info['store_url'] . 'index.php?route=account/order/info&order_id=' . $order_info['order_id'];
			$username = 'ohhfish';
			$password = 'suhail12';
			$sender_id = 'OHFISH';
			$message = 'Thank you for placing order with us. Your Order ID. '.$order_info['order_id'].' amounting to Rs.'.round($order_info['total']).' has been received. Date of delivery is '.$delivery_date.'. We will send you an update when your order is shipped. You can track your order ('.$order_url.').';

			$url = "https://app.indiasms.com/sendsms/sendsms.php?username=".$username."&password=".$password."&type=TEXT&sender=".$sender_id."&mobile=".$mobile."&message=".urlencode($message);
			$return = file($url); 
			/*
			list($send,$msgcode) = explode('[|]',$return[0]);
			if ($send == "SUBMIT_SUCCESS "){
				
			} else {
				
			}
			*/
		}
		
			$this->cart->clear();
			// Add to activity log
			if ($this->config->get('config_customer_activity')) {
				$this->load->model('account/activity');

				if ($this->customer->isLogged()) {
					$activity_data = array(
						'customer_id' => $this->customer->getId(),
						'name'        => $this->customer->getFirstName() . ' ' . $this->customer->getLastName(),
						'order_id'    => $this->session->data['order_id']
					);

					$this->model_account_activity->addActivity('order_account', $activity_data);
				} else {
					$activity_data = array(
						'name'     => $this->session->data['guest']['firstname'] . ' ' . $this->session->data['guest']['lastname'],
						'order_id' => $this->session->data['order_id']
					);

					$this->model_account_activity->addActivity('order_guest', $activity_data);
				}
			}

			unset($this->session->data['shipping_method']);
			unset($this->session->data['shipping_methods']);
			unset($this->session->data['payment_method']);
			unset($this->session->data['payment_methods']);
			unset($this->session->data['guest']);
			unset($this->session->data['comment']);
			unset($this->session->data['order_id']);
			unset($this->session->data['coupon']);
			unset($this->session->data['reward']);
			unset($this->session->data['voucher']);
			unset($this->session->data['vouchers']);
			unset($this->session->data['totals']);
		} else {						$this->response->redirect($this->url->link('common/home'));		}

		$this->document->setTitle($this->language->get('heading_title'));

		$data['breadcrumbs'] = array();

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_home'),
			'href' => $this->url->link('common/home')
		);

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_basket'),
			'href' => $this->url->link('checkout/cart')
		);

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_checkout'),
			'href' => $this->url->link('checkout/checkout', '', true)
		);

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_success'),
			'href' => $this->url->link('checkout/success')
		);

		$data['heading_title'] = $this->language->get('heading_title');

		if ($this->customer->isLogged()) {
			$data['text_message'] = sprintf($this->language->get('text_customer'), $this->url->link('account/account', '', true), $this->url->link('account/order', '', true), $this->url->link('account/download', '', true), $this->url->link('information/contact'));
		} else {
			$data['text_message'] = sprintf($this->language->get('text_guest'), $this->url->link('information/contact'));
		}

		$data['button_continue'] = $this->language->get('button_continue');

		$data['continue'] = $this->url->link('common/home');

		$data['column_left'] = $this->load->controller('common/column_left');
		$data['column_right'] = $this->load->controller('common/column_right');
		$data['content_top'] = $this->load->controller('common/content_top');
		$data['content_bottom'] = $this->load->controller('common/content_bottom');
		$data['footer'] = $this->load->controller('common/footer');
		$data['header'] = $this->load->controller('common/header');

		$this->response->setOutput($this->load->view('common/success', $data));
	}
}