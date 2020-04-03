/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50726
Source Host           : localhost:3306
Source Database       : shop

Target Server Type    : MYSQL
Target Server Version : 50726
File Encoding         : 65001

Date: 2020-04-02 18:36:14
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for order
-- ----------------------------
DROP TABLE IF EXISTS `order`;
CREATE TABLE `order` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '订单id',
  `buyer_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '买家姓名',
  `buyer_tel` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '买家电话',
  `buyer_address` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '买家地址',
  `buyer_openid` int(11) NOT NULL COMMENT '买家微信openid',
  `total_sum` decimal(8,2) NOT NULL COMMENT '订单总金额',
  `order_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '订单状态（默认0新下单）',
  `pay_state` tinyint(3) NOT NULL DEFAULT '0' COMMENT '支付状态（默认0未支付）',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  `spare1` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '备用字段1',
  `spare2` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '备用字段2',
  `spare3` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '备用字段3',
  `spare4` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '备用字段4',
  `spare5` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '备用字段5',
  `spare6` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '备用字段6',
  PRIMARY KEY (`order_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of order
-- ----------------------------
INSERT INTO `order` VALUES ('1', '王伟杰', '15537271223', '郑州市', '1994', '1000.00', '0', '0', '2020-03-30 16:16:35', null, null, null, null, null, null, null);
INSERT INTO `order` VALUES ('2', '李白', '15839667474', '唐朝', '6666', '8000.00', '0', '0', '2020-03-30 16:17:32', null, null, null, null, null, null, null);
INSERT INTO `order` VALUES ('3', '李青', '14725836911', '艾欧尼亚', '4444', '6666.00', '0', '0', '2020-03-30 16:18:39', null, null, null, null, null, null, null);
