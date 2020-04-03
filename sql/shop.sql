/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50726
Source Host           : localhost:3306
Source Database       : shop

Target Server Type    : MYSQL
Target Server Version : 50726
File Encoding         : 65001

Date: 2020-03-30 18:15:16
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

DROP TABLE IF EXISTS `order_detail`;
CREATE TABLE `order_detail` (
  `detail_id` varchar(32) NOT NULL,
  `order_id` varchar(32) NOT NULL,
  `product_id` varchar(32) NOT NULL,
  `product_name` varchar(64) NOT NULL COMMENT '商品名称',
  `product_price` decimal(8,2) NOT NULL COMMENT '商品价格',
  `product_quantity` int(11) NOT NULL COMMENT '商品数量',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`detail_id`),
  KEY `order_id` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='订单详情表';

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

DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods` (
  `goods_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '商品id',
  `goods_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '商品名称',
  `goods_price` decimal(8,2) NOT NULL COMMENT '商品单价',
  `goods_stock` int(11) NOT NULL COMMENT '商品库存',
  `goods_description` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '商品描述',
  `goods_icon` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '商品图标',
  `goods_state` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '1' COMMENT '商品状态',
  `category_id` int(11) NOT NULL COMMENT '商品类别id',
  `category_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '商品类别',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  `spare1` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '备用字段1',
  `spare2` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '备用字段2',
  `spare3` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '备用字段3',
  `spare4` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '备用字段4',
  `spare5` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '备用字段5',
  `spare6` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '备用字段6',
  PRIMARY KEY (`goods_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES ('1', '圆珠笔', '2.00', '100', '黑色潮流圆珠笔下单送笔芯', 'url', '1', '1', '1', '2020-03-30 15:39:24', '2020-03-30 15:39:17', null, null, null, null, null, null);
INSERT INTO `goods` VALUES ('2', '笔记本', '2.00', '1000', '入木三分的书法当然要配上优秀的笔记本', 'url', '1', '2', '2', '2020-03-30 15:41:15', '2020-03-30 15:41:15', null, null, null, null, null, null);
INSERT INTO `goods` VALUES ('3', '教科书', '20.00', '300', '经典永不落幕', 'url', '1', '3', '3', '2020-03-30 15:42:18', '2020-03-30 15:42:18', null, null, null, null, null, null);

DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '分类id',
  `category_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '类目名称',
  `category_type` int(11) NOT NULL COMMENT '类目编号',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  `spare1` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '备用字段1',
  `spare2` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '备用字段2',
  `spare3` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '备用字段3',
  `spare4` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '备用字段4',
  `spare5` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '备用字段5',
  `spare6` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '备用字段6',
  `spare7` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '备用字段7',
  PRIMARY KEY (`category_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES ('1', '笔', '1', '2020-03-30 16:30:03', null, null, null, null, null, null, null, null);
INSERT INTO `category` VALUES ('2', '本', '2', '2020-03-30 16:30:17', null, null, null, null, null, null, null, null);
INSERT INTO `category` VALUES ('3', '教科书', '3', '2020-03-30 16:32:14', '2020-03-30 16:32:14', null, null, null, null, null, null, null);
