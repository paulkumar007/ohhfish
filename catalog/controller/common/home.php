<?php
class ControllerCommonHome extends Controller {
	public function index() {
		$this->document->setTitle($this->config->get('config_meta_title'));
		$this->document->setDescription($this->config->get('config_meta_description'));
		$this->document->setKeywords($this->config->get('config_meta_keyword'));

		if (isset($this->request->get['route'])) {
			$this->document->addLink($this->config->get('config_url'), 'canonical');
		}
		
		$this->load->model('catalog/product');
		
		$this->load->model('tool/image');
		
		$data['best_seller'] = array();
		
		$best_seller = array(
			'filter_best_seller' => 1,
			'sort'               => 'p.sort_order',
			'order'              => 'ASC',
			'start'              => 0,
			'limit'              => 4
		);
		
		$best_seller_results = $this->model_catalog_product->getProducts($best_seller);
		
		foreach ($best_seller_results as $result) {
			if ($result['image']) {
				$image = $this->model_tool_image->resize($result['image'], $this->config->get($this->config->get('config_theme') . '_image_product_width'), $this->config->get($this->config->get('config_theme') . '_image_product_height'));
			} else {
				$image = $this->model_tool_image->resize('placeholder.png', $this->config->get($this->config->get('config_theme') . '_image_product_width'), $this->config->get($this->config->get('config_theme') . '_image_product_height'));
			}

			if ($this->customer->isLogged() || !$this->config->get('config_customer_price')) {
				$price = $this->currency->format($this->tax->calculate($result['price'], $result['tax_class_id'], $this->config->get('config_tax')), $this->session->data['currency']);
				$only_price = $this->tax->calculate($result['price'], $result['tax_class_id'], $this->config->get('config_tax'));
			} else {
				$price = false;
				$only_price = 0;
			}

			if ((float)$result['special']) {
				$special = $this->currency->format($this->tax->calculate($result['special'], $result['tax_class_id'], $this->config->get('config_tax')), $this->session->data['currency']);
			} else {
				$special = false;
			}

			if ($this->config->get('config_tax')) {
				$tax = $this->currency->format((float)$result['special'] ? $result['special'] : $result['price'], $this->session->data['currency']);
			} else {
				$tax = false;
			}

			if ($this->config->get('config_review_status')) {
				$rating = (int)$result['rating'];
			} else {
				$rating = false;
			}

			$data['best_seller'][] = array(
				'product_id'  => $result['product_id'],
				'thumb'       => $image,
				'name'        => $result['name'],
				'sku'         => $result['sku'],
				'size'        => $result['size'],
				'approx'      => $result['approx'],
				'description' => utf8_substr(strip_tags(html_entity_decode($result['description'], ENT_QUOTES, 'UTF-8')), 0, $this->config->get($this->config->get('config_theme') . '_product_description_length')) . '..',
				'price'       => $price,
				'only_price'  => $only_price,
				'special'     => $special,
				'tax'         => $tax,
				'minimum'     => $result['minimum'] > 0 ? $result['minimum'] : 1,
				'rating'      => $result['rating'],
				'href'        => $this->url->link('product/product', 'product_id=' . $result['product_id'])
			);
		}


		$data['marine_products'] = array();
		
		$marine_data = array(
			'filter_category_id' => 59,
			'sort'               => 'p.date_added',
			'order'              => 'DESC',
			'start'              => 0,
			'limit'              => 4
		);
		
		$marine_results = $this->model_catalog_product->getProducts($marine_data);
		
		foreach ($marine_results as $result) {
			if ($result['image']) {
				$image = $this->model_tool_image->resize($result['image'], $this->config->get($this->config->get('config_theme') . '_image_product_width'), $this->config->get($this->config->get('config_theme') . '_image_product_height'));
			} else {
				$image = $this->model_tool_image->resize('placeholder.png', $this->config->get($this->config->get('config_theme') . '_image_product_width'), $this->config->get($this->config->get('config_theme') . '_image_product_height'));
			}

			if ($this->customer->isLogged() || !$this->config->get('config_customer_price')) {
				$price = $this->currency->format($this->tax->calculate($result['price'], $result['tax_class_id'], $this->config->get('config_tax')), $this->session->data['currency']);
				$only_price = $this->tax->calculate($result['price'], $result['tax_class_id'], $this->config->get('config_tax'));
			} else {
				$price = false;
				$only_price = 0;
			}

			if ((float)$result['special']) {
				$special = $this->currency->format($this->tax->calculate($result['special'], $result['tax_class_id'], $this->config->get('config_tax')), $this->session->data['currency']);
			} else {
				$special = false;
			}

			if ($this->config->get('config_tax')) {
				$tax = $this->currency->format((float)$result['special'] ? $result['special'] : $result['price'], $this->session->data['currency']);
			} else {
				$tax = false;
			}

			if ($this->config->get('config_review_status')) {
				$rating = (int)$result['rating'];
			} else {
				$rating = false;
			}

			$data['marine_products'][] = array(
				'product_id'  => $result['product_id'],
				'thumb'       => $image,
				'name'        => $result['name'],
				'sku'         => $result['sku'],
				'size'        => $result['size'],
				'approx'      => $result['approx'],
				'description' => utf8_substr(strip_tags(html_entity_decode($result['description'], ENT_QUOTES, 'UTF-8')), 0, $this->config->get($this->config->get('config_theme') . '_product_description_length')) . '..',
				'price'       => $price,
				'only_price'  => $only_price,
				'special'     => $special,
				'tax'         => $tax,
				'minimum'     => $result['minimum'] > 0 ? $result['minimum'] : 1,
				'rating'      => $result['rating'],
				'href'        => $this->url->link('product/product', 'product_id=' . $result['product_id'])
			);
		}
			
		

		$data['column_left'] = $this->load->controller('common/column_left');
		$data['column_right'] = $this->load->controller('common/column_right');
		$data['content_top'] = $this->load->controller('common/content_top');
		$data['content_bottom'] = $this->load->controller('common/content_bottom');
		$data['footer'] = $this->load->controller('common/footer');
		$data['header'] = $this->load->controller('common/header');

		$this->response->setOutput($this->load->view('common/home', $data));
	}
	
	public function newsletterForm() {
		
		$this->load->model('catalog/home');
		$this->load->model('catalog/email_manager');
		
		$json=array();

		if (($this->request->server['REQUEST_METHOD'] == 'POST')) {
			
			$this->language->load('information/designer');
			
			if (!filter_var(trim($this->request->post['newsletter_subscriber']), FILTER_VALIDATE_EMAIL)) {
				$json['error'] = $this->language->get('error_email');
			}
			
			if(!isset($json['error'])) {
					
				$data = array(
					'store_name' => $this->config->get('config_name'),
					'store_url' => HTTP_SERVER,
					'email' => $this->request->post['newsletter_subscriber'],
					'unsubscribe_email' => $this->request->post['newsletter_subscriber']				
				);
				
				$insert_id = $this->model_catalog_home->addNewsletterSubscriber($this->request->post['newsletter_subscriber']);
				
				if($insert_id == '0'){
					$json['error'] = 'You have already subscribed to our newsletters.';
				} else {
					$this->model_catalog_email_manager->sendEmail($data, 'newsletter-subscription');
					$this->model_catalog_email_manager->sendEmail($data,'newsletter-subscription-ack',$this->request->post['newsletter_subscriber']);
			
					$json['success'] = 'You have successfully subscribed to our newsletter';
				}
			}
			
			$this->response->setOutput(json_encode($json));
			
		}
	 }
}
