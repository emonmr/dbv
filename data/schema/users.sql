CREATE TABLE `users` (
  `id` int(5) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `uuid` char(36) NOT NULL COMMENT 'non-guessable uuid to browse this data',
  `username` varchar(80) NOT NULL COMMENT 'user''s email address',
  `password` varchar(60) NOT NULL COMMENT 'encrypted password',
  `is_visible` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'true=permitted to login, false=can''t login',
  `incorrect_login` int(2) NOT NULL DEFAULT '0' COMMENT 'incorrent login counter. In every successful login clear the counter',
  `last_login` datetime DEFAULT NULL COMMENT 'reecord the last successful login time',
  `force_password_required` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'user required to change password at login or not. set by admin',
  `is_super_admin` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'to override all permissions',
  `email_verified` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'email is verified or not',
  `email_verified_code` char(36) DEFAULT NULL COMMENT 'code sent to email to verify email',
  `forgot_password_token` char(36) DEFAULT NULL COMMENT 'random token generated to sent that to email',
  `forgot_password_token_validity` int(8) DEFAULT NULL COMMENT 'how many seconds the token will be active',
  `status` int(1) NOT NULL DEFAULT '0' COMMENT 'arbitary operation or condition or filter purpose',
  `order_count` int(5) NOT NULL DEFAULT '0',
  `company_count` int(5) NOT NULL DEFAULT '0',
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uuid` (`uuid`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email_verified_code` (`email_verified_code`),
  UNIQUE KEY `forgot_password_token` (`forgot_password_token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8