CREATE TABLE `authority` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
insert  into `authority`(`id`,`name`) values (1,'ROLE_USER'),(2,'ROLE_ADMIN');

CREATE TABLE `user_authority` (
  `user_id` int(11) NOT NULL,
  `authority_id` int(11) NOT NULL,
  KEY `fk_authority_id_user_authority` (`authority_id`),
  KEY `fk_USER_user_authority` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
insert  into `user_authority`(`user_id`,`authority_id`) values (1,1),(2,1),(2,2);

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone_number` varchar(50) NOT NULL,
  `enabled` tinyint(1) DEFAULT NULL,
  `last_password_reset_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
insert  into `users`(`id`,`username`,`password`,`first_name`,`last_name`,`email`,`phone_number`,`enabled`,`last_password_reset_date`) values (1,'user','$2a$04$Vbug2lwwJGrvUXTj6z7ff.97IzVBkrJ1XfApfGNl.Z695zqcnPYra','Fan','Jin','user@example.com','+1234567890',1,'2018-08-22 19:46:03'),(2,'admin','$2a$04$Vbug2lwwJGrvUXTj6z7ff.97IzVBkrJ1XfApfGNl.Z695zqcnPYra','Jing','Xiao','admin@example.com','+0987654321',1,'2017-10-01 18:57:58');