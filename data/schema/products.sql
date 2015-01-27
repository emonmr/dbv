CREATE TABLE `products` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `company_id` int(3) NOT NULL COMMENT 'product for which company',
  `name` varchar(120) NOT NULL COMMENT 'name of the product',
  `sku` varchar(120) DEFAULT NULL COMMENT 'SKU to identify products with unique characteristics',
  `description` text COMMENT 'description of the products',
  `crm_product_id` int(7) NOT NULL COMMENT 'product ID from synced CRM of the specific company',
  `price` decimal(8,2) NOT NULL COMMENT 'price of that product',
  `is_visible` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'product should be available to purchase or not. true=available for purchase, false=disabled',
  `status` int(1) NOT NULL DEFAULT '1' COMMENT 'arbitary purpose',
  `order_count` int(5) NOT NULL DEFAULT '0',
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `company_id` (`company_id`),
  CONSTRAINT `products_ibfk_1` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8