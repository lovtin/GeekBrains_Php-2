<?php

	include_once 'SQL.php';

	class Product extends SQL {

		public $product_id, $product_image, $product_title, $product_content, $product_price;

		public function getAllProducts() {

			return parent::Select('products');
		}

		public function getProduct($product_id) {

			return parent::Select('products', 'id', $product_id);
		}
	}
?>