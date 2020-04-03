/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50726
Source Host           : localhost:3306
Source Database       : shop

Target Server Type    : MYSQL
Target Server Version : 50726
File Encoding         : 65001

Date: 2020-04-02 18:36:22
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods` (
  `goods_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '商品id',
  `goods_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '商品名称',
  `goods_price` decimal(8,2) NOT NULL COMMENT '商品单价',
  `goods_stock` int(11) NOT NULL COMMENT '商品库存',
  `goods_description` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '商品描述',
  `goods_icon` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '商品图标',
  `goods_state` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '1' COMMENT '商品状态',
  `category_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '商品类目名称',
  `category_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '商品类别',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  `istuijian` int(11) DEFAULT '0' COMMENT '推荐热销（0为推荐，1为热销）',
  `spare2` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '备用字段2',
  `spare3` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '备用字段3',
  `spare4` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '备用字段4',
  `spare5` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '备用字段5',
  `spare6` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '备用字段6',
  PRIMARY KEY (`goods_id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES ('1', '圆珠笔', '2.00', '100', '黑色潮流圆珠笔下单送笔芯', '../resources/img/bannar1.jpg', '推荐', '1', '1', '2020-04-02 18:11:47', '2020-04-02 18:11:47', '0', null, null, null, null, null);
INSERT INTO `goods` VALUES ('2', '笔记本', '2.00', '1000', '入木三分的书法当然要配上优秀的笔记本', '../resources/img/bannar2.jpg', '热销', '2', '2', '2020-04-02 18:11:50', '2020-04-02 18:11:50', '1', null, null, null, null, null);
INSERT INTO `goods` VALUES ('3', '教科书', '20.00', '300', '经典永不落幕', '../resources/img/bannar3.jpg', '推荐', '3', '3', '2020-04-02 18:11:51', '2020-04-02 18:11:51', '0', null, null, null, null, null);
INSERT INTO `goods` VALUES ('4', '键盘', '50.00', '1000', '让你运指如飞', '../resources/img/bannar4.jpg', '热销', '1', '003', '2020-04-02 18:11:52', '2020-04-02 18:11:52', '1', null, null, null, null, null);
INSERT INTO `goods` VALUES ('5', '机械键盘', '50.00', '1000', '让你运指如飞', '../resources/img/bannar1.jpg', '推荐', '1', '003', '2020-04-02 18:11:55', '2020-04-02 18:11:55', '0', null, null, null, null, null);
INSERT INTO `goods` VALUES ('6', '机械键盘', '50.00', '1000', '让你运指如飞', '../resources/img/bannar2.jpg', '热销', '1', '003', '2020-04-02 18:11:56', '2020-04-02 18:11:56', '1', null, null, null, null, null);
INSERT INTO `goods` VALUES ('7', '无声鼠标', '40.00', '100', '安静办公', '../resources/img/bannar3.jpg', '推荐', '1', '004', '2020-04-02 18:11:57', '2020-04-02 18:11:57', '0', null, null, null, null, null);
INSERT INTO `goods` VALUES ('8', '鼠标', '40.00', '100', '安静办公', '../resources/img/bannar4.jpg', '热销', '1', '004', '2020-04-02 18:11:57', '2020-04-02 18:11:57', '1', null, null, null, null, null);
INSERT INTO `goods` VALUES ('10', '鼠标1', '40.00', '100', '安静办公', '../resources/img/bannar2.jpg', '热销', '1', '004', '2020-04-02 18:11:59', '2020-04-02 18:11:59', '1', null, null, null, null, null);
INSERT INTO `goods` VALUES ('12', '真', '11.00', '11', '11', '../resources/img/bannar3.jpg', '推荐', '笔', '11', '2020-04-02 18:12:00', '2020-04-02 18:12:00', '0', null, null, null, null, null);
INSERT INTO `goods` VALUES ('13', '鼠标2', '40.00', '100', '安静办公', '../resources/img/bannar4.jpg', '热销', '1', '004', '2020-04-02 18:12:03', '2020-04-02 18:12:03', '1', null, null, null, null, null);
