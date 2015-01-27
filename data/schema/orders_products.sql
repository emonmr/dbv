CREATE TABLE `orders_products` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `order_id` int(8) unsigned zerofill NOT NULL COMMENT 'which order created with this product',
  `product_id` int(8) DEFAULT NULL COMMENT 'which product purchased for this order',
  `product_name` varchar(80) DEFAULT NULL COMMENT 'name of the product',
  `product_sku` varchar(80) DEFAULT NULL COMMENT 'SKU number of this product',
  `product_note` text COMMENT 'product note updated or synced from the crm or order created page',
  `quantity` int(11) DEFAULT NULL COMMENT 'quantity of the products when it was added in an order',
  `price` decimal(8,2) DEFAULT NULL COMMENT 'total price',
  `subtotal` decimal(8,2) DEFAULT NULL COMMENT 'price*quantity',
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `order_id` (`order_id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `orders_products_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE SET NULL ON UPDATE NO ACTION,
  CONSTRAINT `orders_products_ibfk_3` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8