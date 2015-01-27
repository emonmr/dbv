CREATE TABLE `groups` (
  `id` int(2) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL COMMENT 'name of user group',
  `description` text COMMENT 'description of the group',
  `user_id` int(8) unsigned zerofill NOT NULL COMMENT 'who created this group',
  `is_visible` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'groups are active or not',
  `status` int(1) NOT NULL DEFAULT '0' COMMENT 'arbitrary purpose',
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `groups_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8