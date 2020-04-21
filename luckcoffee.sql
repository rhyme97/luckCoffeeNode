/*
Navicat MySQL Data Transfer

Source Server         : 118.31.10.49_3306
Source Server Version : 50717
Source Host           : 118.31.10.49:3306
Source Database       : luckcoffee

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2020-04-21 13:34:23
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for address
-- ----------------------------
DROP TABLE IF EXISTS `address`;
CREATE TABLE `address` (
  `userId` varchar(255) DEFAULT NULL,
  `contact` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `siteId` int(11) NOT NULL AUTO_INCREMENT,
  `site` varchar(255) DEFAULT NULL,
  `houseNum` varchar(255) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `defaultSite` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`siteId`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of address
-- ----------------------------
INSERT INTO `address` VALUES ('1', '哆啦A梦', '男', '18382231544', '1', '成都市 天府广场 人民南路一段86号', '5号楼', '家', '否');
INSERT INTO `address` VALUES ('1', '精神小伙', '男', '18386541234', '5', '北京四合院', '小胡同', '家', '否');
INSERT INTO `address` VALUES ('1', '小九九', '女', '18323236565', '7', '成都市 武侯区 ', '0101', '家', '是');
INSERT INTO `address` VALUES ('1', '大哥', '女', '18366667895', '8', '成都市 金堂县 三星镇', '电饭锅', '公司', '否');

-- ----------------------------
-- Table structure for discount
-- ----------------------------
DROP TABLE IF EXISTS `discount`;
CREATE TABLE `discount` (
  `userId` varchar(255) NOT NULL,
  `discountName` varchar(255) NOT NULL,
  `dTime` datetime DEFAULT NULL,
  `dPrice` double(10,2) DEFAULT NULL,
  `dType` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of discount
-- ----------------------------
INSERT INTO `discount` VALUES ('1', '饮品券', '2021-01-01 03:11:36', '5.00', '满三十减');
INSERT INTO `discount` VALUES ('1', '食品通用券', '2020-05-29 03:12:38', '20.00', '满100优惠');
INSERT INTO `discount` VALUES ('19', '饮品劵', '2020-03-16 15:42:02', '5.00', '满三十减');
INSERT INTO `discount` VALUES ('21', '新人指定免费劵', '2020-03-16 15:42:02', null, '5.0折');
INSERT INTO `discount` VALUES ('21', '饮品劵', '2020-03-16 15:42:02', '5.00', '满三十减');
INSERT INTO `discount` VALUES ('21', '食品通用卷', '2020-03-16 15:42:02', '20.00', '满100优惠');
INSERT INTO `discount` VALUES ('22', '新人指定免费劵', '2020-03-16 15:42:02', null, '5.0折');
INSERT INTO `discount` VALUES ('22', '饮品劵', '2020-03-16 15:42:02', '5.00', '满三十减');
INSERT INTO `discount` VALUES ('22', '食品通用卷', '2020-03-16 15:42:02', '20.00', '满100优惠');
INSERT INTO `discount` VALUES ('23', '新人指定免费劵', '2020-03-16 15:42:02', null, '5.0折');
INSERT INTO `discount` VALUES ('23', '饮品劵', '2020-03-16 15:42:02', '5.00', '满三十减');
INSERT INTO `discount` VALUES ('23', '食品通用卷', '2020-03-16 15:42:02', '20.00', '满100优惠');
INSERT INTO `discount` VALUES ('24', '新人指定免费劵', '2020-03-16 15:42:02', null, '5.0折');
INSERT INTO `discount` VALUES ('24', '饮品劵', '2020-03-16 15:42:02', '5.00', '满三十减');
INSERT INTO `discount` VALUES ('24', '食品通用卷', '2020-03-16 15:42:02', '20.00', '满100优惠');
INSERT INTO `discount` VALUES ('25', '新人指定免费劵', '2020-03-16 15:42:02', null, '5.0折');
INSERT INTO `discount` VALUES ('25', '饮品劵', '2020-03-16 15:42:02', '5.00', '满三十减');
INSERT INTO `discount` VALUES ('25', '食品通用卷', '2020-03-16 15:42:02', '20.00', '满100优惠');
INSERT INTO `discount` VALUES ('26', '新人指定免费劵', '2020-03-16 15:42:02', null, '5.0折');
INSERT INTO `discount` VALUES ('26', '饮品劵', '2020-03-16 15:42:02', '5.00', '满三十减');
INSERT INTO `discount` VALUES ('26', '食品通用卷', '2020-03-16 15:42:02', '20.00', '满100优惠');
INSERT INTO `discount` VALUES ('19', '新人指定免费劵', '2020-05-03 00:23:53', null, '5.0折');

-- ----------------------------
-- Table structure for goodsinfo
-- ----------------------------
DROP TABLE IF EXISTS `goodsinfo`;
CREATE TABLE `goodsinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `ename` varchar(255) NOT NULL,
  `imgsrc` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `stype` varchar(255) DEFAULT NULL,
  `temperature` varchar(255) DEFAULT NULL,
  `defaultTemperature` varchar(255) DEFAULT NULL,
  `milk` varchar(255) DEFAULT NULL,
  `defaultMilk` varchar(255) DEFAULT NULL,
  `sugar` varchar(255) DEFAULT NULL,
  `defaultSugar` varchar(255) DEFAULT NULL,
  `price` double(10,2) NOT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `makeUp` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goodsinfo
-- ----------------------------
INSERT INTO `goodsinfo` VALUES ('3', '樱花莓莓酸奶', 'Cherry Blossom & Strawberry Yogurt', 'http://rhymin.cn:3000/images/coffee1.jpg', '人气top', 'null', '1', '1', '1,2', '1', null, null, '18.00', '精选纯牛奶为低，草莓和樱花风味荣誉其中，混合口感细滑的优选酸奶，再加上水蜜桃味花朵行果冻颗粒。颜值超高，满分好喝。（饮用钱建议搅拌）图片仅供参考，请以实物为准，建议去餐后尽快食用', '纯牛奶、草莓风味饮料浓浆、樱花风味糖浆、桃味花形果冻、酸奶、搅打奶油（含樱花风味糖浆）');
INSERT INTO `goodsinfo` VALUES ('4', '珞珈樱花拿铁', 'Cherry Blossom', 'http://rhymin.cn:3000/images/coffee2.jpg', '人气top', 'null', '1,2', '1', '1,4', '4', null, null, '15.40', '精选纯牛奶为低，草莓和樱花风味荣誉其中，混合口感细滑的优选酸奶，再加上水蜜桃味花朵行果冻颗粒。颜值超高，满分好喝。（饮用钱建议搅拌）图片仅供参考，请以实物为准，建议去餐后尽快食用', '纯牛奶、草莓风味饮料浓浆、樱花风味糖浆、桃味花形果冻、酸奶、搅打奶油（含樱花风味糖浆）');
INSERT INTO `goodsinfo` VALUES ('5', '陨石拿铁', 'Cherry Blossom', 'http://rhymin.cn:3000/images/coffee3.jpg', '人气top', 'null', '1', '1', '3,4', '4', '2,3', '2', '15.40', '精选纯牛奶为低，草莓和樱花风味荣誉其中，混合口感细滑的优选酸奶，再加上水蜜桃味花朵行果冻颗粒。颜值超高，满分好喝。（饮用钱建议搅拌）图片仅供参考，请以实物为准，建议去餐后尽快食用', '纯牛奶、草莓风味饮料浓浆、樱花风味糖浆、桃味花形果冻、酸奶、搅打奶油（含樱花风味糖浆）');
INSERT INTO `goodsinfo` VALUES ('6', '珞珈樱花拿铁', 'Cherry Blossom', 'http://rhymin.cn:3000/images/coffee4.jpg', '大师咖啡', '拿铁系列', '1,2', '1', '1,4', '4', null, null, '15.40', '精选纯牛奶为低，草莓和樱花风味荣誉其中，混合口感细滑的优选酸奶，再加上水蜜桃味花朵行果冻颗粒。颜值超高，满分好喝。（饮用钱建议搅拌）图片仅供参考，请以实物为准，建议去餐后尽快食用', '纯牛奶、草莓风味饮料浓浆、樱花风味糖浆、桃味花形果冻、酸奶、搅打奶油（含樱花风味糖浆）');
INSERT INTO `goodsinfo` VALUES ('7', '珞珈樱花拿铁', 'Cherry Blossom', 'http://rhymin.cn:3000/images/coffee4.jpg', '大师咖啡', '拿铁系列', '1,2', '2', '1,4', '4', '1,2,3', '3', '15.40', '精选纯牛奶为低，草莓和樱花风味荣誉其中，混合口感细滑的优选酸奶，再加上水蜜桃味花朵行果冻颗粒。颜值超高，满分好喝。（饮用钱建议搅拌）图片仅供参考，请以实物为准，建议去餐后尽快食用', '纯牛奶、草莓风味饮料浓浆、樱花风味糖浆、桃味花形果冻、酸奶、搅打奶油（含樱花风味糖浆）');
INSERT INTO `goodsinfo` VALUES ('8', '冲绳黑糖拿铁', 'Cherry Blossom', 'http://rhymin.cn:3000/images/coffee6.jpg', '大师咖啡', ' 拿铁系列', '1,2', '2', '1,4', '4', '1,2,3', '3', '15.40', '精选纯牛奶为低，草莓和樱花风味荣誉其中，混合口感细滑的优选酸奶，再加上水蜜桃味花朵行果冻颗粒。颜值超高，满分好喝。（饮用钱建议搅拌）图片仅供参考，请以实物为准，建议去餐后尽快食用', '纯牛奶、草莓风味饮料浓浆、樱花风味糖浆、桃味花形果冻、酸奶、搅打奶油（含樱花风味糖浆）');
INSERT INTO `goodsinfo` VALUES ('9', '冲绳黑糖拿铁', 'Cherry Blossom', 'http://rhymin.cn:3000/images/coffee6.jpg', '大师咖啡', '拿铁系列', '1,2', '2', '1,4', '4', '1,2,3', '3', '15.40', '精选纯牛奶为低，草莓和樱花风味荣誉其中，混合口感细滑的优选酸奶，再加上水蜜桃味花朵行果冻颗粒。颜值超高，满分好喝。（饮用钱建议搅拌）图片仅供参考，请以实物为准，建议去餐后尽快食用', '纯牛奶、草莓风味饮料浓浆、樱花风味糖浆、桃味花形果冻、酸奶、搅打奶油（含樱花风味糖浆）');
INSERT INTO `goodsinfo` VALUES ('10', '冲绳黑糖拿铁', 'Cherry Blossom', 'http://rhymin.cn:3000/images/coffee6.jpg', '大师咖啡', '拿铁系列', '1,2', '2', '1,4', '4', '1,2,3', '3', '15.40', '精选纯牛奶为低，草莓和樱花风味荣誉其中，混合口感细滑的优选酸奶，再加上水蜜桃味花朵行果冻颗粒。颜值超高，满分好喝。（饮用钱建议搅拌）图片仅供参考，请以实物为准，建议去餐后尽快食用', '纯牛奶、草莓风味饮料浓浆、樱花风味糖浆、桃味花形果冻、酸奶、搅打奶油（含樱花风味糖浆）');
INSERT INTO `goodsinfo` VALUES ('11', '冲绳黑糖拿铁', 'Cherry Blossom', 'http://rhymin.cn:3000/images/coffee6.jpg', '大师咖啡', '拿铁系列', '1,2', '2', '1,4', '4', '1,2,3', '3', '15.40', '精选纯牛奶为低，草莓和樱花风味荣誉其中，混合口感细滑的优选酸奶，再加上水蜜桃味花朵行果冻颗粒。颜值超高，满分好喝。（饮用钱建议搅拌）图片仅供参考，请以实物为准，建议去餐后尽快食用', '纯牛奶、草莓风味饮料浓浆、樱花风味糖浆、桃味花形果冻、酸奶、搅打奶油（含樱花风味糖浆）');
INSERT INTO `goodsinfo` VALUES ('12', '冲绳黑糖拿铁', 'Cherry Blossom', 'http://rhymin.cn:3000/images/coffee6.jpg', '大师咖啡', '拿铁系列', '1,2', '2', '1,4', '4', '1,2,3', '3', '15.40', '精选纯牛奶为低，草莓和樱花风味荣誉其中，混合口感细滑的优选酸奶，再加上水蜜桃味花朵行果冻颗粒。颜值超高，满分好喝。（饮用钱建议搅拌）图片仅供参考，请以实物为准，建议去餐后尽快食用', '纯牛奶、草莓风味饮料浓浆、樱花风味糖浆、桃味花形果冻、酸奶、搅打奶油（含樱花风味糖浆）');
INSERT INTO `goodsinfo` VALUES ('13', '冲绳黑糖拿铁', 'Cherry Blossom', 'http://rhymin.cn:3000/images/coffee6.jpg', '大师咖啡', '拿铁系列', '1,2', '2', '1,4', '4', '1,2,3', '3', '15.40', '精选纯牛奶为低，草莓和樱花风味荣誉其中，混合口感细滑的优选酸奶，再加上水蜜桃味花朵行果冻颗粒。颜值超高，满分好喝。（饮用钱建议搅拌）图片仅供参考，请以实物为准，建议去餐后尽快食用', '纯牛奶、草莓风味饮料浓浆、樱花风味糖浆、桃味花形果冻、酸奶、搅打奶油（含樱花风味糖浆）');
INSERT INTO `goodsinfo` VALUES ('14', '标准美式', 'Cherry Blossom', 'http://rhymin.cn:3000/images/coffee7.jpg', '大师咖啡', '黑咖系列', '1,2', '2', '1,4', '4', '1,2,3', '1', '15.00', '精选纯牛奶为低，草莓和樱花风味荣誉其中，混合口感细滑的优选酸奶，再加上水蜜桃味花朵行果冻颗粒。颜值超高，满分好喝。（饮用钱建议搅拌）图片仅供参考，请以实物为准，建议去餐后尽快食用', '纯牛奶、草莓风味饮料浓浆、樱花风味糖浆、桃味花形果冻、酸奶、搅打奶油（含樱花风味糖浆）');
INSERT INTO `goodsinfo` VALUES ('15', '标准美式', 'Cherry Blossom', 'http://rhymin.cn:3000/images/coffee8.jpg', '大师咖啡', '黑咖系列', '1,2', '2', '1,4', '4', '1,2,3', '1', '15.00', '精选纯牛奶为低，草莓和樱花风味荣誉其中，混合口感细滑的优选酸奶，再加上水蜜桃味花朵行果冻颗粒。颜值超高，满分好喝。（饮用钱建议搅拌）图片仅供参考，请以实物为准，建议去餐后尽快食用', '纯牛奶、草莓风味饮料浓浆、樱花风味糖浆、桃味花形果冻、酸奶、搅打奶油（含樱花风味糖浆）');
INSERT INTO `goodsinfo` VALUES ('16', '标准美式', 'Cherry Blossom', 'http://rhymin.cn:3000/images/coffee8.jpg', '大师咖啡', '黑咖系列', '1,2', '2', '1,4', '4', '1,2,3', '1', '15.00', '精选纯牛奶为低，草莓和樱花风味荣誉其中，混合口感细滑的优选酸奶，再加上水蜜桃味花朵行果冻颗粒。颜值超高，满分好喝。（饮用钱建议搅拌）图片仅供参考，请以实物为准，建议去餐后尽快食用', '纯牛奶、草莓风味饮料浓浆、樱花风味糖浆、桃味花形果冻、酸奶、搅打奶油（含樱花风味糖浆）');
INSERT INTO `goodsinfo` VALUES ('17', '标准美式', 'Cherry Blossom', 'http://rhymin.cn:3000/images/coffee8.jpg', '大师咖啡', '黑咖系列', '1,2', '2', '1,4', '4', '1,2,3', '1', '16.80', '精选纯牛奶为低，草莓和樱花风味荣誉其中，混合口感细滑的优选酸奶，再加上水蜜桃味花朵行果冻颗粒。颜值超高，满分好喝。（饮用钱建议搅拌）图片仅供参考，请以实物为准，建议去餐后尽快食用', '纯牛奶、草莓风味饮料浓浆、樱花风味糖浆、桃味花形果冻、酸奶、搅打奶油（含樱花风味糖浆）');
INSERT INTO `goodsinfo` VALUES ('18', '银河气泡美式', 'Cherry Blossom', 'http://rhymin.cn:3000/images/coffee9.jpg', '大师咖啡', '起泡家族', '1,2', '2', null, null, '1,2,3', '3', '15.00', '精选纯牛奶为低，草莓和樱花风味荣誉其中，混合口感细滑的优选酸奶，再加上水蜜桃味花朵行果冻颗粒。颜值超高，满分好喝。（饮用钱建议搅拌）图片仅供参考，请以实物为准，建议去餐后尽快食用', '纯牛奶、草莓风味饮料浓浆、樱花风味糖浆、桃味花形果冻、酸奶、搅打奶油（含樱花风味糖浆）');
INSERT INTO `goodsinfo` VALUES ('19', '银河气泡美式', 'Cherry Blossom', 'http://rhymin.cn:3000/images/coffee9.jpg', '大师咖啡', '起泡家族', '1,2', '2', null, null, '1,2,3', '3', '15.00', '精选纯牛奶为低，草莓和樱花风味荣誉其中，混合口感细滑的优选酸奶，再加上水蜜桃味花朵行果冻颗粒。颜值超高，满分好喝。（饮用钱建议搅拌）图片仅供参考，请以实物为准，建议去餐后尽快食用', '纯牛奶、草莓风味饮料浓浆、樱花风味糖浆、桃味花形果冻、酸奶、搅打奶油（含樱花风味糖浆）');
INSERT INTO `goodsinfo` VALUES ('20', '银河气泡美式', 'Cherry Blossom', 'http://rhymin.cn:3000/images/coffee9.jpg', '大师咖啡', '起泡家族', '1,2', '2', null, null, '1,2,3', '3', '15.00', '精选纯牛奶为低，草莓和樱花风味荣誉其中，混合口感细滑的优选酸奶，再加上水蜜桃味花朵行果冻颗粒。颜值超高，满分好喝。（饮用钱建议搅拌）图片仅供参考，请以实物为准，建议去餐后尽快食用', '纯牛奶、草莓风味饮料浓浆、樱花风味糖浆、桃味花形果冻、酸奶、搅打奶油（含樱花风味糖浆）');
INSERT INTO `goodsinfo` VALUES ('21', '奥润百', 'Cherry Blossom', 'http://rhymin.cn:3000/images/coffee10.jpg', '大师咖啡', '经典奶咖', '1,2', '2', null, null, '1,2,3', '3', '19.00', '精选纯牛奶为低，草莓和樱花风味荣誉其中，混合口感细滑的优选酸奶，再加上水蜜桃味花朵行果冻颗粒。颜值超高，满分好喝。（饮用钱建议搅拌）图片仅供参考，请以实物为准，建议去餐后尽快食用', '纯牛奶、草莓风味饮料浓浆、樱花风味糖浆、桃味花形果冻、酸奶、搅打奶油（含樱花风味糖浆）');
INSERT INTO `goodsinfo` VALUES ('22', '奥润百', 'Cherry Blossom', 'http://rhymin.cn:3000/images/coffee10.jpg', '大师咖啡', '经典奶咖', '1,2', '2', null, null, '1,2,3', '3', '17.00', '精选纯牛奶为低，草莓和樱花风味荣誉其中，混合口感细滑的优选酸奶，再加上水蜜桃味花朵行果冻颗粒。颜值超高，满分好喝。（饮用钱建议搅拌）图片仅供参考，请以实物为准，建议去餐后尽快食用', '纯牛奶、草莓风味饮料浓浆、樱花风味糖浆、桃味花形果冻、酸奶、搅打奶油（含樱花风味糖浆）');
INSERT INTO `goodsinfo` VALUES ('23', '奥润百', 'Cherry Blossom', 'http://rhymin.cn:3000/images/coffee10.jpg', '大师咖啡', '经典奶咖', '1,2', '2', null, null, '1,2,3', '3', '19.00', '精选纯牛奶为低，草莓和樱花风味荣誉其中，混合口感细滑的优选酸奶，再加上水蜜桃味花朵行果冻颗粒。颜值超高，满分好喝。（饮用钱建议搅拌）图片仅供参考，请以实物为准，建议去餐后尽快食用', '纯牛奶、草莓风味饮料浓浆、樱花风味糖浆、桃味花形果冻、酸奶、搅打奶油（含樱花风味糖浆）');
INSERT INTO `goodsinfo` VALUES ('24', '奥润百', 'Cherry Blossom', 'http://rhymin.cn:3000/images/coffee9.jpg', '大师咖啡', '经典奶咖', '1,2', '2', null, null, '1,2,3', '3', '19.00', '精选纯牛奶为低，草莓和樱花风味荣誉其中，混合口感细滑的优选酸奶，再加上水蜜桃味花朵行果冻颗粒。颜值超高，满分好喝。（饮用钱建议搅拌）图片仅供参考，请以实物为准，建议去餐后尽快食用', '纯牛奶、草莓风味饮料浓浆、樱花风味糖浆、桃味花形果冻、酸奶、搅打奶油（含樱花风味糖浆）');
INSERT INTO `goodsinfo` VALUES ('25', '春日摸抹茶', 'Cherry Blossom', 'http://rhymin.cn:3000/images/coffee1.jpg', '小鹿茶精选', '牛乳 多多', '1,2', '2', null, null, '1,2,3', '3', '16.00', '精选纯牛奶为低，草莓和樱花风味荣誉其中，混合口感细滑的优选酸奶，再加上水蜜桃味花朵行果冻颗粒。颜值超高，满分好喝。（饮用钱建议搅拌）图片仅供参考，请以实物为准，建议去餐后尽快食用', '纯牛奶、草莓风味饮料浓浆、樱花风味糖浆、桃味花形果冻、酸奶、搅打奶油（含樱花风味糖浆）');
INSERT INTO `goodsinfo` VALUES ('26', '春日摸抹茶', 'Cherry Blossom', 'http://rhymin.cn:3000/images/coffee1.jpg', '小鹿茶精选', '牛乳多多', '1,2', '2', null, null, '1,2,3', '3', '14.00', '精选纯牛奶为低，草莓和樱花风味荣誉其中，混合口感细滑的优选酸奶，再加上水蜜桃味花朵行果冻颗粒。颜值超高，满分好喝。（饮用钱建议搅拌）图片仅供参考，请以实物为准，建议去餐后尽快食用', '纯牛奶、草莓风味饮料浓浆、樱花风味糖浆、桃味花形果冻、酸奶、搅打奶油（含樱花风味糖浆）');
INSERT INTO `goodsinfo` VALUES ('27', '春日摸抹茶', 'Cherry Blossom', 'http://rhymin.cn:3000/images/coffee1.jpg', '小鹿茶精选', '牛乳多多', '1,2', '2', null, null, '1,2,3', '3', '28.00', '精选纯牛奶为低，草莓和樱花风味荣誉其中，混合口感细滑的优选酸奶，再加上水蜜桃味花朵行果冻颗粒。颜值超高，满分好喝。（饮用钱建议搅拌）图片仅供参考，请以实物为准，建议去餐后尽快食用', '纯牛奶、草莓风味饮料浓浆、樱花风味糖浆、桃味花形果冻、酸奶、搅打奶油（含樱花风味糖浆）');
INSERT INTO `goodsinfo` VALUES ('28', '春日摸抹茶', 'Cherry Blossom', 'http://rhymin.cn:3000/images/coffee1.jpg', '小鹿茶精选', '牛乳多多', '1,2', '2', null, null, '1,2,3', '3', '12.00', '精选纯牛奶为低，草莓和樱花风味荣誉其中，混合口感细滑的优选酸奶，再加上水蜜桃味花朵行果冻颗粒。颜值超高，满分好喝。（饮用钱建议搅拌）图片仅供参考，请以实物为准，建议去餐后尽快食用', '纯牛奶、草莓风味饮料浓浆、樱花风味糖浆、桃味花形果冻、酸奶、搅打奶油（含樱花风味糖浆）');
INSERT INTO `goodsinfo` VALUES ('29', '春日摸抹茶', 'Cherry Blossom', 'http://rhymin.cn:3000/images/coffee1.jpg', '小小鹿茶精选', '牛乳多多', '1,2', '2', null, null, '1,2,3', '3', '16.00', '精选纯牛奶为低，草莓和樱花风味荣誉其中，混合口感细滑的优选酸奶，再加上水蜜桃味花朵行果冻颗粒。颜值超高，满分好喝。（饮用钱建议搅拌）图片仅供参考，请以实物为准，建议去餐后尽快食用', '纯牛奶、草莓风味饮料浓浆、樱花风味糖浆、桃味花形果冻、酸奶、搅打奶油（含樱花风味糖浆）');
INSERT INTO `goodsinfo` VALUES ('30', '草莓很好喝', 'Cherry Blossom', 'http://rhymin.cn:3000/images/coffee2.jpg', '小小鹿茶精选', '水果很好喝', '1,2', '2', null, null, '1,2,3', '3', '18.00', '精选纯牛奶为低，草莓和樱花风味荣誉其中，混合口感细滑的优选酸奶，再加上水蜜桃味花朵行果冻颗粒。颜值超高，满分好喝。（饮用钱建议搅拌）图片仅供参考，请以实物为准，建议去餐后尽快食用', '纯牛奶、草莓风味饮料浓浆、樱花风味糖浆、桃味花形果冻、酸奶、搅打奶油（含樱花风味糖浆）');
INSERT INTO `goodsinfo` VALUES ('31', '草莓很好喝', 'Cherry Blossom', 'http://rhymin.cn:3000/images/coffee2.jpg', '小鹿茶精选', '水果很好喝', '1,2', '2', '1,2,3,4', '2', '1,2,3', '3', '18.00', '精选纯牛奶为低，草莓和樱花风味荣誉其中，混合口感细滑的优选酸奶，再加上水蜜桃味花朵行果冻颗粒。颜值超高，满分好喝。（饮用钱建议搅拌）图片仅供参考，请以实物为准，建议去餐后尽快食用', '纯牛奶、草莓风味饮料浓浆、樱花风味糖浆、桃味花形果冻、酸奶、搅打奶油（含樱花风味糖浆）');
INSERT INTO `goodsinfo` VALUES ('32', '芒果很好喝', 'Cherry Blossom', 'http://rhymin.cn:3000/images/coffee2.jpg', '小鹿茶精选', '水果很好喝', '1,2', '2', '1,2,3,4', '2', '1,2,3', '3', '16.00', '精选纯牛奶为低，草莓和樱花风味荣誉其中，混合口感细滑的优选酸奶，再加上水蜜桃味花朵行果冻颗粒。颜值超高，满分好喝。（饮用钱建议搅拌）图片仅供参考，请以实物为准，建议去餐后尽快食用', '纯牛奶、草莓风味饮料浓浆、樱花风味糖浆、桃味花形果冻、酸奶、搅打奶油（含樱花风味糖浆）');
INSERT INTO `goodsinfo` VALUES ('33', '草莓很好喝', 'Cherry Blossom', 'http://rhymin.cn:3000/images/coffee2.jpg', '小鹿茶精选', '水果很好喝', '1,2', '2', '1,2,3,4', '2', '1,2,3', '3', '16.00', '精选纯牛奶为低，草莓和樱花风味荣誉其中，混合口感细滑的优选酸奶，再加上水蜜桃味花朵行果冻颗粒。颜值超高，满分好喝。（饮用钱建议搅拌）图片仅供参考，请以实物为准，建议去餐后尽快食用', '纯牛奶、草莓风味饮料浓浆、樱花风味糖浆、桃味花形果冻、酸奶、搅打奶油（含樱花风味糖浆）');
INSERT INTO `goodsinfo` VALUES ('34', '草莓很好喝', 'Cherry Blossom', 'http://rhymin.cn:3000/images/coffee2.jpg', '小鹿茶精选', '水果很好喝', '1,2', '2', '1,2,3,4', '2', '1,2,3', '3', '18.00', '精选纯牛奶为低，草莓和樱花风味荣誉其中，混合口感细滑的优选酸奶，再加上水蜜桃味花朵行果冻颗粒。颜值超高，满分好喝。（饮用钱建议搅拌）图片仅供参考，请以实物为准，建议去餐后尽快食用', '纯牛奶、草莓风味饮料浓浆、樱花风味糖浆、桃味花形果冻、酸奶、搅打奶油（含樱花风味糖浆）');
INSERT INTO `goodsinfo` VALUES ('35', '桃桃红宝石查', 'Cherry Blossom', 'http://rhymin.cn:3000/images/coffee4.jpg', '小鹿茶精选', '芝士 茶马奇多', '1,2', '2', '1,2,3,4', '2', '1,2,3', '3', '18.00', '精选纯牛奶为低，草莓和樱花风味荣誉其中，混合口感细滑的优选酸奶，再加上水蜜桃味花朵行果冻颗粒。颜值超高，满分好喝。（饮用钱建议搅拌）图片仅供参考，请以实物为准，建议去餐后尽快食用', '纯牛奶、草莓风味饮料浓浆、樱花风味糖浆、桃味花形果冻、酸奶、搅打奶油（含樱花风味糖浆）');
INSERT INTO `goodsinfo` VALUES ('36', '桃桃红宝石查', 'Cherry Blossom', 'http://rhymin.cn:3000/images/coffee4.jpg', '小鹿茶精选', '芝士茶马奇多', '1,2', '2', '1,2,3,4', '2', '1,2,3', '3', '18.00', '精选纯牛奶为低，草莓和樱花风味荣誉其中，混合口感细滑的优选酸奶，再加上水蜜桃味花朵行果冻颗粒。颜值超高，满分好喝。（饮用钱建议搅拌）图片仅供参考，请以实物为准，建议去餐后尽快食用', '纯牛奶、草莓风味饮料浓浆、樱花风味糖浆、桃味花形果冻、酸奶、搅打奶油（含樱花风味糖浆）');
INSERT INTO `goodsinfo` VALUES ('37', '桃桃红宝石查', 'Cherry Blossom', 'http://rhymin.cn:3000/images/coffee4.jpg', '小鹿茶精选', '芝士茶马奇多', '1,2', '2', '1,2,3,4', '2', '1,2,3', '3', '18.00', '精选纯牛奶为低，草莓和樱花风味荣誉其中，混合口感细滑的优选酸奶，再加上水蜜桃味花朵行果冻颗粒。颜值超高，满分好喝。（饮用钱建议搅拌）图片仅供参考，请以实物为准，建议去餐后尽快食用', '纯牛奶、草莓风味饮料浓浆、樱花风味糖浆、桃味花形果冻、酸奶、搅打奶油（含樱花风味糖浆）');
INSERT INTO `goodsinfo` VALUES ('38', '桃桃红宝石查', 'Cherry Blossom', 'http://rhymin.cn:3000/images/coffee4.jpg', '小鹿茶精选', '芝士茶马奇多', '1,2', '2', '1,2,3,4', '2', '1,2,3', '3', '18.00', '精选纯牛奶为低，草莓和樱花风味荣誉其中，混合口感细滑的优选酸奶，再加上水蜜桃味花朵行果冻颗粒。颜值超高，满分好喝。（饮用钱建议搅拌）图片仅供参考，请以实物为准，建议去餐后尽快食用', '纯牛奶、草莓风味饮料浓浆、樱花风味糖浆、桃味花形果冻、酸奶、搅打奶油（含樱花风味糖浆）');
INSERT INTO `goodsinfo` VALUES ('39', ' 桃桃红宝石查', 'Cherry Blossom', 'http://rhymin.cn:3000/images/coffee4.jpg', '小鹿茶精选', '芝士茶马奇多', '1,2', '2', '1,2,3,4', '2', '1,2,3', '3', '18.00', '精选纯牛奶为低，草莓和樱花风味荣誉其中，混合口感细滑的优选酸奶，再加上水蜜桃味花朵行果冻颗粒。颜值超高，满分好喝。（饮用钱建议搅拌）图片仅供参考，请以实物为准，建议去餐后尽快食用', '纯牛奶、草莓风味饮料浓浆、樱花风味糖浆、桃味花形果冻、酸奶、搅打奶油（含樱花风味糖浆）');
INSERT INTO `goodsinfo` VALUES ('40', '神仙炖雪梨', 'Cherry Blossom', 'http://rhymin.cn:3000/images/coffee9.jpg', '小鹿茶精选', ' 健康轻饮', '1,2', '2', '1,2,3,4', '2', '1,2,3', '3', '18.00', '精选纯牛奶为低，草莓和樱花风味荣誉其中，混合口感细滑的优选酸奶，再加上水蜜桃味花朵行果冻颗粒。颜值超高，满分好喝。（饮用钱建议搅拌）图片仅供参考，请以实物为准，建议去餐后尽快食用', '纯牛奶、草莓风味饮料浓浆、樱花风味糖浆、桃味花形果冻、酸奶、搅打奶油（含樱花风味糖浆）');
INSERT INTO `goodsinfo` VALUES ('41', '樱花草莓酸奶', 'Cherry Blossom', 'http://rhymin.cn:3000/images/coffee5.jpg', '瑞纳冰', 'null', '1,2', '2', '1,2,3,4', '2', '1,2,3', '3', '18.00', '精选纯牛奶为低，草莓和樱花风味荣誉其中，混合口感细滑的优选酸奶，再加上水蜜桃味花朵行果冻颗粒。颜值超高，满分好喝。（饮用钱建议搅拌）图片仅供参考，请以实物为准，建议去餐后尽快食用', '纯牛奶、草莓风味饮料浓浆、樱花风味糖浆、桃味花形果冻、酸奶、搅打奶油（含樱花风味糖浆）');
INSERT INTO `goodsinfo` VALUES ('42', '樱花草莓酸奶', 'Cherry Blossom', 'http://rhymin.cn:3000/images/coffee5.jpg', '瑞纳冰', 'null', '1,2', '2', '1,2,3,4', '2', '1,2,3', '3', '18.00', '精选纯牛奶为低，草莓和樱花风味荣誉其中，混合口感细滑的优选酸奶，再加上水蜜桃味花朵行果冻颗粒。颜值超高，满分好喝。（饮用钱建议搅拌）图片仅供参考，请以实物为准，建议去餐后尽快食用', '纯牛奶、草莓风味饮料浓浆、樱花风味糖浆、桃味花形果冻、酸奶、搅打奶油（含樱花风味糖浆）');
INSERT INTO `goodsinfo` VALUES ('43', '樱花草莓酸奶', 'Cherry Blossom', 'http://rhymin.cn:3000/images/coffee5.jpg', '瑞纳冰', 'null', '1,2', '2', '1,2,3,4', '2', '1,2,3', '3', '18.00', '精选纯牛奶为低，草莓和樱花风味荣誉其中，混合口感细滑的优选酸奶，再加上水蜜桃味花朵行果冻颗粒。颜值超高，满分好喝。（饮用钱建议搅拌）图片仅供参考，请以实物为准，建议去餐后尽快食用', '纯牛奶、草莓风味饮料浓浆、樱花风味糖浆、桃味花形果冻、酸奶、搅打奶油（含樱花风味糖浆）');
INSERT INTO `goodsinfo` VALUES ('44', '樱花草莓酸奶', 'Cherry Blossom', 'http://rhymin.cn:3000/images/coffee5.jpg', '瑞纳冰', 'null', '1,2', '2', '1,2,3,4', '2', '1,2,3', '3', '18.00', '精选纯牛奶为低，草莓和樱花风味荣誉其中，混合口感细滑的优选酸奶，再加上水蜜桃味花朵行果冻颗粒。颜值超高，满分好喝。（饮用钱建议搅拌）图片仅供参考，请以实物为准，建议去餐后尽快食用', '纯牛奶、草莓风味饮料浓浆、樱花风味糖浆、桃味花形果冻、酸奶、搅打奶油（含樱花风味糖浆）');
INSERT INTO `goodsinfo` VALUES ('45', ' 樱花草莓酸奶', 'Cherry Blossom', 'http://rhymin.cn:3000/images/coffee5.jpg', '瑞纳冰', 'null', '1,2', '2', '1,2,3,4', '2', '1,2,3', '3', '18.00', '精选纯牛奶为低，草莓和樱花风味荣誉其中，混合口感细滑的优选酸奶，再加上水蜜桃味花朵行果冻颗粒。颜值超高，满分好喝。（饮用钱建议搅拌）图片仅供参考，请以实物为准，建议去餐后尽快食用', '纯牛奶、草莓风味饮料浓浆、樱花风味糖浆、桃味花形果冻、酸奶、搅打奶油（含樱花风味糖浆）');
INSERT INTO `goodsinfo` VALUES ('46', '樱花草莓酸奶', 'Cherry Blossom', 'http://rhymin.cn:3000/images/coffee7.jpg', '甄选酸奶', 'null', '1,2', '2', '1,2,3,4', '2', '1,2,3', '3', '6.90', '精选纯牛奶为低，草莓和樱花风味荣誉其中，混合口感细滑的优选酸奶，再加上水蜜桃味花朵行果冻颗粒。颜值超高，满分好喝。（饮用钱建议搅拌）图片仅供参考，请以实物为准，建议去餐后尽快食用', '纯牛奶、草莓风味饮料浓浆、樱花风味糖浆、桃味花形果冻、酸奶、搅打奶油（含樱花风味糖浆）');
INSERT INTO `goodsinfo` VALUES ('47', '樱花草莓酸奶', 'Cherry Blossom', 'http://rhymin.cn:3000/images/coffee7.jpg', '甄选酸奶', 'null', '1,2', '2', '1,2,3,4', '2', '1,2,3', '3', '6.90', '精选纯牛奶为低，草莓和樱花风味荣誉其中，混合口感细滑的优选酸奶，再加上水蜜桃味花朵行果冻颗粒。颜值超高，满分好喝。（饮用钱建议搅拌）图片仅供参考，请以实物为准，建议去餐后尽快食用', '纯牛奶、草莓风味饮料浓浆、樱花风味糖浆、桃味花形果冻、酸奶、搅打奶油（含樱花风味糖浆）');
INSERT INTO `goodsinfo` VALUES ('48', '樱花草莓酸奶', 'Cherry Blossom', 'http://rhymin.cn:3000/images/coffee7.jpg', '甄选酸奶', 'null', '1,2', '2', '1,2,3,4', '2', '1,2,3', '3', '7.90', '精选纯牛奶为低，草莓和樱花风味荣誉其中，混合口感细滑的优选酸奶，再加上水蜜桃味花朵行果冻颗粒。颜值超高，满分好喝。（饮用钱建议搅拌）图片仅供参考，请以实物为准，建议去餐后尽快食用', '纯牛奶、草莓风味饮料浓浆、樱花风味糖浆、桃味花形果冻、酸奶、搅打奶油（含樱花风味糖浆）');
INSERT INTO `goodsinfo` VALUES ('49', '樱花草莓酸奶', 'Cherry Blossom', 'http://rhymin.cn:3000/images/coffee7.jpg', '甄选酸奶', 'null', '1,2', '2', '1,2,3,4', '2', '1,2,3', '3', '8.90', '精选纯牛奶为低，草莓和樱花风味荣誉其中，混合口感细滑的优选酸奶，再加上水蜜桃味花朵行果冻颗粒。颜值超高，满分好喝。（饮用钱建议搅拌）图片仅供参考，请以实物为准，建议去餐后尽快食用', '纯牛奶、草莓风味饮料浓浆、樱花风味糖浆、桃味花形果冻、酸奶、搅打奶油（含樱花风味糖浆）');
INSERT INTO `goodsinfo` VALUES ('50', '樱花草莓酸奶', 'Cherry Blossom', 'http://rhymin.cn:3000/images/goods4.jpg', '甄选酸奶', 'null', '1,2', '2', '1,2,3,4', '2', '1,2,3', '3', '6.90', '精选纯牛奶为低，草莓和樱花风味荣誉其中，混合口感细滑的优选酸奶，再加上水蜜桃味花朵行果冻颗粒。颜值超高，满分好喝。（饮用钱建议搅拌）图片仅供参考，请以实物为准，建议去餐后尽快食用', '纯牛奶、草莓风味饮料浓浆、樱花风味糖浆、桃味花形果冻、酸奶、搅打奶油（含樱花风味糖浆）');
INSERT INTO `goodsinfo` VALUES ('51', '樱花草莓酸奶', 'Cherry Blossom', 'http://rhymin.cn:3000/images/goods4.jpg', '甄选酸奶', 'null', '1,2', '2', '1,2,3,4', '2', '1,2,3', '3', '8.90', '精选纯牛奶为低，草莓和樱花风味荣誉其中，混合口感细滑的优选酸奶，再加上水蜜桃味花朵行果冻颗粒。颜值超高，满分好喝。（饮用钱建议搅拌）图片仅供参考，请以实物为准，建议去餐后尽快食用', '纯牛奶、草莓风味饮料浓浆、樱花风味糖浆、桃味花形果冻、酸奶、搅打奶油（含樱花风味糖浆）');
INSERT INTO `goodsinfo` VALUES ('52', '樱花草莓酸奶', 'Cherry Blossom', 'http://rhymin.cn:3000/images/goods4.jpg', '甄选酸奶', 'null', '1,2', '2', '1,2,3,4', '2', '1,2,3', '3', '6.90', '精选纯牛奶为低，草莓和樱花风味荣誉其中，混合口感细滑的优选酸奶，再加上水蜜桃味花朵行果冻颗粒。颜值超高，满分好喝。（饮用钱建议搅拌）图片仅供参考，请以实物为准，建议去餐后尽快食用', '纯牛奶、草莓风味饮料浓浆、樱花风味糖浆、桃味花形果冻、酸奶、搅打奶油（含樱花风味糖浆）');
INSERT INTO `goodsinfo` VALUES ('53', '樱花草莓酸奶', 'Cherry Blossom', 'http://rhymin.cn:3000/images/goods4.jpg', '甄选酸奶', 'null', '1,2', '2', '1,2,3,4', '2', '1,2,3', '3', '7.90', '精选纯牛奶为低，草莓和樱花风味荣誉其中，混合口感细滑的优选酸奶，再加上水蜜桃味花朵行果冻颗粒。颜值超高，满分好喝。（饮用钱建议搅拌）图片仅供参考，请以实物为准，建议去餐后尽快食用', '纯牛奶、草莓风味饮料浓浆、樱花风味糖浆、桃味花形果冻、酸奶、搅打奶油（含樱花风味糖浆）');
INSERT INTO `goodsinfo` VALUES ('54', '樱花草莓酸奶', 'Cherry Blossom', 'http://rhymin.cn:3000/images/coffee7.jpg', '甄选酸奶', 'null', '1,2', '2', '1,2,3,4', '2', '1,2,3', '3', '6.90', '精选纯牛奶为低，草莓和樱花风味荣誉其中，混合口感细滑的优选酸奶，再加上水蜜桃味花朵行果冻颗粒。颜值超高，满分好喝。（饮用钱建议搅拌）图片仅供参考，请以实物为准，建议去餐后尽快食用', '纯牛奶、草莓风味饮料浓浆、樱花风味糖浆、桃味花形果冻、酸奶、搅打奶油（含樱花风味糖浆）');
INSERT INTO `goodsinfo` VALUES ('55', '樱花草莓酸奶', 'Cherry Blossom', 'http://rhymin.cn:3000/images/coffee7.jpg', '甄选酸奶', 'null', '1,2', '2', '1,2,3,4', '2', '1,2,3', '3', '7.90', '精选纯牛奶为低，草莓和樱花风味荣誉其中，混合口感细滑的优选酸奶，再加上水蜜桃味花朵行果冻颗粒。颜值超高，满分好喝。（饮用钱建议搅拌）图片仅供参考，请以实物为准，建议去餐后尽快食用', '纯牛奶、草莓风味饮料浓浆、樱花风味糖浆、桃味花形果冻、酸奶、搅打奶油（含樱花风味糖浆）');
INSERT INTO `goodsinfo` VALUES ('56', 'NFC鲜榨橙汁', 'Cherry Blossom', 'http://rhymin.cn:3000/images/coffee3.jpg', '鲜榨果蔬汁', 'null', '1,2', '2', '1,2,3,4', '2', '1,2,3', '3', '13.00', '精选纯牛奶为低，草莓和樱花风味荣誉其中，混合口感细滑的优选酸奶，再加上水蜜桃味花朵行果冻颗粒。颜值超高，满分好喝。（饮用钱建议搅拌）图片仅供参考，请以实物为准，建议去餐后尽快食用', '纯牛奶、草莓风味饮料浓浆、樱花风味糖浆、桃味花形果冻、酸奶、搅打奶油（含樱花风味糖浆）');
INSERT INTO `goodsinfo` VALUES ('57', 'NFC鲜榨橙汁', 'Cherry Blossom', 'http://rhymin.cn:3000/images/coffee3.jpg', '鲜榨果蔬汁', 'null', '1,2', '2', '1,2,3,4', '2', '1,2,3', '3', '13.00', '精选纯牛奶为低，草莓和樱花风味荣誉其中，混合口感细滑的优选酸奶，再加上水蜜桃味花朵行果冻颗粒。颜值超高，满分好喝。（饮用钱建议搅拌）图片仅供参考，请以实物为准，建议去餐后尽快食用', '纯牛奶、草莓风味饮料浓浆、樱花风味糖浆、桃味花形果冻、酸奶、搅打奶油（含樱花风味糖浆）');
INSERT INTO `goodsinfo` VALUES ('58', 'NFC鲜榨橙汁', 'Cherry Blossom', 'http://rhymin.cn:3000/images/coffee3.jpg', '鲜榨果蔬汁', 'null', '1,2', '2', '1,2,3,4', '2', '1,2,3', '3', '13.00', '精选纯牛奶为低，草莓和樱花风味荣誉其中，混合口感细滑的优选酸奶，再加上水蜜桃味花朵行果冻颗粒。颜值超高，满分好喝。（饮用钱建议搅拌）图片仅供参考，请以实物为准，建议去餐后尽快食用', '纯牛奶、草莓风味饮料浓浆、樱花风味糖浆、桃味花形果冻、酸奶、搅打奶油（含樱花风味糖浆）');
INSERT INTO `goodsinfo` VALUES ('59', '巧克力', 'Cherry Blossom', 'http://rhymin.cn:3000/images/coffee8.jpg', '经典饮品', 'null', '1,2', '2', '1,2,3,4', '2', '1,2,3', '3', '15.00', '精选纯牛奶为低，草莓和樱花风味荣誉其中，混合口感细滑的优选酸奶，再加上水蜜桃味花朵行果冻颗粒。颜值超高，满分好喝。（饮用钱建议搅拌）图片仅供参考，请以实物为准，建议去餐后尽快食用', '纯牛奶、草莓风味饮料浓浆、樱花风味糖浆、桃味花形果冻、酸奶、搅打奶油（含樱花风味糖浆）');
INSERT INTO `goodsinfo` VALUES ('60', '巧克力', 'Cherry Blossom', 'http://rhymin.cn:3000/images/coffee8.jpg', '经典饮品', 'null', '1,2', '2', '1,2,3,4', '2', '1,2,3', '3', '13.20', '精选纯牛奶为低，草莓和樱花风味荣誉其中，混合口感细滑的优选酸奶，再加上水蜜桃味花朵行果冻颗粒。颜值超高，满分好喝。（饮用钱建议搅拌）图片仅供参考，请以实物为准，建议去餐后尽快食用', '纯牛奶、草莓风味饮料浓浆、樱花风味糖浆、桃味花形果冻、酸奶、搅打奶油（含樱花风味糖浆）');
INSERT INTO `goodsinfo` VALUES ('61', '巴黎水', 'Cherry Blossom', 'http://rhymin.cn:3000/images/coffee8.jpg', '经典饮品', 'null', '1,2', '2', '1,2,3,4', '2', '1,2,3', '3', '19.00', '精选纯牛奶为低，草莓和樱花风味荣誉其中，混合口感细滑的优选酸奶，再加上水蜜桃味花朵行果冻颗粒。颜值超高，满分好喝。（饮用钱建议搅拌）图片仅供参考，请以实物为准，建议去餐后尽快食用', '纯牛奶、草莓风味饮料浓浆、樱花风味糖浆、桃味花形果冻、酸奶、搅打奶油（含樱花风味糖浆）');
INSERT INTO `goodsinfo` VALUES ('62', '巧克力', 'Cherry Blossom', 'http://rhymin.cn:3000/images/coffee8.jpg', '经典饮品', 'null', '1,2', '2', '1,2,3,4', '2', '1,2,3', '3', '13.20', '精选纯牛奶为低，草莓和樱花风味荣誉其中，混合口感细滑的优选酸奶，再加上水蜜桃味花朵行果冻颗粒。颜值超高，满分好喝。（饮用钱建议搅拌）图片仅供参考，请以实物为准，建议去餐后尽快食用', '纯牛奶、草莓风味饮料浓浆、樱花风味糖浆、桃味花形果冻、酸奶、搅打奶油（含樱花风味糖浆）');
INSERT INTO `goodsinfo` VALUES ('63', '粑粑', 'Cherry Blossom', 'http://rhymin.cn:3000/images/coffee4.jpg', '健康轻食', '烘焙甜食', null, null, null, null, null, null, '6.60', '精选纯牛奶为低，草莓和樱花风味荣誉其中，混合口感细滑的优选酸奶，再加上水蜜桃味花朵行果冻颗粒。颜值超高，满分好喝。（饮用钱建议搅拌）图片仅供参考，请以实物为准，建议去餐后尽快食用', '纯牛奶、草莓风味饮料浓浆、樱花风味糖浆、桃味花形果冻、酸奶、搅打奶油（含樱花风味糖浆）');
INSERT INTO `goodsinfo` VALUES ('64', '榴莲腰子', 'Cherry Blossom', 'http://rhymin.cn:3000/images/coffee8.jpg', '瑞幸坚果', '每日坚果', null, null, null, null, null, null, '4.55', '精选纯牛奶为低，草莓和樱花风味荣誉其中，混合口感细滑的优选酸奶，再加上水蜜桃味花朵行果冻颗粒。颜值超高，满分好喝。（饮用钱建议搅拌）图片仅供参考，请以实物为准，建议去餐后尽快食用', '纯牛奶、草莓风味饮料浓浆、樱花风味糖浆、桃味花形果冻、酸奶、搅打奶油（含樱花风味糖浆）');
INSERT INTO `goodsinfo` VALUES ('65', '榴莲腰子', 'Cherry Blossom', 'http://rhymin.cn:3000/images/coffee8.jpg', '瑞幸坚果', '奇味坚果', null, null, null, null, null, null, '12.50', '精选纯牛奶为低，草莓和樱花风味荣誉其中，混合口感细滑的优选酸奶，再加上水蜜桃味花朵行果冻颗粒。颜值超高，满分好喝。（饮用钱建议搅拌）图片仅供参考，请以实物为准，建议去餐后尽快食用', '纯牛奶、草莓风味饮料浓浆、樱花风味糖浆、桃味花形果冻、酸奶、搅打奶油（含樱花风味糖浆）');
INSERT INTO `goodsinfo` VALUES ('66', '榴莲腰子', 'Cherry Blossom', 'http://rhymin.cn:3000/images/coffee8.jpg', '瑞幸坚果', '奇味坚果', null, null, null, null, null, null, '12.50', '精选纯牛奶为低，草莓和樱花风味荣誉其中，混合口感细滑的优选酸奶，再加上水蜜桃味花朵行果冻颗粒。颜值超高，满分好喝。（饮用钱建议搅拌）图片仅供参考，请以实物为准，建议去餐后尽快食用', '纯牛奶、草莓风味饮料浓浆、樱花风味糖浆、桃味花形果冻、酸奶、搅打奶油（含樱花风味糖浆）');
INSERT INTO `goodsinfo` VALUES ('67', '榴莲腰子', 'Cherry Blossom', 'http://rhymin.cn:3000/images/coffee8.jpg', '瑞幸坚果', '奇味坚果', null, null, null, null, null, null, '9.90', '精选纯牛奶为低，草莓和樱花风味荣誉其中，混合口感细滑的优选酸奶，再加上水蜜桃味花朵行果冻颗粒。颜值超高，满分好喝。（饮用钱建议搅拌）图片仅供参考，请以实物为准，建议去餐后尽快食用', '纯牛奶、草莓风味饮料浓浆、樱花风味糖浆、桃味花形果冻、酸奶、搅打奶油（含樱花风味糖浆）');
INSERT INTO `goodsinfo` VALUES ('68', '榴莲腰子', 'Cherry Blossom', 'http://rhymin.cn:3000/images/coffee8.jpg', '瑞幸坚果', '奇味坚果', null, null, null, null, null, null, '9.90', '精选纯牛奶为低，草莓和樱花风味荣誉其中，混合口感细滑的优选酸奶，再加上水蜜桃味花朵行果冻颗粒。颜值超高，满分好喝。（饮用钱建议搅拌）图片仅供参考，请以实物为准，建议去餐后尽快食用', '纯牛奶、草莓风味饮料浓浆、樱花风味糖浆、桃味花形果冻、酸奶、搅打奶油（含樱花风味糖浆）');
INSERT INTO `goodsinfo` VALUES ('69', '榴莲腰子', 'Cherry Blossom', 'http://rhymin.cn:3000/images/coffee8.jpg', '瑞幸坚果', '奇味坚果', null, null, null, null, null, null, '9.90', '精选纯牛奶为低，草莓和樱花风味荣誉其中，混合口感细滑的优选酸奶，再加上水蜜桃味花朵行果冻颗粒。颜值超高，满分好喝。（饮用钱建议搅拌）图片仅供参考，请以实物为准，建议去餐后尽快食用', '纯牛奶、草莓风味饮料浓浆、樱花风味糖浆、桃味花形果冻、酸奶、搅打奶油（含樱花风味糖浆）');
INSERT INTO `goodsinfo` VALUES ('70', '燕麦曲奇', 'Cherry Blossom', 'http://rhymin.cn:3000/images/coffee1.jpg', '幸运小食', 'null', null, null, null, null, null, null, '4.50', '精选纯牛奶为低，草莓和樱花风味荣誉其中，混合口感细滑的优选酸奶，再加上水蜜桃味花朵行果冻颗粒。颜值超高，满分好喝。（饮用钱建议搅拌）图片仅供参考，请以实物为准，建议去餐后尽快食用', '纯牛奶、草莓风味饮料浓浆、樱花风味糖浆、桃味花形果冻、酸奶、搅打奶油（含樱花风味糖浆）');
INSERT INTO `goodsinfo` VALUES ('71', '燕麦曲奇', 'Cherry Blossom', 'http://rhymin.cn:3000/images/coffee1.jpg', '幸运小食', 'null', null, null, null, null, null, null, '4.50', '精选纯牛奶为低，草莓和樱花风味荣誉其中，混合口感细滑的优选酸奶，再加上水蜜桃味花朵行果冻颗粒。颜值超高，满分好喝。（饮用钱建议搅拌）图片仅供参考，请以实物为准，建议去餐后尽快食用', '纯牛奶、草莓风味饮料浓浆、樱花风味糖浆、桃味花形果冻、酸奶、搅打奶油（含樱花风味糖浆）');
INSERT INTO `goodsinfo` VALUES ('72', '燕麦曲奇', 'Cherry Blossom', 'http://rhymin.cn:3000/images/goods1.jpg', '幸运小食', 'null', null, null, null, null, null, null, '4.50', '精选纯牛奶为低，草莓和樱花风味荣誉其中，混合口感细滑的优选酸奶，再加上水蜜桃味花朵行果冻颗粒。颜值超高，满分好喝。（饮用钱建议搅拌）图片仅供参考，请以实物为准，建议去餐后尽快食用', '纯牛奶、草莓风味饮料浓浆、樱花风味糖浆、桃味花形果冻、酸奶、搅打奶油（含樱花风味糖浆）');
INSERT INTO `goodsinfo` VALUES ('73', '燕麦曲奇', 'Cherry Blossom', 'http://rhymin.cn:3000/images/goods1.jpg', '幸运小食', 'null', null, null, null, null, null, null, '4.50', '精选纯牛奶为低，草莓和樱花风味荣誉其中，混合口感细滑的优选酸奶，再加上水蜜桃味花朵行果冻颗粒。颜值超高，满分好喝。（饮用钱建议搅拌）图片仅供参考，请以实物为准，建议去餐后尽快食用', '纯牛奶、草莓风味饮料浓浆、樱花风味糖浆、桃味花形果冻、酸奶、搅打奶油（含樱花风味糖浆）');
INSERT INTO `goodsinfo` VALUES ('74', '燕麦曲奇', 'Cherry Blossom', 'http://rhymin.cn:3000/images/coffee1.jpg', '幸运小食', 'null', null, null, null, null, null, null, '4.50', '精选纯牛奶为低，草莓和樱花风味荣誉其中，混合口感细滑的优选酸奶，再加上水蜜桃味花朵行果冻颗粒。颜值超高，满分好喝。（饮用钱建议搅拌）图片仅供参考，请以实物为准，建议去餐后尽快食用', '纯牛奶、草莓风味饮料浓浆、樱花风味糖浆、桃味花形果冻、酸奶、搅打奶油（含樱花风味糖浆）');
INSERT INTO `goodsinfo` VALUES ('75', '燕麦曲奇', 'Cherry Blossom', 'http://rhymin.cn:3000/images/goods1.jpg', '幸运小食', 'null', null, null, null, null, null, null, '4.50', '精选纯牛奶为低，草莓和樱花风味荣誉其中，混合口感细滑的优选酸奶，再加上水蜜桃味花朵行果冻颗粒。颜值超高，满分好喝。（饮用钱建议搅拌）图片仅供参考，请以实物为准，建议去餐后尽快食用', '纯牛奶、草莓风味饮料浓浆、樱花风味糖浆、桃味花形果冻、酸奶、搅打奶油（含樱花风味糖浆）');
INSERT INTO `goodsinfo` VALUES ('76', '燕麦曲奇', 'Cherry Blossom', 'http://rhymin.cn:3000/images/coffee1.jpg', '幸运小食', 'null', null, null, null, null, null, null, '4.50', '精选纯牛奶为低，草莓和樱花风味荣誉其中，混合口感细滑的优选酸奶，再加上水蜜桃味花朵行果冻颗粒。颜值超高，满分好喝。（饮用钱建议搅拌）图片仅供参考，请以实物为准，建议去餐后尽快食用', '纯牛奶、草莓风味饮料浓浆、樱花风味糖浆、桃味花形果冻、酸奶、搅打奶油（含樱花风味糖浆）');
INSERT INTO `goodsinfo` VALUES ('77', '燕麦曲奇', 'Cherry Blossom', 'http://rhymin.cn:3000/images/goods1.jpg', '幸运小食', 'null', null, null, null, null, null, null, '4.50', '精选纯牛奶为低，草莓和樱花风味荣誉其中，混合口感细滑的优选酸奶，再加上水蜜桃味花朵行果冻颗粒。颜值超高，满分好喝。（饮用钱建议搅拌）图片仅供参考，请以实物为准，建议去餐后尽快食用', '纯牛奶、草莓风味饮料浓浆、樱花风味糖浆、桃味花形果冻、酸奶、搅打奶油（含樱花风味糖浆）');
INSERT INTO `goodsinfo` VALUES ('78', '燕麦曲奇', 'Cherry Blossom', 'http://rhymin.cn:3000/images/coffee1.jpg', '幸运小食', 'null', null, null, null, null, null, null, '4.50', '精选纯牛奶为低，草莓和樱花风味荣誉其中，混合口感细滑的优选酸奶，再加上水蜜桃味花朵行果冻颗粒。颜值超高，满分好喝。（饮用钱建议搅拌）图片仅供参考，请以实物为准，建议去餐后尽快食用', '纯牛奶、草莓风味饮料浓浆、樱花风味糖浆、桃味花形果冻、酸奶、搅打奶油（含樱花风味糖浆）');
INSERT INTO `goodsinfo` VALUES ('79', '燕麦曲奇', 'Cherry Blossom', 'http://rhymin.cn:3000/images/coffee1.jpg', '幸运小食', 'null', null, null, null, null, null, null, '4.50', '精选纯牛奶为低，草莓和樱花风味荣誉其中，混合口感细滑的优选酸奶，再加上水蜜桃味花朵行果冻颗粒。颜值超高，满分好喝。（饮用钱建议搅拌）图片仅供参考，请以实物为准，建议去餐后尽快食用', '纯牛奶、草莓风味饮料浓浆、樱花风味糖浆、桃味花形果冻、酸奶、搅打奶油（含樱花风味糖浆）');

-- ----------------------------
-- Table structure for myorder
-- ----------------------------
DROP TABLE IF EXISTS `myorder`;
CREATE TABLE `myorder` (
  `userId` varchar(255) NOT NULL,
  `orderId` int(11) NOT NULL AUTO_INCREMENT,
  `orderGoods` varchar(255) NOT NULL,
  `discountPrice` varchar(10) DEFAULT '',
  `payPrice` double(10,2) DEFAULT NULL,
  `payStyle` varchar(255) DEFAULT NULL,
  `payState` varchar(255) DEFAULT NULL,
  `getWay` varchar(255) DEFAULT NULL,
  `storeId` int(11) DEFAULT NULL,
  `siteId` int(11) DEFAULT NULL,
  PRIMARY KEY (`orderId`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of myorder
-- ----------------------------
INSERT INTO `myorder` VALUES ('1', '1', '3*2,14*1', '5', '46.00', '微信支付', '已完成', '自取', '1', null);
INSERT INTO `myorder` VALUES ('1', '2', '20*1,45*1', '3', '30.00', '微信支付', '进行中', '外送', null, '1');
INSERT INTO `myorder` VALUES ('18', '6', '20*1,3*2', '5', '50.00', '微信支付', '进行中', '自取', '1', null);
INSERT INTO `myorder` VALUES ('18', '8', '20*1,3*2', '50%', '50.00', '微信支付', '进行中', '自取', '1', null);
INSERT INTO `myorder` VALUES ('18', '9', '20*1,3*2', '20', '50.00', '微信支付', '进行中', '自取', '1', null);
INSERT INTO `myorder` VALUES ('1', '10', '21*1', '50%', '15.00', '微信支付', '进行中', '自取', '1', null);
INSERT INTO `myorder` VALUES ('1', '11', '37*6', '50%', '54.00', '微信支付', '进行中', '自取', '1', null);
INSERT INTO `myorder` VALUES ('19', '14', '20*1,3*2', '20', '50.00', '微信支付', '进行中', '自取', '1', null);
INSERT INTO `myorder` VALUES ('19', '15', '20*1,3*2', '50%', '50.00', '微信支付', '进行中', '自取', '1', null);
INSERT INTO `myorder` VALUES ('1', '16', '52*1', '50%', '15.40', '微信支付', '进行中', '自取', '1', null);
INSERT INTO `myorder` VALUES ('1', '17', '51*667', '50%', '12006.00', '微信支付', '进行中', '自取', '1', null);
INSERT INTO `myorder` VALUES ('1', '18', '53*1', '50%', '18.00', '微信支付', '进行中', '自取', '1', null);
INSERT INTO `myorder` VALUES ('1', '19', '55*1', '50%', '15.40', '微信支付', '进行中', '自取', '1', null);
INSERT INTO `myorder` VALUES ('1', '20', '55*1', '50%', '15.40', '微信支付', '进行中', '自取', '1', null);
INSERT INTO `myorder` VALUES ('1', '21', '55*1', '50%', '15.40', '微信支付', '进行中', '自取', '1', null);
INSERT INTO `myorder` VALUES ('1', '22', '54*1', '50%', '15.40', '微信支付', '进行中', '自取', '1', null);
INSERT INTO `myorder` VALUES ('1', '23', '54*1', '50%', '15.40', '微信支付', '进行中', '自取', '1', null);
INSERT INTO `myorder` VALUES ('1', '24', '59*1', '50%', '15.00', '微信支付', '进行中', '自取', '1', null);
INSERT INTO `myorder` VALUES ('1', '25', '58*1', '50%', '15.40', '微信支付', '进行中', '自取', '1', null);
INSERT INTO `myorder` VALUES ('1', '26', '61*2', '50%', '9.00', '微信支付', '进行中', '自取', '1', null);
INSERT INTO `myorder` VALUES ('1', '27', '62*3', '50%', '46.20', '微信支付', '进行中', '自取', '1', null);
INSERT INTO `myorder` VALUES ('1', '28', '63*1', '50%', '12.50', '微信支付', '进行中', '自取', '1', null);

-- ----------------------------
-- Table structure for shopcar
-- ----------------------------
DROP TABLE IF EXISTS `shopcar`;
CREATE TABLE `shopcar` (
  `userId` varchar(255) NOT NULL,
  `goodsId` int(11) NOT NULL,
  `shopId` int(11) NOT NULL AUTO_INCREMENT,
  `goodsNum` int(11) NOT NULL,
  `checked` int(1) NOT NULL DEFAULT '1',
  `standard` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`shopId`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shopcar
-- ----------------------------
INSERT INTO `shopcar` VALUES ('26', '3', '46', '2', '1', '1,1,0');
INSERT INTO `shopcar` VALUES ('1', '70', '64', '2', '1', '0,0,0');

-- ----------------------------
-- Table structure for store
-- ----------------------------
DROP TABLE IF EXISTS `store`;
CREATE TABLE `store` (
  `firstLetter` varchar(255) DEFAULT NULL,
  `county` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `storeId` int(11) NOT NULL AUTO_INCREMENT,
  `storeName` varchar(255) DEFAULT NULL,
  `storeAddress` varchar(255) DEFAULT NULL,
  `timeAround` varchar(255) DEFAULT NULL,
  `storeState` varchar(255) DEFAULT NULL,
  `longitude` double DEFAULT NULL,
  `latitude` double DEFAULT NULL,
  `imgSrcs` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`storeId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of store
-- ----------------------------
INSERT INTO `store` VALUES ('C', '金堂', '成都', '1', '金堂万达广场店(No.A0067)', '金堂县万泰街6号万达广场四层4053A商铺', '10：00-21:00', '营业', '104.43', '30.85', 'http://www.rhymin.cn:3000/images/store1.jpg,http://www.rhymin.cn:3000/images/store2.jpg,http://www.rhymin.cn:3000/images/store3.jpg');
INSERT INTO `store` VALUES ('C', '武侯区', '成都', '2', '世外桃源店(No.0273)', '武侯区科北华路69号世外桃源广场B座一层大堂', '07:00-20:00', '休息中', '104.07688016', '30.63038169', 'http://www.rhymin.cn:3000/images/store4.jpg,http://www.rhymin.cn:3000/images/store5.jpg,http://www.rhymin.cn:3000/images/store6.jpg');
INSERT INTO `store` VALUES ('C', '青白江区', '成都', '3', '悦荟时代广场店', '青白江区大弯同华大道199号悦荟时代广场10栋1单元一层18号', '08:00-21:00', '营业', '104.27338567', '30.88492662', 'http://www.rhymin.cn:3000/images/store7.jpg,http://www.rhymin.cn:3000/images/store8.jpg,http://www.rhymin.cn:3000/images/store9.jpg');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `userId` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `tel` varchar(11) DEFAULT NULL,
  `sex` varchar(4) DEFAULT NULL,
  PRIMARY KEY (`userId`),
  UNIQUE KEY `NewIndex1` (`tel`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '小丸子', '13147483647', '女');
INSERT INTO `user` VALUES ('12', '啊哈', '12347568141', '男');
INSERT INTO `user` VALUES ('14', '啊哈', '12347568142', '男');
INSERT INTO `user` VALUES ('16', '啊哈', '12347568147', '男');
INSERT INTO `user` VALUES ('17', '啊哈', '12347568148', '男');
INSERT INTO `user` VALUES ('18', '李四', '12457812354', '男');
INSERT INTO `user` VALUES ('19', '李四', '12457812359', '男');
INSERT INTO `user` VALUES ('21', '李四', '12457812399', '男');
INSERT INTO `user` VALUES ('22', '李四', '12457812390', '男');
INSERT INTO `user` VALUES ('23', '陈凤啊', '13455667788', '女');
INSERT INTO `user` VALUES ('26', '阿呆', '18381671965', '男');
