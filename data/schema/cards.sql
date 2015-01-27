CREATE TABLE `cards` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `customer_id` int(8) DEFAULT NULL COMMENT 'owner of the card',
  `name` varchar(60) DEFAULT NULL COMMENT 'Name for saving the card',
  `company` varchar(20) DEFAULT '-' COMMENT 'which brand of the card',
  `identifier` varchar(20) DEFAULT 'xxxxxxxxxxx0000' COMMENT 'last 4 digits of the card',
  `authorizenet_customer_profile_id` int(11) DEFAULT NULL COMMENT 'AuthorizeNet customer ID for this card',
  `authorizenet_payment_profile_id` int(11) DEFAULT NULL COMMENT 'Authorize Net Payment ID for this card',
  `authorizenet_shipping_id` int(11) DEFAULT NULL COMMENT 'AuthorizeNet Shipping ID for this card',
  `is_visible` tinyint(1) DEFAULT '1' COMMENT 'card is disabled or not. true=active, false=disabled',
  `order_count` int(5) DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `customer_id` (`customer_id`),
  CONSTRAINT `cards_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8