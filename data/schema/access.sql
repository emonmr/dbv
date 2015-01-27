CREATE TABLE `access` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `user_id` int(5) unsigned NOT NULL COMMENT 'which user access the system',
  `login_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'logn time',
  `logout_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'logout time',
  `browser` varchar(20) DEFAULT '-' COMMENT 'user browser',
  `ip` varchar(30) NOT NULL DEFAULT '0.0.0.0' COMMENT 'user IP',
  `location` varchar(30) NOT NULL DEFAULT '-' COMMENT 'users location',
  `referrer` varchar(80) NOT NULL DEFAULT '-' COMMENT 'from which page user came to login',
  `landing_page` varchar(80) NOT NULL DEFAULT '-' COMMENT 'after login which page he is landed',
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8