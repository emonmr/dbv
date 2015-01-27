CREATE TABLE `emails_events` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `event_id` int(8) NOT NULL,
  `user_id` int(5) NOT NULL,
  `attachment_invoice` tinyint(1) NOT NULL,
  `attachment_slip` tinyint(1) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8