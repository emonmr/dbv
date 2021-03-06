CREATE TABLE `mailers` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `company_id` int(3) DEFAULT NULL,
  `ts` varchar(15) NOT NULL,
  `_id` varchar(150) NOT NULL,
  `state` varchar(30) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `email` varchar(120) NOT NULL,
  `tags` text,
  `opens` int(4) DEFAULT NULL,
  `clicks` int(4) DEFAULT NULL,
  `smtp_events` text,
  `resends` text,
  `sender` varchar(120) NOT NULL,
  `template` text,
  `opens_detail` text,
  `clicks_detail` text,
  `headers` text NOT NULL,
  `html` text,
  `text` text,
  `from_email` varchar(120) DEFAULT NULL,
  `from_name` varchar(120) DEFAULT NULL,
  `to` text,
  `attachments` text,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `message_id` (`_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Email logs synced with Mandrill'