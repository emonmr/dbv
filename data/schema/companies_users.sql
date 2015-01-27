CREATE TABLE `companies_users` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `company_id` int(3) NOT NULL,
  `user_id` int(5) unsigned zerofill NOT NULL,
  `status` int(1) NOT NULL DEFAULT '1' COMMENT 'arbitrary conditions or filter',
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `company_id` (`company_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `companies_users_ibfk_1` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `companies_users_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8