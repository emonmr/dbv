CREATE TABLE `settings` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `meta_name` varchar(255) NOT NULL,
  `meta_value` text NOT NULL,
  `user_id` int(5) unsigned zerofill DEFAULT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user` (`user_id`),
  CONSTRAINT `settings_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8