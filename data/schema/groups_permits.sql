CREATE TABLE `groups_permits` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `permit_id` int(8) NOT NULL,
  `group_id` int(2) NOT NULL,
  `user_id` int(5) NOT NULL,
  `permission_type` int(1) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8