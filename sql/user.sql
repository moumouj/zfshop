/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50726
Source Host           : localhost:3306
Source Database       : shop

Target Server Type    : MYSQL
Target Server Version : 50726
File Encoding         : 65001

Date: 2020-04-02 18:35:56
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `userid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '用户姓名',
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '用户密码',
  `tel` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '电话号码',
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '地址地址',
  `gender` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '性别',
  `beiyong` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '备用字段1',
  `beiyong2` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '备用2',
  `beiyong3` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `beiyong4` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `beiyong5` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `beiyong6` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '王伟杰', '123456', '15537271223', '郑州市', '男', '1', '', null, null, null, null);
INSERT INTO `user` VALUES ('2', 'admin', '123456', '5537271223', '郑州市', '男', '1', null, null, null, null, null);
