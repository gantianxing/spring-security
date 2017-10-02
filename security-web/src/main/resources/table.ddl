SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `authorities`
-- ----------------------------
DROP TABLE IF EXISTS `authorities`;
CREATE TABLE `authorities` (
  `username` varchar(50) COLLATE utf8_bin NOT NULL,
  `authority` varchar(50) COLLATE utf8_bin NOT NULL,
  UNIQUE KEY `ix_auth_username` (`username`,`authority`),
  CONSTRAINT `fk_authorities_users` FOREIGN KEY (`username`) REFERENCES `users` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of authorities
-- ----------------------------
INSERT INTO `authorities` VALUES ('mysql1', 'ROLE_ADD');
INSERT INTO `authorities` VALUES ('mysql1', 'ROLE_ADMIN');
INSERT INTO `authorities` VALUES ('mysql1', 'ROLE_SELECT');
INSERT INTO `authorities` VALUES ('mysql1', 'ROLE_USER');
INSERT INTO `authorities` VALUES ('mysql2', 'ROLE_SELECT');
INSERT INTO `authorities` VALUES ('mysql2', 'ROLE_USER');

-- ----------------------------
-- Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `username` varchar(50) COLLATE utf8_bin NOT NULL,
  `password` varchar(50) COLLATE utf8_bin NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('mysql1', '123456', '1');
INSERT INTO `users` VALUES ('mysql2', '123456', '1');
INSERT INTO `users` VALUES ('mysql3', '123456', '0');
