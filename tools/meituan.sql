/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50711
Source Host           : localhost:3306
Source Database       : meituan

Target Server Type    : MYSQL
Target Server Version : 50711
File Encoding         : 65001

Date: 2018-09-28 17:42:19
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for address
-- ----------------------------
DROP TABLE IF EXISTS `address`;
CREATE TABLE `address` (
  `aid` varchar(255) DEFAULT NULL,
  `addr` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `gender` int(2) DEFAULT NULL,
  `uid` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of address
-- ----------------------------
INSERT INTO `address` VALUES ('ef56c4f6-bdaf-11e8-8035-00ac0569eb69', '北湖北路桃花源小区', '陈', '18677180030', '1', 'oxpr94zLNFnarIE_uAFmZhmO-Yzo');
INSERT INTO `address` VALUES ('ce61612c-be79-11e8-8035-00ac0569eb69', '大学东路77号', '张三', '13877514785', '0', 'oxpr94zLNFnarIE_uAFmZhmO-Yzo');
INSERT INTO `address` VALUES ('4e21f53d-be7d-11e8-8035-00ac0569eb69', '秀灵路东一里57号', '李四', '18677142555', '0', 'oxpr94zLNFnarIE_uAFmZhmO-Yzo');
INSERT INTO `address` VALUES ('221a30e0-be7e-11e8-8035-00ac0569eb69', '兴宁区朝阳路126号', '梁', '18677185499', '1', 'oxpr94zLNFnarIE_uAFmZhmO-Yzo');

-- ----------------------------
-- Table structure for orderlist
-- ----------------------------
DROP TABLE IF EXISTS `orderlist`;
CREATE TABLE `orderlist` (
  `id` varchar(255) DEFAULT NULL,
  `sid` varchar(255) DEFAULT NULL,
  `sname` varchar(255) DEFAULT NULL,
  `slogo` varchar(255) DEFAULT NULL,
  `uid` varchar(255) DEFAULT NULL,
  `uname` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=REDUNDANT;

-- ----------------------------
-- Records of orderlist
-- ----------------------------

-- ----------------------------
-- Table structure for orderprod
-- ----------------------------
DROP TABLE IF EXISTS `orderprod`;
CREATE TABLE `orderprod` (
  `oid` varchar(255) DEFAULT NULL,
  `pid` varchar(255) DEFAULT NULL,
  `pname` varchar(255) DEFAULT NULL,
  `pnum` int(11) DEFAULT NULL,
  `uprice` int(11) DEFAULT NULL,
  `tprice` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orderprod
-- ----------------------------

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `id` varchar(255) DEFAULT NULL,
  `pname` varchar(255) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `imageUrl` varchar(255) DEFAULT NULL,
  `plike` int(11) DEFAULT NULL,
  `sold` int(11) DEFAULT NULL,
  `sid` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `describe` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES ('31d3dcdf-bbdf-11e8-8035-00ac0569eb69', '凌波鱼', '88', 'https://p1.meituan.net/wmproduct/310d35d321816849f5b1297e3e7a774c340336.png', '5', '63', '790a1336-bb24-11e8-8035-00ac0569eb69', 'hot', null);
INSERT INTO `product` VALUES ('9c0e8a37-bc7c-11e8-8035-00ac0569eb69', '莴笋', '8', 'https://p1.meituan.net/wmproduct/1723cabba6093d2013efebe20259e910254453.jpg', '5', '25', '790a1336-bb24-11e8-8035-00ac0569eb69', 'hot', null);
INSERT INTO `product` VALUES ('ab5db82c-bc7c-11e8-8035-00ac0569eb69', '金针菇', '8', 'https://p1.meituan.net/wmproduct/50f03c348f73ed95b46d002d5d032175300561.jpg', '2', '33', '790a1336-bb24-11e8-8035-00ac0569eb69', 'hot', null);
INSERT INTO `product` VALUES ('ab5ff4ab-bc7c-11e8-8035-00ac0569eb69', '腐竹', '10', 'https://p0.meituan.net/wmproduct/6a887714bd33c117a3d928db069cc23b290264.jpg', '32', '66', '790a1336-bb24-11e8-8035-00ac0569eb69', 'hot', null);
INSERT INTO `product` VALUES ('b2f81f96-bc7c-11e8-8035-00ac0569eb69', '重庆豆花烤鱼', '79', 'https://p0.meituan.net/wmproduct/9e16b290b668ce19a0ffdf54e3525c4f224799.jpg', '10', '42', '790a1336-bb24-11e8-8035-00ac0569eb69', 'hot', null);
INSERT INTO `product` VALUES ('eb323200-bc7d-11e8-8035-00ac0569eb69', '酱香鱼', '66', 'https://img.meituan.net/100.100.90/wmproduct/83bc6396bd2934058c0b5f8165604029208883.jpg', '7', '1', '790a1336-bb24-11e8-8035-00ac0569eb69', 'intro', null);
INSERT INTO `product` VALUES ('fc3bbd92-bc7d-11e8-8035-00ac0569eb69', '重庆鸡丝凉面', '13', 'https://img.meituan.net/100.100.90/wmproduct/a8516559884d0ce5f469b8403cecd4e4118746.jpg', '1', '2', '790a1336-bb24-11e8-8035-00ac0569eb69', 'intro', null);
INSERT INTO `product` VALUES ('0f5998e8-bc7e-11e8-8035-00ac0569eb69', '油焖小龙虾', '58', 'https://img.meituan.net/100.100.90/wmproduct/19beb81d5f7de3e3cc16fe6fa5d684e41029225.png', '9', '12', '790a1336-bb24-11e8-8035-00ac0569eb69', 'intro', null);
INSERT INTO `product` VALUES ('90e43ceb-bc7e-11e8-8035-00ac0569eb69', '人气品质家庭餐', '198', 'https://img.meituan.net/100.100.90/wmproduct/fba2c2da180077fe34299eed82c7709a348142.png', '10', '12', '790a1336-bb24-11e8-8035-00ac0569eb69', 'comb', '清江鱼+黄金组合+成都棒棒鸡+酱腌萝卜皮+可乐2瓶+雪碧2瓶');
INSERT INTO `product` VALUES ('aa6470e5-bc7e-11e8-8035-00ac0569eb69', '超满足双人餐', '158', 'https://img.meituan.net/100.100.90/wmproduct/f07b65aa4bb589d7e5b2eeec8dbc6fe6379707.png', '14', '16', '790a1336-bb24-11e8-8035-00ac0569eb69', 'comb', '凌波鱼+黄金组合+重庆鸡丝凉面+可乐2瓶');
INSERT INTO `product` VALUES ('c3fb2317-c16e-11e8-8035-00ac0569eb69', '经典麦辣鸡腿汉堡', '20', 'https://p1.meituan.net/xianfu/103a4ac1643880a6ec838edba9e4ca4f30931.jpg', '1', '47', '94573372-bce1-11e8-8035-00ac0569eb69', 'hot', '1个经典麦辣鸡腿汉堡 主要原料：面包、鸡肉、生菜、风味酱');
INSERT INTO `product` VALUES ('ef4c27c6-c16e-11e8-8035-00ac0569eb69', '原味板烧鸡腿堡', '20', 'https://p0.meituan.net/xianfu/93afba9cc94f3d282ea751227c93059523109.jpg', '4', '41', '94573372-bce1-11e8-8035-00ac0569eb69', 'hot', '1个原味板烧鸡腿堡 主要原料：面包、鸡肉、生菜、风味酱');
INSERT INTO `product` VALUES ('199d4903-c16f-11e8-8035-00ac0569eb69', '巨无霸', '23', 'https://p1.meituan.net/xianfu/d08c27605470fe7b14866e65328b36a753846.jpg', '10', '63', '94573372-bce1-11e8-8035-00ac0569eb69', 'hot', '1个巨无霸 主要原料：面包、牛肉、生菜、洋葱、腌黄瓜、芝士、风味酱');
INSERT INTO `product` VALUES ('6489bee0-c16f-11e8-8035-00ac0569eb69', '黄金脆薯格', '13', 'https://p1.meituan.net/xianfu/d1f880b00b1f108c48d8362495b9281827038.jpg', '1', '5', '94573372-bce1-11e8-8035-00ac0569eb69', 'intro', '');
INSERT INTO `product` VALUES ('a0292217-c16f-11e8-8035-00ac0569eb69', '麦趣鸡盒', '92', 'https://p1.meituan.net/xianfu/26af2cc661f33c8083a49f3eecbcbfc724334.jpg', '7', '14', '94573372-bce1-11e8-8035-00ac0569eb69', 'intro', '那么大鸡排（原味）1份 十 香骨鸡腿3个 十 麦辣鸡翅6块 十 中可乐2杯');
INSERT INTO `product` VALUES ('c38a1f01-c16f-11e8-8035-00ac0569eb69', '麦辣鸡腿2块', '92', 'https://p0.meituan.net/xianfu/e16a10cdd924c6ca4ec3c70ff14e390a21530.jpg', '11', '14', '94573372-bce1-11e8-8035-00ac0569eb69', 'intro', '2块麦辣鸡翅 主要原料：鸡肉，腌料，裹粉，油');
INSERT INTO `product` VALUES ('efae9f3f-c16f-11e8-8035-00ac0569eb69', '麦乐家庭套餐', '83', 'https://p0.meituan.net/xianfu/8744f3d63945798f3141096a047a7aa235146.jpg', '1', '14', '94573372-bce1-11e8-8035-00ac0569eb69', 'comb', '原味板烧鸡腿堡1个 麦辣鸡腿堡1个 麦辣鸡翅4块 美汁源阳光橙1杯 中可乐1杯 小玉米杯1个 薯格1份 开心乐园餐（牛奶） 开心乐园餐（小玉米） 开心乐园餐（麦乐鸡） 免费玩具');
INSERT INTO `product` VALUES ('2488bfdd-c170-11e8-8035-00ac0569eb69', '明星三人餐', '150', 'https://p0.meituan.net/xianfu/0f866050427580c28f7b486519d8310726610.jpg', '2', '8', '94573372-bce1-11e8-8035-00ac0569eb69', 'comb', '巨无霸1个+麦辣鸡腿堡1个+麦香鱼汉堡1个+那么大鲜柠特饮（可乐）1杯+那么大鲜柠特饮（柠檬茶）1杯+甜柚柚水果茶1杯+黄金脆薯格1份+中薯条1份+菠萝派3份');
INSERT INTO `product` VALUES ('f3b24f20-c170-11e8-8035-00ac0569eb69', '老北京鸡肉卷', '12', 'https://p1.meituan.net/xianfu/a732f6934b725a9679e43637d2b1b30736864.jpg', '6', '28', '5397e63a-bce1-11e8-8035-00ac0569eb69', 'hot', '选用无骨鸡腿柳条、搭配传统甜面酱和新鲜爽脆黄瓜，酱香浓郁的老北京味。,主要原料:面饼，鸡腿肉条，黄瓜段，京葱丝');
INSERT INTO `product` VALUES ('234dd94d-c171-11e8-8035-00ac0569eb69', '葡式蛋挞（1只）', '8', 'https://p1.meituan.net/xianfu/fbcdf3a30990f742903881a50471231139936.jpg', '1', '3', '5397e63a-bce1-11e8-8035-00ac0569eb69', 'hot', '');
INSERT INTO `product` VALUES ('3f85261f-c171-11e8-8035-00ac0569eb69', '九珍果汁', '11', 'https://p0.meituan.net/xianfu/b678fa9123c558c11935ebf8191720b036864.jpg', '1', '9', '5397e63a-bce1-11e8-8035-00ac0569eb69', 'hot', '');
INSERT INTO `product` VALUES ('5bbcd6d8-c171-11e8-8035-00ac0569eb69', '香辣鸡腿堡', '18', 'https://p1.meituan.net/xianfu/926ee3f12a5d53f68de435d8724aea8d36864.jpg', '2', '11', '5397e63a-bce1-11e8-8035-00ac0569eb69', 'intro', '');
INSERT INTO `product` VALUES ('84e5e6e6-c171-11e8-8035-00ac0569eb69', '奥尔良烤翅', '13', 'https://p1.meituan.net/xianfu/ef6f0d22421cc2efea895da79d407a49129024.jpg', '2', '16', '5397e63a-bce1-11e8-8035-00ac0569eb69', 'intro', '');
INSERT INTO `product` VALUES ('c1c6f755-c171-11e8-8035-00ac0569eb69', '香辣鸡腿堡土豆泥套餐', '39', 'https://p0.meituan.net/xianfu/5b4853f070b049cb70fa24505cffdfff36864.jpg', '1', '5', '5397e63a-bce1-11e8-8035-00ac0569eb69', 'comb', '香辣鸡腿堡1个+醇香土豆泥1份+黄金鸡块（5块）+九珍果汁饮料1杯');
INSERT INTO `product` VALUES ('e758118a-c171-11e8-8035-00ac0569eb69', '老北京卷土豆泥套餐', '39', 'https://p1.meituan.net/xianfu/eb8e6d11c8267a737de86d0dc4a768a234816.jpg', '1', '9', '5397e63a-bce1-11e8-8035-00ac0569eb69', 'comb', '老北京鸡肉卷1个+醇香土豆泥1份+黄金鸡块（5块）+九珍果汁饮料1杯');

-- ----------------------------
-- Table structure for store
-- ----------------------------
DROP TABLE IF EXISTS `store`;
CREATE TABLE `store` (
  `id` varchar(255) DEFAULT NULL,
  `sname` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `sold` varchar(255) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `speed` int(11) DEFAULT NULL,
  `psprice` int(11) DEFAULT NULL,
  `qsprice` int(11) DEFAULT NULL,
  `distance` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of store
-- ----------------------------
INSERT INTO `store` VALUES ('790a1336-bb24-11e8-8035-00ac0569eb69', '探鱼', '安吉万达3F10', '11', 'http://p1.meituan.net/200.0/deal/765b3c54939c85ec5caee12d94ffa9e524962.jpg@126_0_388_388a%7C267h_267w_2e_100Q', '30', '5', '80', '1000');
INSERT INTO `store` VALUES ('5397e63a-bce1-11e8-8035-00ac0569eb69', '肯德基', '友爱北路21号', '45', '//p0.meituan.net/200.0/deal/1fa96e2c020ac9482b2a2f84886a204f12831.jpg@73_0_222_222a%7C267h_267w_2e_90Q', '35', '9', '0', '300');
INSERT INTO `store` VALUES ('94573372-bce1-11e8-8035-00ac0569eb69', '麦当劳', '秀灵路77号', '64', '//p0.meituan.net/200.0/deal/1739f050c16d73a3ce4b36e53121ed2a25492.jpg@267h_267w_2e_90Q', '40', '5', '20', '900');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `openid` varchar(255) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `phone` int(12) DEFAULT NULL,
  PRIMARY KEY (`openid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('oxpr94zLNFnarIE_uAFmZhmO-Yzo', 'someone', null);
