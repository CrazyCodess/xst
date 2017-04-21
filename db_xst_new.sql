/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50707
Source Host           : localhost:3306
Source Database       : db_xst_new

Target Server Type    : MYSQL
Target Server Version : 50707
File Encoding         : 65001

Date: 2017-04-21 23:03:12
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `lesson_category`
-- ----------------------------
DROP TABLE IF EXISTS `lesson_category`;
CREATE TABLE `lesson_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `doc_id` int(11) DEFAULT NULL COMMENT '文档ID，关联wl_lesson_document表的外键 id',
  `catname` varchar(30) DEFAULT NULL,
  `arrchildid` mediumtext,
  `parentid` int(100) DEFAULT NULL,
  `arrparentid` varchar(255) DEFAULT NULL,
  `child` int(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `doc_id` (`doc_id`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of lesson_category
-- ----------------------------
INSERT INTO `lesson_category` VALUES ('1', null, '学前', '5,6', '0', '0', '5');
INSERT INTO `lesson_category` VALUES ('2', null, '小学', '7,8,9', '0', '0', null);
INSERT INTO `lesson_category` VALUES ('3', null, '初中', '10,11,12,13,14,15,16,17,18', '0', '0', null);
INSERT INTO `lesson_category` VALUES ('4', null, '高中', '19,20,21,22,23,24,25,26,27,28', '0', '0', null);
INSERT INTO `lesson_category` VALUES ('5', null, '学前语文', null, '1', null, null);
INSERT INTO `lesson_category` VALUES ('6', null, ' 学前数学', null, '1', null, null);
INSERT INTO `lesson_category` VALUES ('7', null, '小学语文', null, '2', null, null);
INSERT INTO `lesson_category` VALUES ('8', null, '小学数学', null, '2', null, null);
INSERT INTO `lesson_category` VALUES ('9', null, '小学英语', null, '2', null, null);
INSERT INTO `lesson_category` VALUES ('10', null, '初中语文', null, '3', null, null);
INSERT INTO `lesson_category` VALUES ('11', null, '初中数学', null, '3', null, null);
INSERT INTO `lesson_category` VALUES ('12', null, '初中英语', null, '3', null, null);
INSERT INTO `lesson_category` VALUES ('13', null, '初中物理', null, '3', null, null);
INSERT INTO `lesson_category` VALUES ('14', null, '初中化学', null, '3', null, null);
INSERT INTO `lesson_category` VALUES ('15', null, '初中生物', null, '3', null, null);
INSERT INTO `lesson_category` VALUES ('16', null, '初中政治', null, '3', null, null);
INSERT INTO `lesson_category` VALUES ('17', null, '初中历史', null, '3', null, null);
INSERT INTO `lesson_category` VALUES ('18', null, '初中地理', null, '3', null, null);
INSERT INTO `lesson_category` VALUES ('19', null, '高中语文', null, '4', null, null);
INSERT INTO `lesson_category` VALUES ('20', null, '高中数学', null, '4', null, null);
INSERT INTO `lesson_category` VALUES ('21', null, '高中英语', null, '4', null, null);
INSERT INTO `lesson_category` VALUES ('22', null, '高中物理', null, '4', null, null);
INSERT INTO `lesson_category` VALUES ('23', null, '高中化学', null, '4', null, null);
INSERT INTO `lesson_category` VALUES ('24', null, '高中生物', null, '4', null, null);
INSERT INTO `lesson_category` VALUES ('25', null, '高中政治', null, '4', null, null);
INSERT INTO `lesson_category` VALUES ('26', null, '高中历史', null, '4', null, null);
INSERT INTO `lesson_category` VALUES ('27', null, '高中地理', null, '4', null, null);
INSERT INTO `lesson_category` VALUES ('28', null, '信息技术', null, '4', null, null);

-- ----------------------------
-- Table structure for `lesson_document`
-- ----------------------------
DROP TABLE IF EXISTS `lesson_document`;
CREATE TABLE `lesson_document` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '文档表ID（主键）',
  `doc_type` varchar(11) DEFAULT NULL COMMENT '文档类型：教案、课件、学案等',
  `file_name` varchar(255) DEFAULT NULL COMMENT '文件名',
  `file_ext` varchar(10) DEFAULT NULL COMMENT '扩展名,后缀名',
  `file_size` varchar(15) DEFAULT NULL,
  `file_path` varchar(200) DEFAULT NULL COMMENT '文件路径',
  `page_count` int(8) DEFAULT NULL COMMENT '页数',
  `downloads` int(8) DEFAULT NULL COMMENT '下载次数',
  `upload_time` int(11) DEFAULT NULL COMMENT '文档上传时间',
  `category_1_id` int(10) DEFAULT NULL,
  `category_2_id` int(10) DEFAULT NULL,
  `category_3_id` int(10) DEFAULT NULL,
  `category_4_id` int(10) DEFAULT NULL,
  `category_5_id` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=76 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of lesson_document
-- ----------------------------
INSERT INTO `lesson_document` VALUES ('1', '教案', '学前语文', '.txt', '20B', '/doc/学前', '8', '1', '1416498100', '1', '5', '1', '1', '1');
INSERT INTO `lesson_document` VALUES ('2', '课件', '学前数学', '.txt', '20B', '/doc/学前', '8', '2', '1416498100', '1', '6', '1', '1', '1');
INSERT INTO `lesson_document` VALUES ('3', '学案', '小学语文', '.txt', '12B', '/doc/小学', '9', '2', '1416498100', '2', '7', '1', '1', '1');
INSERT INTO `lesson_document` VALUES ('4', '学案', '小学数学', '.txt', '12B', '/doc/小学', '9', '2', '1416498100', '2', '8', '1', '1', '1');
INSERT INTO `lesson_document` VALUES ('5', '学案', '小学语文试卷', '.txt', '12B', '/doc/小学', '9', '2', '1416498100', '2', '7', '1', '1', '1');
INSERT INTO `lesson_document` VALUES ('6', '学案', '小学语文', '.txt', '12B', '/doc/小学', '9', '2', '1416498100', '2', '7', '1', '1', '1');
INSERT INTO `lesson_document` VALUES ('7', '课件', '小学英语', '.txt', '12B', '/doc/小学', '9', '2', '1416498100', '2', '9', '1', '1', '1');
INSERT INTO `lesson_document` VALUES ('8', '课件', '跟我一起学abcd', '.ppt', '12B', '/doc/小学', '9', '2', '1416498100', '2', '9', '1', '1', '1');
INSERT INTO `lesson_document` VALUES ('9', '课件', '初中语文', '.ppt', '12B', '/doc/初中', '9', '2', '1416498100', '3', '10', '1', '1', '1');
INSERT INTO `lesson_document` VALUES ('10', '课件', '从百草园到三味书屋', '.doc', '12B', '/doc/初中', '9', '2', '1416498100', '3', '10', '1', '1', '1');
INSERT INTO `lesson_document` VALUES ('11', '教案', '新建文本文档.txt', '.txt', '0B', '/doc/高中', '0', '0', '1416498100', '4', '19', '0', '0', '0');
INSERT INTO `lesson_document` VALUES ('12', '学案', 'README.md', '.md', '0B', '/doc/高中', '0', '0', '1416498100', '4', '25', '0', '0', '0');
INSERT INTO `lesson_document` VALUES ('17', '教案', 'Test1', '.java', '567B', '/doc/高中', '0', '0', '-1415676', '4', '22', '0', '0', '0');
INSERT INTO `lesson_document` VALUES ('18', '教案', 'eula.2052', '.txt', '3KB', '/doc/高中', '0', '0', '-1415573', '4', '22', '0', '0', '0');
INSERT INTO `lesson_document` VALUES ('19', '教案', 'route', '.cpp', '214B', '/doc/高中', '0', '0', '-1415398', '4', '26', '0', '0', '0');
INSERT INTO `lesson_document` VALUES ('20', '教案', 'route', '.cpp', '214B', '/doc/高中', '0', '0', '-1415184', '4', '26', '0', '0', '0');
INSERT INTO `lesson_document` VALUES ('21', '教案', 'log_network', '.txt', '217KB', '/doc/高中', '0', '0', '-1383316', '4', '21', '0', '0', '0');
INSERT INTO `lesson_document` VALUES ('22', '教案', '高中地理', '.txt', '4B', '/doc/高中', '0', '0', '1463673544', '4', '27', '0', '0', '0');
INSERT INTO `lesson_document` VALUES ('23', '教案', '高中地理', '.txt', '4B', '/doc/高中', '0', '0', '1463673546', '4', '27', '0', '0', '0');
INSERT INTO `lesson_document` VALUES ('24', '教案', '高中地理', '.txt', '4B', '/doc/高中', '0', '0', '1463673547', '4', '27', '0', '0', '0');
INSERT INTO `lesson_document` VALUES ('25', '教案', '高中地理', '.txt', '4B', '/doc/高中', '0', '0', '1463673548', '4', '27', '0', '0', '0');
INSERT INTO `lesson_document` VALUES ('26', '教案', '高中地理', '.txt', '4B', '/doc/高中', '0', '0', '1463673548', '4', '27', '0', '0', '0');
INSERT INTO `lesson_document` VALUES ('27', '教案', '高中历史', '.txt', '4B', '/doc/高中', '0', '0', '1463673766', '4', '26', '0', '0', '0');
INSERT INTO `lesson_document` VALUES ('28', '教案', '高中历史', '.txt', '4B', '/doc/高中', '0', '0', '1463673780', '4', '26', '0', '0', '0');
INSERT INTO `lesson_document` VALUES ('29', '教案', '高中历史', '.txt', '4B', '/doc/高中', '0', '0', '1463673781', '4', '26', '0', '0', '0');
INSERT INTO `lesson_document` VALUES ('30', '教案', '高中历史', '.txt', '4B', '/doc/高中', '0', '0', '1463673782', '4', '26', '0', '0', '0');
INSERT INTO `lesson_document` VALUES ('31', '教案', '高中历史', '.txt', '4B', '/doc/高中', '0', '0', '1463673782', '4', '26', '0', '0', '0');
INSERT INTO `lesson_document` VALUES ('32', '教案', '高中历史', '.txt', '4B', '/doc/高中', '0', '0', '1463673782', '4', '26', '0', '0', '0');
INSERT INTO `lesson_document` VALUES ('33', '教案', '高中历史', '.txt', '4B', '/doc/高中', '0', '0', '1463673782', '4', '26', '0', '0', '0');
INSERT INTO `lesson_document` VALUES ('34', '教案', '高中历史', '.txt', '4B', '/doc/高中', '0', '0', '1463673782', '4', '26', '0', '0', '0');
INSERT INTO `lesson_document` VALUES ('35', '教案', '高中历史', '.txt', '4B', '/doc/高中', '0', '0', '1463673783', '4', '26', '0', '0', '0');
INSERT INTO `lesson_document` VALUES ('36', '学案', '高中历史', '.txt', '4B', '/doc/高中', '0', '0', '1463673838', '4', '26', '0', '0', '0');
INSERT INTO `lesson_document` VALUES ('37', '学案', '高中历史', '.txt', '4B', '/doc/高中', '0', '0', '1463673840', '4', '26', '0', '0', '0');
INSERT INTO `lesson_document` VALUES ('38', '学案', '高中历史', '.txt', '4B', '/doc/高中', '0', '0', '1463673847', '4', '26', '0', '0', '0');
INSERT INTO `lesson_document` VALUES ('39', '学案', '高中历史', '.txt', '4B', '/doc/高中', '0', '0', '1463673868', '4', '26', '0', '0', '0');
INSERT INTO `lesson_document` VALUES ('40', '学案', '高中化学', '.txt', '4B', '/doc/高中', '0', '0', '1463674172', '4', '23', '0', '0', '0');
INSERT INTO `lesson_document` VALUES ('41', '教案', '摩尔定理', '.txt', '4B', '/doc/高中', '0', '0', '1463674320', '4', '23', '0', '0', '0');
INSERT INTO `lesson_document` VALUES ('42', '教案', '摩尔定理', '.txt', '4B', '/doc/高中', '0', '0', '1463674530', '4', '23', '0', '0', '0');
INSERT INTO `lesson_document` VALUES ('60', '课件', '初中政治', '.txt', '4B', '/doc/初中', '0', '0', '1463717319', '3', '16', '0', '0', '0');
INSERT INTO `lesson_document` VALUES ('61', '学案', '初中政治', '.txt', '4B', '/doc/初中', '0', '0', '1463717608', '3', '16', '0', '0', '0');
INSERT INTO `lesson_document` VALUES ('62', '教案', '初中政治', '.txt', '4B', '/doc/初中', '0', '0', '1463717681', '3', '16', '0', '0', '0');
INSERT INTO `lesson_document` VALUES ('68', '教案', 'abcdefg', '.ppt', '4B', '/doc/学前', '0', '0', '1463719022', '1', '5', '0', '0', '0');
INSERT INTO `lesson_document` VALUES ('69', '教案', 'abcdefg', '.ppt', '4B', '/doc/学前', '0', '0', '1463719099', '1', '5', '0', '0', '0');
INSERT INTO `lesson_document` VALUES ('70', '课件', 'abcdefg', '.ppt', '4B', '/doc/小学', '0', '0', '1463719528', '2', '9', '0', '0', '0');
INSERT INTO `lesson_document` VALUES ('71', '课件', 'abcdefg', '.ppt', '4B', '/doc/小学', '0', '0', '1463719818', '2', '9', '0', '0', '0');
INSERT INTO `lesson_document` VALUES ('72', '课件', 'abcdefg', '.ppt', '4B', '/doc/小学', '0', '0', '1463719926', '2', '9', '0', '0', '0');
INSERT INTO `lesson_document` VALUES ('73', '课件', 'abcdefg', '.ppt', '4B', '/doc/小学', '0', '0', '1463720230', '2', '9', '0', '0', '0');
INSERT INTO `lesson_document` VALUES ('74', '学案', '初中生物', '.txt', '1KB', '/doc/初中', '0', '0', '1463754372', '3', '15', '0', '0', '0');
INSERT INTO `lesson_document` VALUES ('75', '学案', '初中生物', '.txt', '1KB', '/doc/初中', '0', '0', '1463755368', '3', '15', '0', '0', '0');

-- ----------------------------
-- Table structure for `v9_admin`
-- ----------------------------
DROP TABLE IF EXISTS `v9_admin`;
CREATE TABLE `v9_admin` (
  `userid` mediumint(6) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(32) DEFAULT NULL,
  `roleid` smallint(5) DEFAULT '0',
  `encrypt` varchar(6) DEFAULT NULL,
  `lastloginip` varchar(15) DEFAULT NULL,
  `lastlogintime` int(10) unsigned DEFAULT '0',
  `email` varchar(40) DEFAULT NULL,
  `realname` varchar(50) NOT NULL DEFAULT '',
  `card` varchar(255) NOT NULL,
  `lang` varchar(6) NOT NULL,
  PRIMARY KEY (`userid`),
  KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of v9_admin
-- ----------------------------
INSERT INTO `v9_admin` VALUES ('1', 'xiaobo$2008', 'a35749217b740fd6b13874f8545f5cc4', '1', 'LeEdi5', '123.119.231.7', '1449467442', 'xiaobo1999@163.com', '肖博', '', '');
INSERT INTO `v9_admin` VALUES ('12', 'xst001', '0b672dbef65901b4c9de1ed75fca63fd', '7', 'PShhqa', '221.204.184.246', '1449628980', '267228628@qq.com', '整理好 ', '', '');
INSERT INTO `v9_admin` VALUES ('16', 'mingzhehao1', 'f044486e7f823c8f39b92851a4bfbae9', '1', 'Qb8ymP', '61.148.75.238', '1386928872', '190833714@qq.com', 'MR云', '', '');
INSERT INTO `v9_admin` VALUES ('13', 'xst002', '8fb42efb6b9290b8d77f1a15558477dd', '7', 'DLxRJ5', '221.204.162.170', '1452824393', '267228620@qq.com', '小姚', '', '');
INSERT INTO `v9_admin` VALUES ('14', 'xst003', '7f14e893db5d2c7f80cfb0416e2ad063', '7', 'hNkbi6', '60.10.69.164', '1402386508', '267228605@qq.com', '邱辉', '', '');
INSERT INTO `v9_admin` VALUES ('15', 'xst005', '36afa247d567e3a1d67245631723ec5e', '7', 'tqUa4e', '60.10.69.164', '1402740774', '267228623@qq.com', '待整理', '', '');
INSERT INTO `v9_admin` VALUES ('18', 'xst006', 'fe92c59ae23059757b0cbc8b4bee68d0', '7', 'yTyPn7', '123.120.101.161', '1428893508', 'xst006@163.com', '广东省', '', '');
INSERT INTO `v9_admin` VALUES ('19', 'xst007', 'd6999993e60c3acde490ae6912b3b6a0', '7', '2nGFRD', '111.196.207.138', '1403146004', '267228629@qq.com', '李娜', '', '');
INSERT INTO `v9_admin` VALUES ('20', 'xst008', '2df912ef58c600e0008361a8844d8f4f', '1', 'NFWlRz', '49.77.48.75', '1453215696', '267228629@qq.com', '王', '', '');
INSERT INTO `v9_admin` VALUES ('21', 'test', '123456', '1', null, null, '0', null, '', '', '');

-- ----------------------------
-- Table structure for `v9_admin_role`
-- ----------------------------
DROP TABLE IF EXISTS `v9_admin_role`;
CREATE TABLE `v9_admin_role` (
  `roleid` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `rolename` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `listorder` smallint(5) unsigned NOT NULL DEFAULT '0',
  `disabled` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`roleid`),
  KEY `listorder` (`listorder`),
  KEY `disabled` (`disabled`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of v9_admin_role
-- ----------------------------
INSERT INTO `v9_admin_role` VALUES ('1', '超级管理员', '超级管理员', '0', '0');
INSERT INTO `v9_admin_role` VALUES ('3', '会员查看管理员', '会员查看管理员', '1', '0');
INSERT INTO `v9_admin_role` VALUES ('4', '资源编辑管理员', '资源编辑管理员', '4', '0');
INSERT INTO `v9_admin_role` VALUES ('7', '会员添加管理员', '会员添加管理员', '2', '0');
INSERT INTO `v9_admin_role` VALUES ('8', '系统操作管理员', '系统操作管理员', '6', '0');

-- ----------------------------
-- Table structure for `v9_category`
-- ----------------------------
DROP TABLE IF EXISTS `v9_category`;
CREATE TABLE `v9_category` (
  `catid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `siteid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `module` varchar(15) NOT NULL,
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `modelid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `parentid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `arrparentid` varchar(255) NOT NULL,
  `child` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `arrchildid` mediumtext NOT NULL,
  `catname` varchar(30) NOT NULL,
  `style` varchar(5) NOT NULL,
  `image` varchar(100) NOT NULL,
  `description` mediumtext NOT NULL,
  `parentdir` varchar(100) NOT NULL,
  `catdir` varchar(30) NOT NULL,
  `url` varchar(100) NOT NULL,
  `items` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `setting` mediumtext NOT NULL,
  `listorder` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ismenu` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `sethtml` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `letter` varchar(30) NOT NULL,
  `usable_type` varchar(255) NOT NULL,
  `rgroup` varchar(20) NOT NULL,
  PRIMARY KEY (`catid`),
  KEY `module` (`module`,`parentid`,`listorder`,`catid`),
  KEY `siteid` (`siteid`,`type`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of v9_category
-- ----------------------------
INSERT INTO `v9_category` VALUES ('1', '1', 'content', '0', '0', '0', '0', '1', '3,4,5,6,', '教研', '', '', '', '', '', '', '0', '0', '', '0', '1', '0', '', '', '');
INSERT INTO `v9_category` VALUES ('3', '1', 'content', '0', '0', '1', '0,1', '1', '13,', '学前', '', '', '', '', '', '', '0', '0', '', '0', '1', '0', '', '', '');
INSERT INTO `v9_category` VALUES ('4', '1', 'content', '0', '0', '1', '0,1', '1', '10,11,12,', '小学', '', '', '', '', '', '', '0', '0', '', '0', '1', '0', '', '', '');
INSERT INTO `v9_category` VALUES ('5', '1', 'content', '0', '0', '1', '0,1', '1', '14,15,', '初中', '', '', '', '', '', '', '0', '0', '', '0', '1', '0', '', '', '');
INSERT INTO `v9_category` VALUES ('6', '1', 'content', '0', '0', '1', '1', '1', '16,', '高中', '', '', '', '', '', '', '0', '0', '', '0', '1', '0', '', '', '');
INSERT INTO `v9_category` VALUES ('7', '1', 'content', '0', '0', '0', '0', '0', '0', '管理', '', '', '', '', '', '', '0', '0', '', '0', '1', '0', '', '', '');
INSERT INTO `v9_category` VALUES ('8', '1', 'content', '0', '0', '0', '0', '0', '0', '海外', '', '', '', '', '', '', '0', '0', '', '0', '1', '0', '', '', '');
INSERT INTO `v9_category` VALUES ('9', '1', 'content', '0', '0', '0', '0', '0', '0', '综合', '', '', '', '', '', '', '0', '0', '', '0', '1', '0', '', '', '');
INSERT INTO `v9_category` VALUES ('10', '1', 'content', '0', '0', '4', '0,4', '0', '0', '小学语文', '', '', '', '', '', '', '0', '0', '', '0', '1', '0', '', '', '');
INSERT INTO `v9_category` VALUES ('11', '1', 'content', '0', '0', '4', '0,4', '0', '0', '小学数学', '', '', '', '', '', '', '0', '0', '', '0', '1', '0', '', '', '');
INSERT INTO `v9_category` VALUES ('12', '1', 'content', '0', '0', '4', '0,4', '0', '0', '小学英语', '', '', '', '', '', '', '0', '0', '', '0', '1', '0', '', '', '');
INSERT INTO `v9_category` VALUES ('13', '1', 'content', '0', '0', '3', '0,3', '0', '0', '幼儿歌曲', '', '', '', '', '', '', '0', '0', '', '0', '1', '0', '', '', '');
INSERT INTO `v9_category` VALUES ('14', '1', 'content', '0', '0', '5', '0,5', '0', '0', '初中物理', '', '', '', '', '', '', '0', '0', '', '0', '1', '0', '', '', '');
INSERT INTO `v9_category` VALUES ('15', '1', 'content', '0', '0', '5', '0,5', '0', '0', '初中地理', '', '', '', '', '', '', '0', '0', '', '0', '1', '0', '', '', '');
INSERT INTO `v9_category` VALUES ('16', '1', 'content', '0', '0', '6', '0,6', '0', '0', '高中物理', '', '', '', '', '', '', '0', '0', '', '0', '1', '0', '', '', '');

-- ----------------------------
-- Table structure for `v9_group`
-- ----------------------------
DROP TABLE IF EXISTS `v9_group`;
CREATE TABLE `v9_group` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(255) DEFAULT NULL,
  `user_number` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `create_user` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `thumb` varchar(200) NOT NULL DEFAULT '',
  `description` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of v9_group
-- ----------------------------
INSERT INTO `v9_group` VALUES ('2', '语文课题小组', '4', '2016-04-05 22:51:02', 'x', 'http://7xsohn.com1.z0.glb.clouddn.com/%40%2Fgroupu%3D3853289757%2C700751492%26fm%3D21%26gp%3D0.jpg', null);
INSERT INTO `v9_group` VALUES ('3', '英语课题小组', '39', '2016-04-05 22:51:02', 'x', 'http://7xsohn.com1.z0.glb.clouddn.com/%40%2Fgroup%2F20140817130205_HKnJS.jpeg', null);
INSERT INTO `v9_group` VALUES ('4', '数学专题小组', '39', '2016-04-05 22:51:02', 'x', 'http://7xsohn.com1.z0.glb.clouddn.com/%40%2Fgroup%2F36Y58PICCaF_1024.jpg', null);
INSERT INTO `v9_group` VALUES ('5', '化学专题小组', '39', '2016-04-05 22:51:02', 'x', 'http://7xsohn.com1.z0.glb.clouddn.com/%40%2Fgroup%2Fu%3D1464828712%2C2908509724%26fm%3D21%26gp%3D0.jpg', null);
INSERT INTO `v9_group` VALUES ('6', '物理专题小组', '16', '2016-04-05 22:51:02', 'x', 'http://7xsohn.com1.z0.glb.clouddn.com/%40%2Fgroup%2F36Y58PICCaF_1024.jpg', null);
INSERT INTO `v9_group` VALUES ('7', '地理专题小组', '65', '2016-04-05 22:51:02', 'x', 'http://7xsohn.com1.z0.glb.clouddn.com/%40%2Fgroup%2Fu%3D1464828712%2C2908509724%26fm%3D21%26gp%3D0.jpg', null);
INSERT INTO `v9_group` VALUES ('8', '生物专题小组', '35', '2016-04-05 22:51:02', 'x', 'http://7xsohn.com1.z0.glb.clouddn.com/%40%2Fgroup%2F20140817130205_HKnJS.jpeg', null);
INSERT INTO `v9_group` VALUES ('9', '历史专题小组', '53', '2016-04-05 22:51:02', 'x', 'http://7xsohn.com1.z0.glb.clouddn.com/%40%2Fgroupu%3D3853289757%2C700751492%26fm%3D21%26gp%3D0.jpg', null);

-- ----------------------------
-- Table structure for `v9_member`
-- ----------------------------
DROP TABLE IF EXISTS `v9_member`;
CREATE TABLE `v9_member` (
  `userid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `username` char(100) DEFAULT '',
  `password` char(32) DEFAULT '',
  `encrypt` char(6) DEFAULT '""',
  `nickname` char(20) DEFAULT '',
  `regdate` int(10) unsigned DEFAULT '0',
  `lastdate` int(10) unsigned DEFAULT '0',
  `regip` char(15) DEFAULT '',
  `lastip` char(15) DEFAULT '',
  `loginnum` smallint(5) unsigned DEFAULT '0',
  `email` char(32) DEFAULT '',
  `groupid` tinyint(3) unsigned DEFAULT '0',
  `areaid` smallint(5) unsigned DEFAULT '0',
  `amount` decimal(8,2) unsigned DEFAULT '0.00',
  `point` smallint(5) unsigned DEFAULT '0',
  `modelid` smallint(5) unsigned DEFAULT '0',
  `message` tinyint(1) unsigned DEFAULT '0',
  `islock` tinyint(1) unsigned DEFAULT '0',
  `vip` tinyint(1) unsigned DEFAULT '0',
  `overduedate` int(10) unsigned DEFAULT '0',
  `siteid` smallint(5) unsigned DEFAULT '1',
  `Uparent` varchar(20) DEFAULT '0' COMMENT '用户父路径',
  `Utype` int(2) DEFAULT '0' COMMENT '用户类型',
  `Ustate` int(2) DEFAULT '1' COMMENT '用户状态',
  `Utel` varchar(20) DEFAULT NULL COMMENT '电话',
  `Ubegin` varchar(30) DEFAULT NULL COMMENT '开始',
  `Upower` varchar(30) DEFAULT NULL COMMENT '权限',
  `Ucraete` varchar(30) DEFAULT NULL COMMENT '注册时间',
  `Ustart` varchar(20) DEFAULT NULL COMMENT '开始时间',
  `Ustop` varchar(20) DEFAULT NULL COMMENT '结束时间',
  `Ugroup` varchar(10) DEFAULT NULL COMMENT '用户分组',
  `Ulockip` varchar(255) DEFAULT NULL COMMENT '锁定ip',
  `Urequest` varchar(255) DEFAULT NULL COMMENT '问题',
  `Uanswer` varchar(255) DEFAULT NULL COMMENT '答案',
  `Ugrade` varchar(100) DEFAULT NULL,
  `Uoffice` varchar(100) DEFAULT NULL,
  `Uorgan` varchar(100) DEFAULT NULL,
  `repass` varchar(100) DEFAULT NULL COMMENT '初始密码',
  `totaltime` int(10) DEFAULT NULL COMMENT '在线时长',
  `rel_admin_userid` int(11) DEFAULT '0' COMMENT '所属管理员（userid）',
  `rel_admin_username` varchar(30) DEFAULT '超级管理员' COMMENT '会员所属管理员名称',
  `contacts` varchar(50) DEFAULT NULL COMMENT '联系人及职务',
  `qq` varchar(20) DEFAULT NULL COMMENT '联系人qq',
  `telphone` varchar(11) DEFAULT NULL COMMENT '联系人手机',
  `schoolmaster` varchar(30) DEFAULT NULL COMMENT '校长',
  `school_address` varchar(100) DEFAULT NULL COMMENT '地址',
  `servicemoney` float DEFAULT NULL COMMENT '服务费用',
  `invoicetitle` varchar(50) DEFAULT NULL COMMENT '发票抬头',
  `postalcode` varchar(10) DEFAULT NULL COMMENT '邮政编码',
  `renewtime` date DEFAULT NULL COMMENT '续费时间',
  `remark` text COMMENT '备注说明',
  `vouch_status` tinyint(4) DEFAULT '0' COMMENT '付款状态。默认未付款。之前所有的都是未付款',
  `vouch_time` date DEFAULT NULL COMMENT '付款时间，默认值。之前所有都为0000-00-00',
  `ktdate` int(10) unsigned DEFAULT '0' COMMENT '账号开通时间',
  `rel_bank` tinyint(4) DEFAULT '0' COMMENT '所属银行',
  `money_info` text COMMENT '财务信息',
  `visit_opinion` text COMMENT '回访意见簿',
  `verify` varchar(4) DEFAULT '0' COMMENT '用户是否通过验证',
  PRIMARY KEY (`userid`),
  UNIQUE KEY `username` (`username`),
  KEY `email` (`email`(20))
) ENGINE=MyISAM AUTO_INCREMENT=4905 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of v9_member
-- ----------------------------
INSERT INTO `v9_member` VALUES ('4884', '1', '1', null, null, '1462523923', null, null, null, null, '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '河海大学', null, null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `v9_member` VALUES ('4885', '2', '2', null, null, '1462523933', null, null, null, null, '2', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '河海大学', null, null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `v9_member` VALUES ('4886', '3', '3', null, null, '1462523945', null, null, null, null, '3', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '河海大学', null, null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `v9_member` VALUES ('4904', 'coderYan1', '1111111', null, null, '1463126251', null, null, null, null, '7987897@456456', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '河海大学', null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `v9_member` VALUES ('4889', '123', 'y123456', null, null, '1462981587', null, null, null, null, '123', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '河海大学', null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `v9_member` VALUES ('4890', 'yyy', 'y123456', null, null, '1462981921', null, null, null, null, 'yyy', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '河海大学', null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `v9_member` VALUES ('4892', '33335555', '123456789', null, null, '1463039714', null, null, null, null, '1245645643@123', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '河海大学', null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `v9_member` VALUES ('4893', '55555', '4444444', null, null, '1463039975', null, null, null, null, '5555', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '河海大学', null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `v9_member` VALUES ('4894', '44444444', '4444444', null, null, '1463040049', null, null, null, null, '4444444', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '河海大学', null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `v9_member` VALUES ('4895', '12332131', '55555555', null, null, '1463040913', null, null, null, null, '213231', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '河海大学', null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `v9_member` VALUES ('4896', '444444', '6666666', null, null, '1463041427', null, null, null, null, '131231', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '河海大学', null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `v9_member` VALUES ('4897', '45456456456', '44444444', null, null, '1463045989', null, null, null, null, '4546456', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '河海大学', null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `v9_member` VALUES ('4899', '4465456465', '1111111111', null, null, '1463047765', null, null, null, null, '456465', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '河海大学', null, null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `v9_member` VALUES ('4900', '31231231', '11111111', null, null, '1463047815', null, null, null, null, '32131231', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '河海大学', null, null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `v9_member` VALUES ('4903', 'coderYan', '12345678', null, null, '1463070869', null, null, null, null, '123123123123', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '河海大学', null, null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `v9_member` VALUES ('4902', '32131213231', '1111111111111111', null, null, '1463048243', null, null, null, null, '321312313', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '河海大学', null, null, null, null, null, null, null, null, null, null, null, '1');

-- ----------------------------
-- Table structure for `v9_member_verify`
-- ----------------------------
DROP TABLE IF EXISTS `v9_member_verify`;
CREATE TABLE `v9_member_verify` (
  `userid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `username` char(50) NOT NULL,
  `password` char(32) NOT NULL,
  `encrypt` char(6) NOT NULL,
  `nickname` char(20) NOT NULL,
  `regdate` int(10) unsigned NOT NULL,
  `regip` char(15) NOT NULL,
  `email` char(32) NOT NULL,
  `modelid` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `point` smallint(5) unsigned NOT NULL DEFAULT '0',
  `amount` decimal(8,2) unsigned NOT NULL DEFAULT '0.00',
  `modelinfo` char(255) NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `siteid` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `message` char(100) DEFAULT NULL,
  `contacts` varchar(10) DEFAULT NULL COMMENT '联系人名称',
  `telphone` varchar(11) DEFAULT NULL COMMENT '联系人手机号码',
  PRIMARY KEY (`userid`),
  UNIQUE KEY `username` (`username`) USING BTREE,
  KEY `email` (`email`(20)) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=1803 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of v9_member_verify
-- ----------------------------
INSERT INTO `v9_member_verify` VALUES ('9', 'bbcm@163.com', '123456', 'unDixQ', 'adsfas', '1316700992', '211.102.158.216', 'kefu185@sina.com', '10', '20', '20.00', '', '5', '1', '', null, null);
INSERT INTO `v9_member_verify` VALUES ('11', 'langziba2004', '123456', '5biDUY', '', '1317017169', '219.146.143.209', 'langziba2004@sina.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1627', '772533538', '413945', 'fe6YKN', '413945', '1378339247', '61.143.22.3', '772533538@qq.com', '10', '20', '20.00', '', '0', '1', null, '413945', '13392093137');
INSERT INTO `v9_member_verify` VALUES ('8', 'xiao3', '123456', 'XvD7gR', '梁', '1316700337', '211.102.158.216', 'lianghuixia2000@163.com', '10', '0', '0.00', '', '5', '1', '', null, null);
INSERT INTO `v9_member_verify` VALUES ('7', '185', '123456', '1cfziE', 'asfasd', '1316424657', '114.249.224.138', 'xiaobo1888999999@163.com', '10', '0', '0.00', '', '1', '1', '', null, null);
INSERT INTO `v9_member_verify` VALUES ('12', '杨青', '660414', 'Rss1SR', '', '1317022910', '222.172.91.23', 'yang-qing-1@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('13', 'lusifana5', 'lsf831804', 'w8Kn3r', 'lu', '1317022944', '116.9.115.211', 'lusifana5@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('14', 'wlzx@0908,com', '888666', 'skgpAK', '蝈蝈', '1317038815', '218.201.84.89', '1246847843@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('15', 'yxayzx', '7690050', '7LwN5X', '郧县安阳镇初级中学', '1317039628', '61.184.81.111', 'yxayzx@126.com', '11', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('16', '0920@134.com', '123000', 'EBxjKj', '阿你', '1317045246', '221.213.225.6', '592904485qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('17', 'GGM01', '13624795420', 'gXQhnh', '平安一生', '1317081641', '221.199.171.91', '928074162@QQ.COM', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('18', 'gsclrd', 'gsclrd', 'qMUmTx', 'ss quk ai', '1317083380', '61.141.0.204', 'gsclrd@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('19', 'wzx@0908', '888666', 'GSuHse', 'zyxwuli', '1317087388', '218.201.84.89', 'zyxwuli@126.con', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('20', 'wlzx', '888666', 'FftbnS', 'zyxwuli', '1317087614', '218.201.84.89', 'zyxwuli@126.con', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('21', 'zyxwuli', '49620569', 'DARKJ3', 'zyxwuli', '1317087868', '218.201.84.89', 'zyxwuli@126.con', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('22', 'zhou', '123456', 'EMMGR6', '1073096293', '1317091116', '116.116.24.27', '1073096293@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('23', '双峰中学', '**123456', '4AgqQC', 'XYZ', '1317094594', '221.233.201.134', '761012356', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('24', '0920', '123000', '3Sh9l7', '茂南中学', '1317103627', '61.141.0.216', '0920.@.134com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('25', 'weijvlan', 'weijvlan', 'QsVAQw', '近潭小学', '1317107180', '124.226.47.195', 'jintanxiaoxue@126.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('26', 'jintanxiaoxue', '123456', 'qxtDKr', 'jintanxiaoxue', '1317108154', '124.226.47.195', 'jintanxiaoxue@126.com', '11', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('27', 'guhezhongxue', '123000', 'A5JIs7', 'guhe', '1317170191', '219.138.139.70', '123321laozhou@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('28', 'hhyzhongxue', '2713639', '7WvnPe', '一中', '1317176597', '219.146.165.62', 'hhyzhongxue@126.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('29', 'jjj803', '@163.com', 'mYkYTt', 'jjj803', '1317184895', '58.54.133.222', '80jinbin@sina.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('30', '李小勇', 'qqq123456', 'y5aAcR', 'HSG', '1317212922', '218.201.62.3', '524862700@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('724', '雨中漫步张', '5885848', 'DsgECU', '', '1329226911', '58.51.40.179', '2583452593@qq', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('723', '000111', '000000', 'IM2egE', '', '1329223704', '122.143.175.129', '', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('722', '11112222', '111111', 'chaEqr', '', '1329212686', '122.143.175.129', '', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('721', 'lizhuang09', '760426', 'ta5pWV', '', '1329201668', '123.132.224.52', 'wbensheng@126.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('720', 'yanzhengyan', '13455901359', 'LijQLS', '', '1329198783', '123.132.224.52', '', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('719', 'dmtzxxx@126.com', 'dmtzxxx66', 'nf3pKl', '广饶县大码头中心小学', '1329198651', '218.56.181.4', 'grmtzhx0@126.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('718', 'dmtzxxx@1021.com', 'dmtzxxx66', '5rmSZM', '中心小学', '1329189955', '218.56.181.4', 'grmtzhx0@126.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('717', '蚬冈学校', '2529338', 'blF6Qz', '蚬中', '1329188614', '218.14.151.238', 'kpxianzhong@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('716', 'kpxianzhong', '2529338', 'znJHSd', '', '1329188387', '218.14.151.238', 'kpxianzhong@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('715', 'nieliyu01', '654321', 'Rq9Fwm', '', '1329182433', '123.132.224.52', 'nieliyu01@126.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('734', 'lg5678', 'a123123', '1pR1pB', '老郭', '1329436327', '123.132.224.68', 'lg5678@126.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('733', '前河小学', '123456789', 's5JYpN', '前河小学', '1329381346', '60.211.1.0', 'wzm7711130@126.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('732', '沂河001', '123456', 'riezjV', '集合', '1329379532', '60.213.43.30', '54475429@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('731', 'zql@67298.com', '', 'mKjA9g', '', '1329374276', '125.211.189.55', '', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('730', '2012@134.com', '123000', 'DXsNUd', '', '1329360390', '222.187.96.32', '', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('729', 'zhitaoxing', '8372512', '6ThlG9', '126', '1329299945', '60.213.9.34', 'zhitaoxing@126.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('728', '123321', '123321', 'unhapX', '123@321.com', '1329293153', '123.132.224.68', '123@321.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('727', '197335', '197335', 'Ug5EFg', '2012@134.com', '1329292926', '123.132.224.68', '2012@134.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('726', '夏洛i', 'gdp28672341', 'W3S5qV', '', '1329287352', '61.175.228.64', '815377328@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('725', '13592107706', '670207', 'MEXVaa', 'a670207@.com', '1329265921', '123.55.136.130', 'a670207@.c0m', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('51', 'hzptxx@0925.com', 'hzptxx', 'TLHzhc', '', '1317398357', '123.134.233.184', 'px6671012@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('52', 'a6791232', '15874531319', 'eTIQLm', '读几百', '1317427341', '118.253.90.208', '1197272506qq@.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('53', '1040385921', 'maminghao5465199', 'YBb3Wk', '酷', '1317454253', '119.184.35.146', '2465788', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('54', 'yesz@164com', '123abc', 'd7hBph', '', '1317463885', '222.220.166.43', '', '11', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('55', 'wlq@1227.com', 'wlq1227', '8h8Ggp', '中心校', '1317473434', '221.1.212.50', 'laoda_99902@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('56', '蔡爱书', '', 'bGV8Ix', '吉安初中', '1317482661', '118.122.34.241', '794070192@qq.com', '11', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('57', 'cassyzhang', '2162752', 'CqEhxx', 'zhangxuru', '1317523315', '117.28.89.132', 'cassyzhang@126.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('58', 'shenqin', '13755818560', 'NnzMbB', 'shenqin', '1317526679', '222.49.56.30', 'ydlyxj@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('59', '青青', '13755818560', 'RqGMgu', '青青', '1317527156', '222.49.56.30', 'ydlyxj@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('60', '1115628370', 'pp0147896325', '2HCm3e', 'pzy', '1317601164', '116.117.62.234', 'peizhiying2ggo@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('61', 'xiaoshitong', '0123456', 'IK3hZc', 'pzy', '1317601602', '116.117.62.234', 'peizhiying2ggo@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('62', 'www.tsyz.com', '012345', 'MinXSl', 'wan', '1317602886', '116.117.62.234', 'peizhiying2ggo@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('63', 'gongfang58@126.com', '012345', '7QXUIs', 'xst', '1317604901', '116.117.62.234', 'peizhiying2ggo@163.com', '11', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('64', '李满仓', '711125', '4hKp73', '', '1317625359', '110.167.49.8', '969451125@.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('65', '', '', 'ppjcbD', '', '1317631739', '222.220.156.95', '', '11', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('66', 'tfcz@0925.com', '600999', 'mQL2u5', '', '1317641260', '218.21.58.21', '', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('67', 'zfcz@0925.com', '600999', 'lYQudw', '', '1317641491', '218.21.58.21', '', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('68', 'zhoudi', '601088', 'eBTxDW', 'zhoudi', '1317703847', '58.42.164.102', '294569739@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('69', 'wabb529', 'baobao529', 'UjJfpc', '', '1317704299', '60.14.24.250', '932499699@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('70', 'mjzxx@0512.com', '600900', 'fXu83N', '', '1317796178', '220.180.161.26', '', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('71', 'ww2594991', '123456', '49fchd', '飘', '1317889808', '222.77.15.194', '514791276@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('72', '115076591', '021199lhy', 'IsMHRw', '赤渊', '1317900165', '119.84.157.137', '115076591@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('73', 'qianbanxian', '123000', 'vtH9me', 'qian', '1317950741', '61.133.116.32', 'qianbanxian@126.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('74', '梦雪儿', '5735178z', 'F3VdDA', 'aaa', '1317967551', '1.59.226.72', 'ylshanghaiyan@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('75', 'yousihai@830324.cn', 'ab830324', 'wgmLJH', 'yousihai', '1317992087', '116.248.14.240', 'yosihai705421377@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('76', '111cheng', 'hensini', 'PKRdmm', '成', '1317996250', '61.141.0.196', '370330102@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('77', 'yanglinxing', '851023', '75IgUN', 'yang', '1317999053', '221.213.133.186', 'yanglinxing0692@126.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('78', 'chunxiang023', '249373', 'HzJH6s', 'chunxiang023', '1318027400', '118.228.151.242', 'chunxiang023@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('79', 'bangongxiaoxue', '123456', 'pR7BkH', 'bangongxiaoxue', '1318039920', '124.226.45.60', 'bangongxiaoxue@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('80', 'bangongxiaoxue@163.c', '123456', 'F8wPEj', 'bangongxiaoxue', '1318041070', '124.226.45.60', 'bangongxiaoxue@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('81', 'shenbaoqin', 'shen656587', 'SfbelU', 'hi', '1318050275', '60.213.5.106', 'aqin0008@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('82', '亓华', '0221212', 'Iy5YZX', '', '1318050942', '218.56.160.30', 'sdlwqihua@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('83', 'tiannengfei', '19869342', 'pnWVKr', 'limengfei10', '1318054065', '222.74.116.42', 'limengfei10@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('84', '翟树斌', '680314518', 'qPUJsz', 'laozhai', '1318055859', '221.214.55.200', 'zhaishubin@yeah.net', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('85', 'wzqxws', 'xws19811021', 'klzJEQ', '师', '1318077189', '218.201.57.5', '1003457648@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('86', 'luxiuzhi35', '370713', 'h9DEUH', '繁星满天', '1318117810', '219.139.38.55', '360062695@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('87', 'zwc-wys', '2638255', 'qvQKti', '', '1318119269', '222.133.6.34', '', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('88', 'hmily.hua@163.com', 'hua112920', '5ftlT2', 'hmily', '1318119629', '122.80.110.105', 'hmily.hua@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('89', '守护心灵2012', 'liu1991le1220433', 'MUCWHC', '刘乐', '1318122994', '122.157.161.160', 'shishulingliuzhifu@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('90', 'jiaolei128', '8314535', 'RHkhip', 'jl', '1318135984', '219.139.42.213', 'jiaolei128@yahoo.com.cn', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('91', '杨柳中学', '88261331', 'FTDNiZ', '杨柳中学', '1318142114', '61.143.183.101', 'yfylyaq@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('92', 'xiguan', '188999', 'QvsUUk', '', '1318148726', '119.189.247.224', '', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('93', 'xgxx@0620.com', '188999', 'zlMe5L', '', '1318149450', '119.189.247.224', '', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('94', 'fhjjj_150', '0318843551', 'UDm7Sw', 'sunny', '1318161265', '124.239.102.236', 'fhjjj_150@126.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('95', '185363435', '8889211', 'QIUeS7', 'leebin', '1318162758', '1.82.29.131', 'renzhichu82@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('96', '冯小洁', '843551', 'H9mx5n', 'sunny', '1318164935', '124.239.102.236', 'fhjjj_150@126.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('97', 'fkzxlzh', '312153', '5ft27K', 'lzh', '1318203983', '113.106.152.130', 'fkzxlzh@126.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('98', '109408717', '109408717', 'lF3BBE', 'suny', '1318205488', '113.106.152.130', 'suny3692@tom.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('99', 'zzez@0920.cn', '600900', 'kxpEHq', 'zzezyx', '1318212526', '124.164.236.40', 'zzezyx', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('100', 'donghongcui', 'donghongcui', 'nxiiuq', '翠翠', '1318212916', '124.164.236.40', '294276664@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('101', 'AAA不怕', 'abcdef000', 'QM8UsS', '', '1318213767', '218.201.78.90', 'mqh3899@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('102', 'jxhjynr', '615243', 'qN8Bgi', 'yxfeng', '1318221240', '60.213.9.34', 'yxfeng236@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('103', 'liying714000', '19811115ly', 'LXIiPH', 'ly', '1318222470', '122.77.186.213', 'liying714000@126.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('104', 'jbdushanfu', '37561023', 'VA5Vi9', 'jbzx', '1318222560', '218.7.208.107', 'jbdushanfu@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('105', '谷金楼', '123456', 'ZzEYve', '', '1318223288', '219.150.233.198', 'nlsjq@126.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('106', '云昭画', 'shouji135', 'YQQqtu', '松', '1318223393', '124.128.244.62', 'irispeng1987@sina.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('107', 'wzhch', '879612', 'fDvzym', '', '1318224376', '60.175.244.88', '', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('108', 'wzzx0930.com', 'wzzx66', 'MkZjZi', '', '1318224451', '124.128.244.62', '', '11', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('109', 'jiaobinzhongxue', 'jbzx5756055', 'RdEfTa', 'jbzx', '1318225288', '222.133.7.35', 'ht8596@163.com', '11', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('110', '山东省齐河县焦斌中学', 'jbzx5756055', 'kwI1wX', '焦斌中学', '1318225670', '222.133.7.35', 'ht8596@163.com', '11', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('111', 'gczx@0915', 'gczx666', 'MDSHET', 'gczx', '1318226399', '221.1.208.130', '1120389660@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('112', 'zycz@1230.com', '191666', 'nEhcDW', '', '1318228575', '60.165.132.206', 'wujizu@126.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('113', 'fhjjj_150@126.com', 'fhjjj', 't9AjLt', 'sunny', '1318229294', '121.17.24.14', 'fhjjj_150@126.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('114', 'jpwj2006', '040228', 'qFaRep', '随风', '1318229476', '61.133.116.29', 'jpwj2006@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('115', 'Delia', 'deliakilly1982cn', 'S1ZPWY', '', '1318242946', '123.145.51.223', 'killy1982cn@yahoo.com.cn', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('116', 'yzyw', '0712315', 'C8QU8s', '于中语文', '1318248600', '222.49.43.197', 'wchanghui851@sina.com', '10', '0', '0.00', '', '1', '1', '', null, null);
INSERT INTO `v9_member_verify` VALUES ('117', '张少山', 'zhanglinying110###', 'u9nzEf', '快乐前行', '1318250883', '60.211.84.73', 'kuaileqiaqia2006@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('118', '2011luoyuwen', '', 'svtiYR', 'luo', '1318260969', '125.86.158.53', '782529103qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('119', 'zdjhb2011', 'sea605yawn504', 'uVRFEk', '中教', '1318287636', '219.139.42.213', 'zengdejia2004@yahoo.com.cn', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('120', 'TFZXYC', '58412177', '4qakRU', '', '1318292494', '218.21.58.21', '1617942421@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('121', 'lnt1987816', 'lnt1987816745201314', '9Ajwyv', 'lnt', '1318294461', '14.110.101.139', '395142628@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('122', '向阳花儿', 'ljl19700226', 'wwpXFv', 'qq', '1318296159', '124.164.236.40', '469507856@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('123', '孟庆玲', 'ml810126', 'efiDbq', 'meng', '1318298063', '60.213.9.34', 'mengling0126@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('124', 'chuyuan', '13140520', 'tR7xEL', '褚原', '1318298337', '60.213.9.34', 'chubob@126.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('125', 'zwmaqing', '151098', 'vjuPjs', 'mq', '1318300754', '60.213.9.34', 'zwmaqing@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('126', 'lkang', '6302020', 'cyIalu', '', '1318302764', '183.29.114.68', 'yeguokang@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('127', '15991256445', '8889211', 'y5YiT1', 'leebin', '1318308074', '124.116.11.164', '15991256445@139.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('128', 'lfwz@0405.com', '133666', 'mJyZ7S', '圆圆', '1318310569', '110.182.143.158', 'lishishurong@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('129', '黄气球', '12345678998', 'GATVT7', '', '1318310643', '60.213.9.34', '850342051@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('130', '恐龙宝贝', 'zhanglina', 'JGAh9t', '', '1318313941', '60.213.9.34', '690765510@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('131', 'xingshiyan', 'xingshiyan', 'JKzK3v', '', '1318317921', '60.213.9.34', 'endong0308@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('132', 'taiyuan', 'taiyuan', 'zHWA4u', 'tya1009', '1318322790', '60.213.9.34', 'tyan2008@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('133', 'lizeying', '49626012', 'kBKwer', '', '1318324604', '58.17.221.21', '928730065@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('134', 'feixue929', 'leakey929', 'cDxEIk', '飞雪', '1318325621', '123.134.105.96', '909866386@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('135', 'rxgrl', 'rxgrl520', 'ayZJCW', 'rxg', '1318325856', '61.184.128.227', '75169972@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('136', '赵霜智', 'zhaoshuangzhi0110', 'JVmefE', '珊', '1318335072', '115.215.203.14', 'www.zhaoshuangzhi1234567@126.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('137', 'tpwgm', '650910', '8y4djY', '', '1318341176', '124.226.54.252', 'tpwgm@126.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('138', 'wjz3697', '13977883697', 'A6Tj6M', '', '1318341661', '116.10.254.215', 'WJZ3697@126.COM', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('139', '414332066@qq.com', 'vicentlau', 'FabJu1', '李洋', '1318347245', '114.135.204.11', '414332066@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('140', 'zca654321', 'zca123456', 'TCCYck', 'anan', '1318375715', '61.133.116.18', 'zhangchaoan56789@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('141', 'tyjxx@1009.com', 'tyjxx66', 'HNwMX6', '', '1318375797', '123.130.222.247', 'taoyuanzxxx@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('142', '淡出云海', 'yinlianzhen781108', 'MDnpvw', '', '1318380556', '60.213.9.34', 'fengweichenzui@sina.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('143', 'nnyyff', 'llhhchch', 'HJtC6B', '陋室馨者也', '1318381168', '218.56.181.6', 'nnyyff163@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('144', 'wanggan', '831013', 'LFSx2m', 'xiaobei', '1318387781', '218.22.54.106', '623645604@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('145', '田琨', 'sanchun520', 'SG31HS', '田琨', '1318392842', '60.190.88.218', '185739260@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('146', '黄克龙', '123456', 'hLWnI1', '', '1318402618', '60.213.9.34', '', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('147', 'ygxx@0501.com', '600888', 'pfbtjH', 'nihao', '1318407741', '124.132.216.250', 'lwylhzh@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('148', 'zhangyameng', '123456789', 'VlZd6v', 'xiaozhang', '1318411628', '119.112.112.139', '1371014893@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('149', '好好学习', 'a667788a', 'SmaMkT', '学习', '1318416312', '123.186.231.29', 'xczx@0415.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('150', 'yjez@0410.com', '123456', 'qHjuq5', '', '1318417312', '111.127.85.196', 'yjezdili', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('151', 'mfr', '166888', 'uhBZTI', '', '1318420704', '221.1.205.26', '510083075@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('152', '高三土', '19751218', 'ijAW1w', '三土', '1318423013', '111.179.175.120', '1204165858@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('153', '云开月明', '000123', '2bHETx', 'shishulingliuzhifu@1', '1318424099', '113.2.30.126', 'shishulingliuzhifu@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('154', 'gao120776088', 'gaochen19940101', 'cKLkVj', '', '1318429314', '221.212.15.206', 'gao120776088@souhu.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('155', 'czkxx@0512.com', '600900', 'ujWVM5', '', '1318431638', '60.213.146.59', 'crr3150311@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('156', '好学上进', '', '39KrNa', 'duanyu', '1318438968', '218.201.144.184', '', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('157', 'duanyu', '9876543210', 'WCQ225', 'dy', '1318439193', '218.201.144.184', '', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('158', '钟洪涛', '099518', 'ysBJU5', '钟洪涛', '1318469267', '218.56.181.4', 'zhtbj2008@126.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('159', '小超人', '525788', 'kysnmk', '超人', '1318470232', '218.59.157.220', 'qinlinxin@126.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('160', 'nongyong', 'ny6477784', 'XeXTdN', '', '1318470258', '222.219.236.185', 'nongyong2011@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('161', 'ydcrl', '760905', 'rQQTft', 'ydcrl', '1318472434', '218.92.193.130', 'ydcrl@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('162', '张强', '66124453', 'sXQtjP', '', '1318485348', '113.204.132.58', 'cqswzq@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('163', 'dyxx@1012.com', 'dyxx66', 'pma8cS', '', '1318488933', '218.56.181.2', '', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('164', 'cood1001@126.com', 'gnlxj521', 'VXBc62', 'gn', '1318491360', '218.56.160.30', 'cood1001@126.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('165', 'sdyyezzsh', '196743', '2ZsrRC', '', '1318503126', '218.58.136.6', 'zhangshunhaihao@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('166', '地瓜爱土豆', '19850102', 'Wpt39K', '地瓜', '1318505535', '117.23.65.131', 'liyan002004@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('167', 'liyan', '123456', 'ZcMmpt', '2133657', '1318505804', '117.23.65.131', 'lliyan002004@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('168', 'dyxx@1012', 'dyxx66', 'PPvgY7', '', '1318549565', '218.56.181.6', '', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('169', '一壶老酒', '444s444', 'cGSwyF', '老酒', '1318549571', '222.170.148.199', '957417399@com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('170', '农场学校', '000000', 'ffNsNw', '', '1318550516', '116.95.42.217', 'bdehncxx@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('171', '第三联办小学', 'QCM570718.+', 'uHVlB1', '学而不厌', '1318551822', '61.133.116.29', 'qcmlsxx@126.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('172', 'dczx@0158.com', '1338888', 'yi3dC2', '吴', '1318552891', '123.146.118.110', '455454956@qq.com', '11', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('173', 'wjwyg2010', '19710426y', 'SL4UGZ', 'wjzx@0523.com', '1318573582', '218.58.220.254', 'wjwyg2009@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('174', 'zq4p8y', 'qm8674xu', 'kGvRQT', '', '1318573633', '124.164.236.40', 'zzez@0920.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('175', '建立', '1129130', 'pdCMJ5', '里', '1318575985', '218.56.181.8', 'cuijianli99@126.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('176', 'hqzx@1010.com', 'hqzx312', 'J5dXPy', '', '1318577348', '119.130.246.56', '630029199@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('177', 'woshiyan', '98099809989', 'E6vwuZ', '紫琉璃', '1318578290', '110.7.48.208', '827069465@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('178', 'wyj0082000', '19811221', 'Zzbsqb', 'wyj', '1318578331', '58.19.182.74', 'wyj0082000@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('179', 'yekang', '6302020', 'WNTFsV', 'kang', '1318598078', '183.29.110.247', 'yeguokang@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('180', 'zgj972956942', '1993710', 'Ta4vZP', 'vhcf', '1318624603', '116.112.103.50', '0505@139.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('181', '972956942', '1993710', 'PdFzVu', 'fgsdgfsdf', '1318624784', '116.112.103.50', '972956942@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('182', '李少峰123', '4304060108', 'KRHZYY', '散打王', '1318636793', '119.187.175.109', '1064871995@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('183', '李少峰106', '4304060108', 'Tejcd6', '散打王', '1318636948', '119.187.175.109', '1064871995@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('184', 'windy', 'windylu', 'X6gXB8', 'windy', '1318640339', '222.134.62.194', 'wenxuan2009.love@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('185', 'heyongzi01', 'wskcelfn', 'I63uTx', '何卓', '1318658938', '218.89.132.19', 'heyongzi@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('186', 'wuhongtao111', '123456', 'BdgXHX', '吴老师', '1318676218', '60.218.59.243', 'wuhongtao111@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('187', '916230260', '230916260Jliu199', '2DHFlL', '00', '1318685069', '122.157.46.34', 'liuqing916230260@sina.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('188', 'liuqing916230260', '123456', 'vT5LAW', '00', '1318685127', '122.157.46.34', 'liuqing916230260@sina.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('189', '11223344', '11223344', 'KeggcD', '00', '1318685263', '122.157.46.34', 'liuqing916230260@sina.com', '11', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('190', 'qwe@123', '123456', '9xi6BI', 'qwe', '1318722424', '122.157.44.30', 'liuqing916230260@sina.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('191', 'wtz', '111111', 'mbelK2', '1202', '1318730996', '123.134.30.20', 'd@1202.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('192', 'ly001', '6620035', 'H78165', 'ly', '1318738943', '116.112.110.226', '863658736@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('193', 'ybyh@2001', 'ybyh1001', 'IQbmdl', '', '1318765371', '58.42.175.21', '', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('194', '黄开福', '8731200', 'RRMjry', '学到老', '1318768331', '124.207.25.82', 'hkf1234@sina.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('195', '网络班主任', '198225', '3XjCwX', '班主任', '1318769455', '119.184.151.156', 'ah1524@yahoo.cn', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('196', 'yy', '18753016875', '8Cz9JB', 'x', '1318773405', '182.36.0.149', 'jyyzhqx@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('197', '水云间', '123456', 'H1CtBa', '水云间', '1318819703', '60.213.9.34', 'endong0308@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('198', '20yucheng06', '740102', 'llJuAZ', '', '1318820703', '60.213.9.34', '20yucheng06@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('199', 'czkxx@512.com', '600900', 'sBNlFu', '', '1318830721', '60.213.146.59', '', '11', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('200', 'hnrhxaaa@163.com', '123456', 'DqXTBg', 'HN', '1318838445', '60.165.132.206', 'hnrhxaaa@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('201', 'wenjiaoyuzhi@163.com', '8760232', 'Y5hzHk', 'cc', '1318841680', '113.84.136.42', 'wenjiaoyuzhi@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('202', 'xfbkzhq', '781116', 'kVnh3Y', '花开花乐', '1318853785', '58.51.40.224', 'xfbkzhq@126.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('203', 'tpzcz@0620.com', '188999', 'rtFy7w', '163.com', '1318869362', '218.207.53.50', 'zhangshaoli640217@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('204', '262912617', '5213344', 'fBnjyN', 'nan', '1318899853', '221.209.46.117', '262912617@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('205', 'fclujing1026', 'lujing1026', 'W7zGgJ', 'lujing', '1318900162', '123.133.239.179', 'fclujing1026@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('206', 'phk789', '78956123', 'bTRRrC', 'phk789', '1318903241', '218.56.181.6', 'phk789@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('207', 'linyixuli', '', 'kyQTaP', '', '1318906990', '60.213.9.34', '', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('208', 'jinfazh', 'jinfazh0810', 'pppCi7', 'jinfazh', '1318925125', '220.180.167.142', 'jinfazh@126.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('209', 'jdzx30', 'jd123456', 'g9WkEl', 'jdzx', '1318926798', '113.107.164.230', '305418339@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('210', 'jdzx@134.com', '8855868', 'jdgpqa', 'jdzx', '1318927025', '113.107.164.230', 'jd525301@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('211', 'sunky', 'Alina08', 'PQCRtK', 'HL', '1318935758', '14.113.215.122', 'Luther520@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('212', 'xtzx@0525.com', '888666', '3x8p7p', '', '1318937003', '222.133.14.148', 'wangxiuyun@2008.sin.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('213', '857530998', 'yyq051010908', 'tUb27V', '', '1318949951', '183.35.115.29', '857530998@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('214', '0920@134.CON', '123456', '2JsZs2', '', '1318979896', '221.1.208.182', '', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('215', 'wdhlp128', '586319wdhlp', 'j1qeKC', '东风', '1318980598', '61.142.212.204', 'wdhlp128@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('216', 'wangyuying', '123456', 'W7j5QN', 'wangyuying', '1318983643', '119.178.241.122', '1092720681@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('217', '0920@133.com', '123456', '8MIHe9', '', '1318984879', '113.88.96.221', '13530011399@139.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('218', 'tianbao', '751216', 'D5V6dE', '天宝', '1318986683', '123.132.224.54', 'tianbaoan1975@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('219', 'xhxx1012.com', 'xhxx66', 'ug5Cpx', '婷婷', '1318986980', '222.174.168.213', '', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('220', '0520@134.com', '123000', 'h7QZE3', '', '1318989008', '58.52.201.5', 'dir_3@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('221', 'kiss', '1q1q1q88', 'rZ6Mmb', '', '1318989418', '58.52.201.5', 'dir_3@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('222', '0820@134.com', '123456', 'GKMMx2', '0820@134.com', '1318989460', '60.22.66.169', 'nbjgjcdyx@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('223', 'fanfei1216', '9803571216', 'W9y3cf', 'fanfei1216', '1318991301', '123.133.239.179', 'fanfei1216@126.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('224', 'yaochengmin', '701017', 'l7yRlE', '', '1318996195', '180.129.231.67', 'cyaochengm@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('225', 'larenzhongxue', '5182116', 'FNar6W', 'laren', '1319006646', '180.137.227.12', 'larenlh2009@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('226', '县河中学', '123000', 'RU5Ize', '', '1319011569', '219.138.78.48', 'yang-x-c@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('227', 'sblzxx@0410.com', '600800', 'xpfpIH', '', '1319012343', '218.23.162.125', '', '11', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('228', 'tjzx', '15098379863', '5ND7ZU', '田集中学', '1319013432', '221.1.212.50', 'yjlxmh@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('229', 'why1973', '55361203', 'dhWZty', '黑', '1319021845', '221.212.87.214', 'lijiaqi-3@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('230', '淑之君', '0123654', 'TSsCQ9', '淑之君', '1319027826', '220.164.36.222', 'fswzsj87@126.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('231', 'lidefeng', '666666', 'ibV13X', '', '1319028516', '58.242.87.107', '84.3.19@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('232', 'huzy_01', 'hzy19880606ok', '8QzZp6', '影子', '1319029733', '219.138.78.48', '474664504@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('233', 'zxmmxz', '123456', 'g1Tlp8', '', '1319031184', '218.31.63.142', '1273812703@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('234', '太平周克', '123456', '2DhclZ', 'tpzxxx', '1319033972', '180.138.139.159', 'tpxx@1013.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('235', 'wgw1973', '19730105', '5X28zG', '', '1319060070', '123.132.224.50', 'wangguangweihu@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('236', 'lcq6622', '290360', 'DtI4lA', 'lcq6622', '1319063922', '122.6.144.2', 'lcq6622@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('237', '549630115', '', 'kzr98A', '木子李', '1319079084', '110.156.162.157', '549630115@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('238', '2305078935', '', 'lJNHZm', '伴我成长', '1319082099', '183.8.72.201', '18946948852@189.cn', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('239', 'YBYH@2001.com', 'ybyh1001', 'y5rtD4', '', '1319082135', '58.42.169.2', '', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('240', 'wjzx@0523.com', '888666', '13M7Rj', '王井中学', '1319083513', '218.58.220.254', 'wjwyg2009@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('241', 'wjwyg2011', '19710426y', 'QC9IGH', '王井中学', '1319083862', '218.58.220.254', 'wjwyg2009@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('242', 'chengy857', '13943070533q', 'wXK2kH', 'yangguang', '1319084650', '218.62.55.176', 'chengy857@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('243', '鸿鹄之志', '83761985', 'GYyNdB', '鸿鹄', '1319088899', '124.133.4.226', 'lgmlsx@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('244', 'bkgdw', '612888', 'aZJqwV', '', '1319089446', '58.51.40.224', '', '11', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('245', 'liuwenhua', '123456', 'rDknj8', 'qwed', '1319091667', '218.62.55.176', 'sz000_000@126.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('246', 'yjlxmh', '15098379863', '3hhzid', '田集中学', '1319098088', '221.1.212.50', 'yjlxmh@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('247', 'ycyz2011', '199206', 'HNYD2q', '', '1319104837', '218.58.220.130', 'sdyc2013@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('248', '徐倩倩', '', 'fQhct6', '倩倩', '1319110496', '119.177.150.254', 'xuqqian@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('249', 'zhao', '198295', 'cGqX4x', '', '1319112121', '113.121.180.155', '', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('250', '719312346', 'bzd7758521', 'UIT118', '刘涛', '1319116833', '111.14.62.47', 'liuyinhong163@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('251', '张华', '', 'ue64qq', '006', '1319123760', '222.221.97.159', 'QQ310451095.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('252', '人到中年', '13895296774', 'NjlFMd', '', '1319152691', '119.60.26.250', 'lixingwei1968@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('253', '房淑静', 'ffffff', 'DuvQjT', '房子', '1319158563', '218.62.55.176', 'fangsj630@sohu.com', '11', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('254', 'llzx', '5551345', 'ItsuGb', '', '1319158670', '116.26.228.161', 'lhllzx126.c0m', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('255', 'xiaojilongnba', '19720111', 'uNCM1f', 's', '1319161749', '219.146.143.210', 'xiaojilongnba@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('256', 'tyzx077', 'tyzx077', 'x64Rne', '太中', '1319162535', '58.52.192.90', 'huangchaoen@126.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('257', 'wdy', 'w123456', 'RrlU4P', 'fch', '1319164299', '58.56.234.110', 'dzlyzjwdy@126.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('258', '  毕桂萍', '147258369', 'S9fR7Z', '', '1319173421', '218.62.55.176', '411034661@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('259', 'wlx97515', '2627503', 'JwxKQC', '九尾狐', '1319173552', '218.56.181.6', 'wlx97515@63.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('260', '公安小学', '287459', 'tbB2qM', '小学', '1319178868', '218.14.146.166', 'liang610220@163.com', '11', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('261', 'huohuo', '198481', 'xEYH4l', 'huohuo', '1319180745', '222.133.6.34', 'huonx1984@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('262', 'wbk', 'ebk', 'qZxpSG', '', '1319188284', '60.213.45.178', 'wbk936@soho.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('263', '123456@', '123456', 'Jh2UYp', '123', '1319190568', '110.111.14.176', '', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('264', 'santugao', '19751218', 's6l328', '三土', '1319194115', '111.179.149.152', '1204165858@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('265', '111111', '111111', 'IFvPR3', '1235', '1319194187', '123.129.117.27', 'gouzhenyu@126.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('266', '51664784', '1230000', 'dw2Nqn', '', '1319242809', '60.165.54.28', '0920@134.com', '11', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('267', 'mingdaojin', '740508', 'l4fclF', 'mdj.@163.com', '1319252039', '111.180.157.239', 'mingdaojin.@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('268', 'laobaixing', '111111', 'S6fI8P', '老百姓', '1319281692', '221.209.43.238', 'laobaixing0909@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('269', 'lslsy32@163.com', '300000', '1uadks', '李胜利', '1319286680', '211.102.158.216', 'lslsy@163.com', '10', '0', '0.00', '', '1', '1', '校视通通知你审核通过！', null, null);
INSERT INTO `v9_member_verify` VALUES ('270', 'lslsy32', '300000', '3Ab44l', 'lslsy32', '1319287228', '114.102.215.100', 'lslsy32@.163', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('271', 'kpmgjiandu', 'fern4568206817', 'UpQAiP', 'fern', '1319287906', '183.34.146.228', 'huifenqi@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('272', '469507856', '', 'qmDGf3', '阳', '1319290435', '124.164.244.4', 'cdsjs@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('273', 'jhwjg', '761125', '4cK7F7', '太阳', '1319369688', '222.187.96.48', 'jhwjg@126.com', '11', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('274', 'zhouyonghai', 'zhouyonghai', 'SYhU56', '', '1319374748', '61.184.81.28', 'xfzyh1968@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('275', 'tingguo982315', '982315', '8z8dxg', '小小', '1319382177', '183.44.162.251', 'tingguo982315@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('276', 'mnbb982315', '982315', 'J2keSJ', 'mnbb', '1319382532', '183.44.162.251', 'mnbb@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('277', 'stzx@1201.com', 'stzx66', 'cN7NxE', 'tls', '1319414055', '218.56.181.5', 'mail_621@126.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('278', 'zx789@163.com', '789456', 'cnzvu1', 'zx789', '1319415606', '218.56.160.30', 'cyjb7788@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('279', 'mfcz@1018.con', 'mfcz606', 'Kx1aj5', 'mfcz@1018.con', '1319415919', '219.139.42.213', 'xcs0707@126.com', '11', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('280', 'jinzhaole', 'xjl123456', 'TqsKxb', '今朝乐', '1319417599', '60.213.9.34', 'jinzhaole@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('281', '安徽省涡阳第八中学', '123456789', 'zZAZAi', '', '1319418171', '60.174.93.182', '', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('282', 'dczx@0930.com', 'dzzx66', 'qiDyed', '', '1319419309', '124.162.68.11', '', '11', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('283', '陈之龙', '410855364', 'uynzZE', '陈之龙', '1319421236', '60.213.9.34', '410855364@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('284', 'lulingyu', '043019', 'EcUHQc', 'll', '1319422384', '60.190.75.155', 'www.306141447@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('285', 'fgxqyf', 'qyf123456', 'dEnNsY', 'fgxqyf', '1319432088', '113.133.162.70', 'fgxqyf@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('286', '1111@135.com', '123456', 'GAlXXQ', '', '1319433997', '123.132.224.50', 'puwangzhongxue123', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('287', '赵元梅', '61900', 'vaZ6g3', '', '1319441092', '60.213.9.34', '1144176045@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('288', 'hongchuanyin', '990316', 'lejIM1', '', '1319442914', '61.133.116.29', '', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('289', '南湖学校', 'nhzxazx', 'mcBwK3', '南湖学校', '1319444958', '221.194.179.19', 'zxnhzx@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('290', 'blxxb', '123456', 'rsuKfK', 'xxb', '1319451515', '121.234.206.167', 'blxxb@126.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('291', 'yyzx@0510.com', '131666', 'bT4DsV', '', '1319458247', '124.112.98.190', 'yuyingzhongxue@sina.cn', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('292', '赵朝阳', '19820826', 'knQCAd', '阳阳', '1319459551', '61.178.126.103', 'zhchyang031@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('293', '兔八哥', '123456', 'uP23Kn', '一帆风顺', '1319467740', '122.74.246.29', 'syezll@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('294', '罗丽', '123456', 'm9p6u5', '一帆风顺', '1319468043', '122.74.246.29', 'syezll@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('295', '0902@134.com', '123456', 'mw1PYZ', '0902@134.com', '1319474716', '124.118.228.96', '1273812703@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('296', 'zxnhzx@163.com', 'zxnhzx000', 'dVUGgC', '南湖学校', '1319503555', '221.194.179.19', 'zxnhzx@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('297', 'wangrongrong', '880715', 'dlqqxp', '毛茸茸', '1319508072', '123.132.224.50', 'rongronglujun2010@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('298', 'yinyin0709', '518168', 'EvUFzy', '永远上线', '1319509258', '61.132.87.141', '243643893@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('299', '风中残荷', '2066525', 'rwRAXV', '花儿', '1319514497', '222.81.23.218', 'xulihua2014@sina。com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('300', '高高', 'gaogao', 'Y9WzJM', 'gaogao', '1319517831', '112.246.59.72', 'yiluchicheng238@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('301', 'gaogao', 'gaogao', 'xTeUIL', 'yuyu', '1319520237', '112.246.59.72', 'yiluchicheng238@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('302', '尹子周', 'yzz198688', 'zIY9tu', '', '1319522463', '222.219.119.6', 'yinzizhou198688@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('303', '444291546', '22926901', '6qlswP', '', '1319526611', '61.131.20.157', 'cxx19560123@sina.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('304', 'tianshuang123', '123456789a', '9Yt1Z9', '好啊', '1319533453', '58.52.201.5', '326083203@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('305', 'xiaotian123', '123456789a', 'wKIz7u', '好人', '1319533722', '58.52.201.5', '326083203@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('306', 'chenxijin', '123456', 'PQl1g8', 'cxj', '1319539504', '60.213.9.34', 'chenxijin2005@126.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('307', 'jqzxcxj', '7116358', 'kd6atS', 'cxj', '1319541257', '60.213.9.34', 'chenxijin2005@126.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('308', 'snxgz@0930.com', 'snxgz666', 'qPEEUN', '', '1319541365', '113.56.31.145', '', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('309', 'yhzx@1110.com', '600900', 'CNU8hb', '', '1319543555', '222.221.81.8', '1391536999@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('310', 'yjzx@1028.cn.', '600500', '1Dr5Ly', '', '1319546662', '116.53.161.155', '', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('311', '8001.tdsa', '8001tdsa', 'D6rvMw', '8', '1319587888', '118.213.78.14', '8001.tdsa@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('312', 'lpsjzx', '123456', 'EhNkzd', 'lpzx', '1319588162', '61.146.118.125', 'lpdhxzq@163.com', '11', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('313', 'zhichu', 'zhichu', 'E18Nwb', 'zhichu', '1319588515', '218.93.124.18', 'jlm800@sohu.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('314', 'zhongruifa', '05799073', 'xvtLIP', '', '1319588940', '218.58.220.254', 'qing27126@126.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('315', 'sycqyz@1208.com', '131666', 'aRbfqb', '顺昌', '1319590216', '1.82.18.7', '1042202521@qq.com', '11', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('316', 'wangzhizhen309@', '821207', 'sCrCV7', '', '1319591181', '124.89.61.232', 'wangzhizhen309@126.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('317', '2011@134.com', '123000', '2Fjlsf', '扫帚菜', '1319592000', '218.84.76.93', '2011@134.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('318', 'jqqwz@189.cn', 'QLS520509', 'csxFGR', '祁连山', '1319592364', '61.178.161.58', 'jqqwz@126.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('319', '优秀语佳', 'xixixi', 'p7meIT', '语佳', '1319593517', '60.213.45.178', 'lywangxinxin@126.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('320', '团委君', '820623', 'nKPhMf', 'June', '1319597191', '218.56.181.3', '07junejune@163.com', '11', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('321', 'tqwyp2008', 'peng94nb', '9f45TX', '憨歌', '1319597837', '221.199.171.91', 'tqwyp2008@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('322', 'mch6359', '680412', 'ccUNpa', 'ma', '1319608955', '120.193.225.90', 'mch6359@sina.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('323', 'mch63590', '123456', 'GeZwlL', 'mch', '1319609236', '120.193.225.90', 'mch6359@sina.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('324', 'datanzhongxue', '2006420715ysy', 'lZxIex', 'dtzx@1008.com', '1319614069', '218.58.220.254', '1050133523@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('325', 'hxzhjzhx123', '4561046', 'c6QqUH', '', '1319614998', '221.1.208.182', 'zhjzhx123@126.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('326', 'cgzxsxf', '6431425', 'BwYKK9', '', '1319615055', '218.56.181.9', 'cgzxsxf@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('327', 'lzlg', '13863863523', '2wzx7r', 'youxiang', '1319616872', '219.146.143.210', 'sygh17@126.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('328', 'HBSYYXP', 'YXP801123', 'zMQtx8', 'SSS', '1319620589', '60.8.50.102', 'syzhizhong@126.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('329', 'hccx@0310', '800800', 'meCQFt', '126.com', '1319621841', '123.157.100.70', 'yanxianxia2006@126.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('330', 'wsr4737', '820212', 'DPByEA', '双台中学', '1319626852', '61.184.86.90', '13733536178@139.com', '11', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('331', '137561509@qq.com', 'wy890623', 'D9DFtb', 'qqq', '1319629043', '218.14.196.131', '137561509@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('332', '春天的故事', '1316984383', 'aePazG', '', '1319630315', '114.233.172.203', '1316984383qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('333', 'liuqing', '102688', 'SKdTQy', 'liuqing', '1319633220', '118.253.107.18', '987627801@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('334', 'wyg0802', '6879545', 'QMVziM', 'blue', '1319636827', '117.39.52.244', '357543420@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('335', 'sunlixin', '13854887804', 'AsGZmf', 'sunlixin', '1319672791', '123.135.28.245', '594682619@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('336', '腾格里森林', '1275270465', 'kjukhQ', '308363624@qq.com', '1319677742', '60.164.175.17', '308363624@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('337', 'wzz', '821207', '6uCk11', 'WZ', '1319678476', '123.138.229.217', 'wangzhizhen309@126.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('338', 'hqzx@0501.com', '600333', '8eHGNN', '', '1319679729', '123.135.153.20', 'zsl8180698@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('339', 'rzh6415966', '09133012', 'YFg8lZ', '浩', '1319680974', '218.56.181.3', '123398262@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('340', 'whp3588968', '680222', 'msmhGI', 'whp', '1319681499', '222.187.207.202', 'whp3588968@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('341', '史凤宏', '999233', '3Be5U4', 'sfh', '1319687960', '60.213.9.34', 'sfh999103@sohu.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('342', '1025554500', '3835568', 'HILq5u', '啊啊', '1319692318', '60.4.40.183', '1025554500@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('343', 'pingfanrensheng', '', 'ftague', 'shating', '1319693353', '60.213.9.34', 'sdlyhd2008@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('344', 'wangpeng', '13572466', 'SbZ84G', '', '1319694243', '61.134.67.155', '', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('345', 'asdf9226', 'asdf1q1q', 'kNXAhE', '', '1319700017', '219.139.42.213', '994135787@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('346', 'yunxi', '123456', '1s6Exr', 'yunxi', '1319701857', '60.213.9.34', '', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('347', 'wangyan123', 'gchgch', 'ng8UvD', '晚宴', '1319711751', '110.7.182.49', 'wangyan1974060@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('348', 'zxc20010730', '20010730zcx', 'p8XCEA', '', '1319714119', '124.118.29.96', '1146881269@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('349', '大山', '2005429', 'vP7tZU', '山', '1319717864', '61.185.137.44', '573791978@.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('350', 'cxskaka', '45642773', 'MZv1AJ', 'cxs', '1319727126', '183.68.207.174', 'cxs420@126.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('351', 'cxs', '45642773', 'QrbgJy', 'cxs', '1319727745', '183.68.207.174', 'cxs420@126.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('352', 'wang821207', '821207', 'CV248V', 'wz', '1319762845', '123.139.162.202', 'wangzhizhen309@126.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('353', 'wuyuehua999999', '970176', 'EsymPI', '一棵树', '1319764749', '61.160.5.78', 'wuyuehua999999@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('354', '杜延新', '651013', 'msmTcw', '', '1319766075', '123.133.132.198', 'sdzpdyx@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('355', '贾刚', '13995054768', 'LzEsim', '贾刚', '1319766758', '218.21.36.226', 'ycsxjg@126.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('356', 'weiliuping', '19740831wlp', 'WmB2iY', 'weiliuping', '1319774522', '124.226.53.21', 'weiliuping31@yahoo.com.cn', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('357', '我在北半球', 'beibeijiayou', '8TKYDh', '我在北半球', '1319775933', '218.201.183.104', '1047502121@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('358', 'weiqian', '198056', 'JcSvDp', 'weiqian', '1319779600', '60.213.5.106', '117776464@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('359', '周游全球', '19740102', 'QfqXzz', '', '1319781163', '58.52.201.5', 'gaoshan123wang@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('360', 'KEGUOXIAN', '6531909', 'QEWGu1', '', '1319782676', '61.178.89.165', 'www.792686865@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('361', 'lnszyy@163.com', '251314', 'PDJkNt', '洋洋', '1319786492', '49.117.28.63', 'lnszyy@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('362', 'zqx513', 'zqx354300', 'KbQXm6', 'zqx', '1319789962', '222.47.190.116', 'zqx2002@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('363', '8888', '123456+0', 'EPVA6c', '88', '1319792286', '112.233.157.32', '598212464@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('364', '松林晚风', '123456', 'RyXwcg', 'liuzm', '1319796217', '124.226.42.223', 'liuzm950117@126.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('365', 'zj1999', 'zj990706', '7HHkES', '', '1319797193', '119.178.231.239', '', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('366', 'wangaiwei', 'yaoya456', 'ue77DJ', '', '1319802580', '112.245.26.36', '', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('367', 'wangaiwei@.com', 'yaoyao456', 'nNpHiZ', '', '1319802684', '112.245.26.36', '', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('368', 'TOM', '1783499315', 'WUIaBM', '', '1319807941', '112.113.29.18', '', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('369', 'LLez20@163.com', '000123', 'YjkUTj', '陆良马街三中', '1319808346', '112.113.29.18', '550906775@qq.com', '11', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('370', '1628828661', '', '6T1J1M', '雨', '1319843515', '124.133.71.52', '1628828661@pp.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('371', '心雨', '123456789', 'zhZDg5', 'love', '1319844149', '124.133.71.52', '心雨@pp.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('372', 'yaoyao', '123+0', 'TnF6aX', '尧尧', '1319846391', '112.251.9.49', '598212464@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('373', 'qqfeicheww.@com', 'yao', 'LiJ8QD', '', '1319847335', '123.128.29.7', '', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('374', 'qqfeicheww@.com', 'yao', 'HB99wb', '', '1319847402', '123.128.29.7', '', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('375', 'dyzbl', 'mobile', 'wDsXEU', 'dyzbl', '1319849992', '123.134.45.252', 'dyzbl@sohu.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('376', 'lindengqian', 'LDQ0314', 'w9jF7t', '', '1319867958', '219.141.106.132', 'lindengqiandm@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('377', 'lindengqiandm', 'LDQ0314', 'XnXHYc', '', '1319868110', '219.141.106.132', 'lindengqiandm@163.com', '11', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('378', 'wh952340851', 'wh123456', '1wGnwN', 'wh952340851', '1319868724', '113.121.236.167', '', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('379', '冯晓宁', '781120', 'qe3rIH', '163', '1319872123', '112.241.107.176', 'fxn6665@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('380', '310822358', 'yujian', 'pFRvFT', '', '1319875811', '183.67.235.39', '310822358.@136.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('381', '1224897574', '310822358', 'xPTnsr', 'wo', '1319875959', '183.67.235.39', '310822358.@136.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('382', 'linhua', '5722161', '7hLI4s', '', '1319881076', '119.50.237.60', 'linhua12@126.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('383', 'ycwx@1025.com', 'ycwx66', '5PX95p', '', '1319885020', '124.224.133.42', 'ycwangx@163.com', '11', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('384', 'l289988341', '032209218', 'yb7yNu', 'lhx', '1319892531', '116.112.103.14', 'www.289988341@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('385', 'llmqiz', '123456', 'PW9Gkn', 'llm', '1319902363', '14.208.222.29', 'llmqiz@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('386', 'wzb2011', '123456', 'tQJ9WF', 'wzb2007wzb', '1319930457', '110.97.184.236', 'wzb2007wzb@sohu.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('387', '寒星逍遥', '1997618', 'UIjrNP', '王士荣', '1319948652', '112.251.13.21', '1226689046@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('388', '王士荣', '19970618', 'WX9Suw', '王士荣', '1319948843', '112.251.13.21', '1226689046@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('389', '会上树的猪', 'mfkw530gijyygy', 'v6iuBn', '', '1319961453', '125.89.161.94', '263455216@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('390', 'dxc123dxc', '123456dxc', 'FyMZls', '呵呵', '1319964830', '112.113.45.88', 'www.577904308@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('391', '0318@134.com', '123000', 'cU6TZZ', '好哈哈哈', '1319965130', '112.113.45.88', 'www.577904308@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('392', 'dxc123dxcss', '123000', 'vbbN3A', '我的的撒', '1319965208', '112.113.45.88', 'www.577904308@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('393', 'jym', 'jym', 'YvW6JC', 'jym', '1319971716', '116.26.222.224', '799134399@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('394', '风信子', '02050205', '5SlYPK', '', '1320018968', '222.188.101.6', '672659108@QQ.COM', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('395', 'yangyanguang2010', 'yangyanguang', 'a2bcc9', 'yangyanguang', '1320020887', '220.161.181.246', 'yangyanguang2010@126.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('396', '瞩目黑白', '2wsxcde3', 'DcxDlp', 'lfr', '1320021652', '218.77.13.134', '553684953@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('397', '215579870@qq.com', '19850701', 'S9QGd6', 'dengdeng', '1320023220', '222.185.243.4', '215579870@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('398', 'yananxuexiao', '53043012', 'ijmV4j', '', '1320026635', '113.9.9.203', 'yananxuexiao@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('399', '1139141185', '6901021218', 'ezB1Kp', '', '1320027299', '58.52.201.5', '', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('400', 'zhujiaowa', '171825', 'vNwb6k', 'ruixue', '1320034371', '60.213.5.106', '1058975182QQ@.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('401', 'hehe227', '3786352', 'BGhXGg', 'hehe', '1320037675', '218.56.181.6', 'hehe.227@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('402', 'xyw441912903', '750525750525', 'HG7NA8', '云卷云舒', '1320042264', '60.8.50.102', '441912903@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('403', '梅兰梅兰', 'HUANGkunMEI', 'wg8GT1', '梅兰', '1320044998', '60.213.9.34', 'hkm19780115@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('404', '咫尺天涯', 'rui20041214', 'sU9m9p', '天涯', '1320045749', '218.56.181.1', 'lflshy888@126.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('405', 'alixueqin', 'ab198252', 'ICK5Sn', '', '1320046753', '61.182.86.26', 'alixueqin@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('406', '韦晓', 'www.13640926598', 'WvtSI2', '', '1320047805', '124.226.47.87', '937443906@。qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('407', 'huanghaihui', '123456789', 'hIK1jF', '', '1320048077', '113.16.24.85', '', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('408', 'qqw123e', 'ying1234', 'HuhzJS', 'qqw123e', '1320049118', '112.250.88.162', 'tlsy1234@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('409', 'bxgyj2', '372328', 'cwnM5l', 'BXGYJ', '1320058866', '119.185.38.20', 'bxgyj2@yahoo.com.cn', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('410', 'bls1111', '820527', 'sGC7BM', '风风雨雨', '1320061531', '61.163.2.107', 'bls1111@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('411', 'zxc', 'zxc', 'p5fFTG', '', '1320067472', '113.138.210.26', '', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('412', 'cbzx613', '19840613', 'mfhy5E', '', '1320068827', '183.68.207.65', '', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('413', 'dltqqz@0318.com', '131555', 'sWQpPY', '', '1320106799', '123.178.139.38', 'lyq5285146@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('414', 'xwxx@5010.com', '600900', '1qP5nP', 'xw', '1320107024', '123.55.136.130', 'xwxx789@173.com', '11', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('415', '董新风', '2527846', 'Zdi6Rw', '风风', '1320108184', '59.58.192.80', '2527846@sina.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('416', 'dxazhlll', 'duxinmima', 'GyhMXv', '啥？', '1320115199', '218.56.181.5', 'dxzll3182@sohu.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('417', 'QQ1317941929', 'study+hard', '7LC8j6', '李昂', '1320119824', '125.44.11.135', '1317941929@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('418', '1317941929', 'studyhard', 'FsuZVL', '李昂', '1320120183', '125.44.11.135', '1317941929@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('419', 'xfklm', 'xfklm9532', 'BrvPZQ', '阿阳', '1320123465', '60.173.160.163', '675171886qq.c0m', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('420', '寒子', 'hanziyes', 'mXFvhL', '', '1320123477', '60.213.23.82', '949726016@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('421', 'zdru', 'zhangdruwu616', 'PhpqAn', 'zdru', '1320126970', '112.233.68.16', 'zdru@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('422', 'xpxx@.1018.com', 'xpxx66', '1XkwF7', '西坡学校', '1320132889', '221.131.49.115', 'xipojiaoban@163.com', '11', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('423', '2011@.134.com', '123456', 'hsUGGq', 'gjzxx012', '1320135436', '220.180.161.26', 'gjzxx012@.163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('424', 'fdzx@163.com', '123456', 'tQsaB9', '', '1320136042', '58.18.54.39', '', '11', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('425', 'sssjyj', 'JYJ2566209', 'eVvcGp', 'xiaopz', '1320136575', '124.118.34.94', '583996700@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('426', 'dltqqzjys', '131555', '52PIlu', '', '1320137885', '123.178.139.38', 'lyq5285146@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('427', 'hyqhqx', 'hyqhqx', 'RRZzUu', 'yuwenren', '1320141797', '222.184.76.26', 'jsgeyisong@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('428', 'huhu', 'huhu', '8WNskz', '1003200238@qq.com', '1320144599', '60.221.180.133', '1003200238@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('429', 'CHENXI', '021205', 'Q7lmii', 'CAGT', '1320144752', '117.136.9.146', 'csagtyf@16.qwqw', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('430', '校园一个星', '13895286116', 't4eq4e', '孙世煜', '1320144935', '14.134.134.104', '1145505896@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('431', '校园一颗星', '13895286116', 'haC3Nb', '孙世煜', '1320145019', '14.134.134.104', '1145505896', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('432', 'ly13z@1028.cn', 'ly13z66', 'sRJF2u', '', '1320148931', '221.2.68.66', '', '11', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('433', '傲天', 'sun007972', 'nSZjYF', '孙世煜', '1320149800', '14.134.134.104', '1145505896@qq.com', '11', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('434', '蚂蚁', '4575768', '5G9q9H', '蚂蚁', '1320191279', '120.209.3.186', '425470710@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('435', 'ydzx.0405.com', 'qls520509', 'r1CHET', 'qilianshan', '1320191771', '61.178.161.58', 'jqqwz@126.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('436', 'lixuezhong', '123456', 'Em8EX9', 'li', '1320192150', '123.132.231.182', 'devidlix@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('437', 'hpsyzx', 'syzx5687861', 'yM3ZPM', 'hero', '1320192492', '61.146.118.125', '13435520678@vip.163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('438', 'tjf123', 'tjf@123', 'tpftbC', '', '1320196138', '60.213.9.34', 'tianjunfeng0955@sina.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('439', 'huangcheng405', 'cuilijie405', 'L5LSXN', '阿诚', '1320196665', '119.137.43.110', 'huangcheng405@163.com', '11', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('440', 'lbwei72', 'lbwei729999', 'xRFcjG', 'wei', '1320201804', '124.226.168.151', 'www.weiweihhhh@126.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('441', 'lbwei2366', 'lb2366', 'JgIMzg', 'wei', '1320201961', '124.226.168.151', 'www.weiweihhhh@126.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('442', 'lizuolin', '041212', 'SQfUUX', '森*心雨', '1320207510', '125.75.98.13', 'lizuolin.1984@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('443', 'chy', '370502', 'LAXR1L', '', '1320208376', '218.56.181.9', '', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('444', 'ljzxchy', '370502', 'AsaFwA', '', '1320208672', '218.56.181.9', '', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('445', 'liguojin', '123123', 'jEDZmg', 'wuli', '1320213841', '222.133.48.6', 'liguojin_99@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('446', 'lpxx', '15506617891', 'Jdb8d5', 'lpxx', '1320215272', '221.1.212.50', '851094557@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('447', 'dz15@1020.com', 'dz15z66', 'D1MAWm', '', '1320217807', '218.201.174.52', 'fangbaoqin123456@126.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('448', 'wang2026', '7486321', 'qWMh95', '', '1320222056', '222.42.148.115', 'wang2026@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('449', '代琦', '1248787952', 'DvnZgZ', '代琦', '1320225682', '115.56.150.43', '1248787952@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('450', 'hehaoqiang', '934998069', '4pAWMS', '何浩强', '1320225692', '59.32.50.54', '934998069@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('451', '119045156', 'liuguan', 'Dd2qb4', '快乐无限', '1320229345', '114.100.31.1', '119045156@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('452', 'tf123', 'tjf123', 'm7lJGD', 'tjf123', '1320231516', '60.213.9.34', 'tjf@sina.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('453', '2010@.16', '123456', 'VDyILY', '123', '1320233690', '113.12.25.74', '', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('454', '1014@163.com', '666666', 'NdM6aN', '', '1320241286', '125.90.170.44', '', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('455', '董智杰', 'DZJdzj', 'B6B6u9', '', '1320243174', '111.127.118.100', 'www.1309655193@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('456', 'www.1309655193@qq.co', 'DZJdzj', 'N1vwVa', '董', '1320243294', '111.127.118.100', 'www.1309655193@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('457', '刘寨学校', '123456', 'F5wzFH', '', '1320280896', '221.130.76.29', '', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('458', 'lcj', 'chang19711216', 'ZGmVyT', 'lcj', '1320283356', '218.56.181.8', '12334@126.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('459', 'qzq828', '5906519', 'fnvEUx', 'fd', '1320287153', '122.227.250.221', 'linyq828@126.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('460', '1314@134', '920912', 'kKEj5H', '美美', '1320287198', '125.73.210.203', '381393301', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('461', 'gf203028', 'gf7203028', 'VzPifG', '飞翔', '1320288891', '222.186.222.145', 'gf203028@126.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('462', 'quhaifeng', '13669938034', 'gnrKsc', '浪漫', '1320295368', '113.134.202.50', '174951068@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('463', 'xiaobingdandan', 'ly13z', '6511zK', '临沂第十三中学', '1320300814', '221.2.68.66', 'ly13z@1028.com', '11', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('464', 'zhanghongjun', '9605081979', 'jHi2F1', '', '1320304127', '60.213.9.34', 'zhanghongjun111@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('465', 'zhanghongjun111', '960508', 'AqUFzq', '', '1320304501', '60.213.9.34', 'zhanghongjun111@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('466', '826185356', '5023602', '2vVR2m', '82618', '1320316420', '183.164.242.72', '826185356@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('467', 'lvzhi_123@126.com', '025563', 'K5kF6N', '吕', '1320360604', '110.6.220.210', 'lvzhi_123@126.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('468', 'hello', '681225', '57fJax', '', '1320366174', '218.56.181.3', 'hello.zhg@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('469', '唱雪吟霜', 'qixinqili521', 'kWXX2J', '', '1320371323', '60.213.49.122', '1422628@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('470', '350955716', 'wangyuping', 'IXP7BY', 'qq邮箱', '1320376372', '61.128.175.123', '1907517762@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('471', 'yt521', 'xy1314520', 'K2Gtdj', '', '1320381052', '220.178.29.94', '1305547150@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('472', '文心春盟', 'wenxinchunmeng', 'UULpMA', '', '1320382133', '221.2.63.75', '', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('473', 'qzzez@0906', '', 'bm6qIK', '', '1320383740', '61.163.2.107', '', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('474', '123', '123', 'gGrpul', '', '1320386473', '61.133.116.32', 'anrui2008@yeah.net', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('475', '1314@134.com', '920912', 'bhJemP', '美美', '1320396892', '125.73.214.7', '381393301.QQ.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('476', 'longyangan', '1234yu', 'WzzVGH', '', '1320399432', '124.226.47.115', '', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('477', 'longyangan88', '1234yu', 'T99hG3', '', '1320400800', '124.226.47.115', '', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('478', '，，，', ',,,', 'YtTFjx', '，，，', '1320413316', '110.230.241.253', '', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('479', '1027379381', 'xcy981127', 'bZiH97', '阿雨', '1320452364', '113.122.60.80', '1027379381@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('480', '张鹏飞', '00000', 'LC83ak', '晋', '1320455511', '124.164.138.38', '〖 http://www.ce116.com 〗', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('481', '1317425237', '000000', 'lPtCaC', '000000', '1320455587', '124.164.138.38', '〖 http://www.ce116.com 〗', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('482', '921970432', 'FANGqiYIqie@', 'mgUMnL', 'sansdsa', '1320478275', '218.7.208.170', '921970432@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('483', 'lxp0113', '020716', 'nVq8iB', '764600871', '1320491051', '61.161.82.183', '904575139', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('484', '飞舞千千样', 'yu09ll01hh05', 'zDvcr4', 'llc', '1320494674', '123.65.167.89', '747478176@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('485', 'nigel', '121212', 'RiUDvS', '乡村老师', '1320560976', '118.183.196.82', 'tianxinlin163@126.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('486', 'astdfas', '000123', 'iqHqP7', 'hjfjegfdj', '1320565234', '118.183.221.26', '1254662674@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('487', 'yaoshufang123', 'ysf424424', 'N8VfW1', '', '1320565788', '221.209.46.117', 'yyssffxx@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('488', 'ysez@.164.com', '123abc', '8YmArm', '', '1320572825', '222.220.156.35', '', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('489', '秦宗芝', '821210', 'EEFyA6', '', '1320579676', '124.89.54.160', '', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('490', 'wzzxyxj', '13864085031', 'F2UwRc', '新教师', '1320583803', '124.133.4.204', '13573774625@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('491', '啊多多', 'chenlaoshi', 'KnBlZS', '多', '1320584752', '125.79.128.67', '278944462@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('492', 'zcc543866583', '13753647577', 'XGzuJ7', 'zcc', '1320618468', '124.164.251.21', '543866583@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('493', '刘汉林', 'liu238907', 'lbTjsk', '刘汉林', '1320620069', '60.213.9.34', 'liuhanlin100@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('494', '0520@133.com', '000123', 'dABm1z', 'zdx', '1320624134', '222.170.145.204', 'zwehlj@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('495', 'qfxx', 'qfxx151', 'BAhPS6', 'qfxx', '1320624549', '222.170.145.204', 'zwehlj@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('496', '开心娃娃0719', '828307jielan', 'ZXZxvb', '阿杰', '1320624885', '113.140.47.18', 'huangjie147@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('497', 'hanr958', '055Xg6', 'IYnn6K', 'hanr958', '1320625887', '58.18.32.52', 'hanr958@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('498', '卢', 'lu1234', 'IVMadW', '', '1320636074', '222.187.96.14', 'luyanfei7610@126.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('499', 'fgl626619', '123456', 'M9v9Jb', '', '1320639892', '222.187.96.14', 'xzfgl626619@126.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('500', 'zhangli', '123456', 'KrU1tv', '张丽', '1320643190', '220.180.161.26', 'zhangangli@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('501', 'dfxw01', '783415yan', 'qaTmNu', 'dfxw01', '1320647998', '124.133.4.226', 'dfxw01@126.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('502', 'hb515', '611722', 'mBs5Vb', '子非鱼', '1320648709', '218.92.193.130', 'hb515@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('503', '韦飞', '972100', 'MTrSWj', '我心飞翔', '1320663759', '124.226.43.84', '1592972842@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('504', 'mmllxf', 'ml816256', 'FSXTKV', '死不悔改', '1320663921', '218.31.61.78', 'mmllxf@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('505', 'cyz', '966', 'aRPxEt', '', '1320706648', '113.107.164.227', '', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('506', 'qsjnzxx@0925', 'qsjnzxx', 'mgNc1c', '', '1320708097', '113.137.182.153', 'fgqsxx@126.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('507', 'yangzhou.99', '123456', 'LAQv4q', 'zhenqing', '1320710716', '61.133.116.32', 'yangzhou.99@163.com', '11', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('508', '耿佃芝', '760815', 'y5Cbir', '', '1320711892', '60.213.9.34', '', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('509', '非诚切忌勿扰', 'ycxygll#913', 'tsXk8C', '悠闲', '1320714707', '124.164.251.21', 'guolilin2006@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('510', 'gc853190814', '13472047365', '84Ujea', '', '1320722293', '218.11.0.8', '853190814@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('511', 'wgjnz@1025.com', 'wgjnzxx', 'YPcdzj', '', '1320731975', '220.163.249.84', 'wgjnzhxx@163.com', '11', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('512', 'gflzx', '3604996', 'RfL7MZ', 'gfz', '1320733056', '124.113.12.220', 'gflzx@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('513', '李健6976', 'ligudui769821', 'eU2c8h', '完美人生', '1320733253', '112.240.208.53', 'lijian6976@126.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('514', 'lx8369', 'liuxin', 'ANZk26', '热雨', '1320739174', '61.133.116.29', 'lx8369@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('515', '梅洪芹', '123456', 'afAnyX', '梅', '1320744678', '60.213.9.34', '1421123460@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('516', 'whlhd@138.com', 'lhd611812', 'fDYGLT', '', '1320755294', '113.82.59.243', 'whlhd138@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('517', 'dchlming', '750919', 'pNpisr', 'hlming', '1320758807', '183.69.49.52', 'hlm_h@126.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('518', 'lyh212823', '212823', 'SDFeYJ', '原', '1320789316', '124.164.251.21', 'lyh212823@92.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('519', '韩海岩', '', 'mJew3g', '', '1320799126', '60.213.9.34', '', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('520', ' 韩海岩', '123456', 'ZC4pHW', '', '1320799391', '60.213.9.34', '', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('521', 'zhuhe20080', '19770308', 'Pp7Zdc', '微笑的鱼', '1320814754', '60.213.9.34', 'zhuhe20080@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('522', 'hyxxzqs', '768893', 'JPwWRD', 'hyxxzqs', '1320817760', '112.2.63.178', 'hyxxzqs@126.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('523', 'chen123', '123000', 'HaQ5yG', '金小', '1320819011', '123.150.199.240', '282978346@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('524', 'eqqzxlyx', 'lyxrise', '4vBtVT', '', '1320819068', '58.18.32.54', 'eqqzxlyx@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('525', 'gudu', '19851104', 'JKQEEh', '严斌', '1320819483', '60.213.49.122', 'yjb105678255@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('526', 'luyuxiasky', 'lingangyizhong', 'tJSwlB', 'lulu', '1320824802', '60.213.31.226', 'luyuxiasky@yahoo.com.cn', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('527', 'youlibing', '3116829', 'eweUdF', '尤丽兵', '1320828572', '58.18.54.39', 'youlibingbing@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('528', 'cyc', '19660215', 'atHFDV', '', '1320828820', '61.178.176.193', 'caoyuanchong1966@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('529', '尤丽兵', '3116829', 'pGaT9E', 'ww', '1320828867', '58.18.54.39', 'youlibingbing@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('530', '高一八班', '123000', 'TgEcx2', '1871040316@qq', '1320834845', '61.179.98.206', '1871040316@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('531', '高一.八班.lvluzhou', '123zhou000', 'CXkKVk', '1871040316@qq', '1320835039', '61.179.98.206', '1871040316@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('532', '美佛儿', '123456', 'R7g2fm', '美佛儿', '1320840042', '218.66.15.105', 'mfeczb@126.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('533', 'LI1871040316', 'LL283495.&7', 'g7puE8', '1871040316@qq', '1320841904', '61.179.98.206', '1871040316@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('534', 'jintao', '853219', '1ydIf3', '', '1320879877', '218.92.207.98', '13851158846@139.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('535', 'ftzml', '6890163', 'Cth7hk', 'ftzml', '1320886922', '218.5.248.51', '851963476@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('536', '李晓华', '8902742', 'xpjKTl', '止水', '1320894325', '60.213.9.34', 'wwwlixiaohua@sina.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('537', 'jiuquanmao', 'jiuquanmao', 'ENtMMC', '', '1320916085', '60.165.174.14', 'maorui196505@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('538', 'lqq', 'lqq810527', '3lneS4', '', '1320919039', '113.107.164.227', '', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('539', 'qq', '123', 'FmVKaA', '', '1320919116', '113.107.164.227', '', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('540', 'axnzh', '710813', 'ch14UD', '小小', '1320926422', '60.165.184.193', 'axnzh333@sina.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('541', 'wdyz@1231.com', '000123', 'axkF39', 'yan1231@yahoo.cn', '1320931384', '116.52.8.94', 'yan1231@yahoo.cn', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('542', 'kongxinyue', '123456', 'CJDuKU', 'kongxinyue', '1320969638', '60.213.9.34', 'kongxinyue2010@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('543', '康定情歌', '710404', 'kZSfsg', '', '1320970691', '219.139.38.55', '342921284@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('544', '向军123', '', 'XFsLS1', '向军', '1320970923', '219.139.38.55', '342921284@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('545', '1871040316', 'll283495.&7', 'At7hYC', '力', '1320971664', '124.130.152.67', '1871040316@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('546', 'liqinghong', '811208', '3mGRCl', '', '1320971942', '183.71.148.182', 'huiguniang81@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('547', 'LL1871040316', 'LL283495.&7', 'irLCvB', '力', '1320972755', '124.130.152.67', ' 1871040316@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('548', 'tianyu0201', '3205494', 'b7P6V1', '', '1320973712', '221.2.67.214', 'tianyu0201@sina.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('549', 'daffodil', 'xiaohui1015', 'ul3mLF', 'daffodil', '1320973854', '221.2.67.214', '376888062@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('550', 'sunlihong', '700418', 'Qs91v3', '', '1320977239', '60.213.9.34', '', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('551', 'cqwzrrc', 'rrc001216', 'nju9Dy', 'cqwzrrc', '1320986100', '222.180.23.44', '397485190@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('552', 'dengwenkong', '125615', '7xkX1u', 'linlin', '1320993952', '61.132.88.94', 'xdzl615@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('553', 'tpzx@1025.com', 'tpzx66', 'HJPns3', '', '1320997267', '221.2.102.146', '', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('554', '123456', '1234567', 'IyxkeR', '123', '1320999731', '221.2.68.66', 'www.43.com@qw.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('555', '13582153380', '5845211314', 'TwM5fU', '521', '1321006075', '60.0.115.36', 'www.chen@.cn', '11', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('556', 'lqxxcxh', '1234', '1BZQYK', 'cxh', '1321008910', '119.186.63.172', '331417596@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('557', '1054605901', 'xukun8699837', 'NyPaFr', '徐昆', '1321020409', '121.61.172.172', 'WWW.1054605901.@.QQ.COM', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('558', '海底惊雷', '000000', 'ApWBMp', '古董', '1321060664', '221.2.67.110', '13455955159@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('559', 'jcez@1218.com', '000123', 'dP79YF', '126.com', '1321061673', '222.220.212.240', 'ynjcez@126.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('560', 'hzh780802@163.com', '780802', '1kydC6', '', '1321064864', '221.8.107.214', 'zlszlhj@sohu.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('561', 'liyongda', 'n20110536887?', 'GwWYkI', '', '1321069844', '110.241.53.24', '760664212@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('562', '郭译韩', '123guo', 'fZ7UQ3', '郭译韩', '1321071117', '112.233.152.149', '862647929@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('563', 'gyh', '123', 'UAnpiu', 'gyh', '1321072146', '112.233.152.149', '862647929@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('564', 'lxzx1125@.com', '600500', 'YShNj1', 'lwzyw1959', '1321074195', '123.134.108.248', 'lwzyw1959', '11', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('565', 'lhq', '207412', 'VNvLdD', '', '1321131073', '117.95.189.2', 'lhq530@126.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('566', 'zqx2002@163.com', '354300', 'Ed66RG', 'zqx', '1321142323', '222.47.104.163', 'zqx2002@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('567', 'zj2011', '741313', 'U8Igew', 'zj2011', '1321153424', '27.224.21.116', 'zj2011@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('568', 'zj2011zj', '741313', 'MGlX8P', 'zj2011', '1321153562', '27.224.21.116', 'zj@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('569', '何云贵', '8482665', 'GDazSn', '', '1321158543', '58.52.204.23', 'bjheyungui@126.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('570', 'tzxcz@0920.com', 'tzxcz666', 'lwBMeM', '', '1321158660', '58.52.204.23', '', '11', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('571', 'daiyongsha', '123456ddd', 'HgYdhE', 'qq邮箱', '1321159317', '218.201.244.97', '736028436@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('572', 'zhangwenjing', '041216', 'GHxvwx', '', '1321170564', '1.26.114.152', '', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('573', '智者', 'q123456', 'Nbrbjb', '', '1321178475', '219.150.233.198', '1427039727', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('574', 'fei668288', 'w151689', '5VNRnQ', 'dpzx', '1321180127', '14.208.121.74', 'fei668288@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('575', 'czblytf', '111111', 'Ji4ifs', '躲在角落看幸福', '1321184374', '114.238.195.57', 'czblytf@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('576', 'xuduobin', 'xubin4211213', 'tev348', 'ff', '1321186282', '60.165.175.70', 'mq@126.com', '11', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('577', 'wwz7303', '721960', 'qGJT7v', 'wwz', '1321190249', '220.170.237.192', 'wwz7303@sina.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('578', 'chenlinbo_2000', '97002149', 'zfyD9F', '', '1321229500', '183.201.255.5', 'chenlinbo_2000@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('579', 'sung0096', '860816', 'pZ9MNt', 'sung0096', '1321245434', '61.146.118.125', 'sung0096@126.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('580', '宋庆荣', '8687407', '364SKu', '', '1321248790', '221.2.67.214', 'songqingrong0126@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('581', '2011@133.com', '138139', 'Pw34lx', '阳光雨露', '1321249979', '123.164.156.102', '5867347@163.c0m', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('582', 'LIGEZI.OK', '666888', 'yBCLHW', 'gg', '1321253288', '124.133.4.226', 'ligezi.ok@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('583', 'trere', '123456123456', 'Uh5bYm', '', '1321256024', '60.213.9.34', 'trrr@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('584', '尜了个尜', '760229', 'pA9Kik', '小尜', '1321259409', '222.74.65.242', 'wgjyrb@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('585', 'sgwanghong2', '526719WH', 't8DQip', 'wh', '1321260911', '116.29.210.180', 'sgxywh@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('586', 'gyf0896', 'gyf131518', 'emHiZf', 'gyf', '1321279186', '222.50.152.45', 'gyf0896@126.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('587', '汪红霞', '123456', 'ke68Zb', '', '1321318530', '221.2.67.214', '1whx@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('588', 'xjsy@1110.com', 'xjsy66', '6rMBdA', '吕瑛', '1321318633', '221.2.67.214', '470528597@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('589', '雪落-无痕', '@boxH21024', 'fWXVIK', '步步高', '1321319587', '123.62.71.64', '528937547@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('590', '董珍书', '000000', 'Wf3WzI', '海底惊雷', '1321335758', '221.2.67.214', '13455955159@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('591', 'AESYZ@0906', '137800', 'WYIPxV', '', '1321336558', '110.7.48.208', '', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('592', 'qrmbtsh1', '1qa@rf', 'QfsmDh', 'qrmbtsh1', '1321336701', '61.178.176.193', 'qrmbtsh1@yahoo.com.cn', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('593', 'zhming916', '916916', 'fs9lxn', '', '1321337033', '61.134.67.143', '45666130@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('594', 'daishan', '8327950288', 'DpgTw3', '雁北飞', '1321339590', '218.4.150.139', '33042626@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('595', 'q924964489', 'quhao1997', 'vRqCHH', '屈浩', '1321351155', '110.230.254.58', '924964489@QQ.COM', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('596', 'q1156749947', '123456', 'hJ2S8y', '屈浩', '1321351237', '110.230.254.58', '924964489@QQ.COM', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('597', 'wychjle23', '160899', 'GbhcEZ', '小兰兰', '1321355247', '110.82.197.191', 'wychjle23@xina.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('598', '1661288772', 'moni521', 'pZE38d', '...', '1321360709', '182.33.1.214', '1661288772@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('599', 'panwenkai', '13153796218', 'mbtwrs', '1661288772', '1321360907', '182.33.1.214', '1661288772@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('600', '老兵', '070500', 'JYni68', '123456', '1321361406', '112.245.7.59', 'dpfrest@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('601', 'xiaoshuda', '129895', '6y3SvQ', 'soda', '1321365893', '125.93.31.251', 'xiaoshuda@126.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('602', '教师甲', '13156103167', 'eiw9pC', 'djzx', '1321399822', '112.231.98.106', 'djzxzxd01@sina.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('603', '2011@135.com', '138139', 'Bbif72', '', '1321415575', '113.107.164.227', 'highflier2000@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('604', '月下独酌', '800430', 'KNeDY4', '', '1321421424', '218.59.157.214', 'lmy_800430@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('605', 'Happyforever', 'bud1234', '44EK7s', '', '1321425142', '221.2.67.214', 'Happyyifu@yahoo.com.cn', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('606', 'panxn', '01101208', 'yz6ZM6', '', '1321434560', '202.104.3.251', 'qypxnhll@21cn.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('607', 'xinqingxueyu', '', 'jUlLus', 'xinqingxueyu', '1321443533', '60.20.136.208', 'xxxx2007.baozi@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('608', 'YJZX@21028.COM', '', 'mgw6lT', 'YJZX', '1321444930', '116.53.161.231', 'zyzx.@1028.com', '11', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('609', 'wzq7702', '123456', 'KBxREy', 'wzq', '1321458413', '220.169.199.192', 'wzq7702@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('610', 'zpyzl@1020.com', '189333', 'T1Tutg', '', '1321485897', '123.133.132.237', '', '11', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('611', 'jyy', '12345', '6kX9Cy', 'jyy', '1321487591', '221.2.68.62', '105527740@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('612', 'gylxzzb', '777777', 'rFNiHj', 'gylxzzb', '1321490000', '218.56.181.5', 'gyzzb01@163.con', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('613', 'pangpeng', 'pp19850408', 'q7JTy5', '庞蓬', '1321503449', '183.200.51.115', '1035465048@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('614', '孟凡梅', '2004321', '9AVVMP', '梦飞', '1321515886', '123.132.231.102', '2439709471@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('615', 'hlqsz@1230.com', '131222', 'bnmfCR', 'wqm', '1321516895', '58.18.36.35', 'wqm@126.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('616', '15051033009', '15051033009', 'itucTS', 'ocean', '1321522958', '114.239.32.128', '15051033009@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('617', 'ggggahkoje', '1234567', 'p6RQhm', '小王', '1321538856', '111.143.8.211', 'ggggahkoje@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('618', 'uo8008116', '34680195', 'R71qkM', '毛毛', '1321539863', '219.145.210.149', '442829262@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('619', 'luo', '830917', 'wR5MPi', 'luo', '1321540747', '221.13.50.182', 'fromonto@yahoo.cn', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('620', 'sszcfy', 'chenfuyong', 'eqLZpi', '开心', '1321572996', '221.2.68.66', 'sszcfy@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('621', 'sszcfy1', 'chenfuyong', 'TGa5gH', '科学', '1321573130', '221.2.68.66', 'sszcfy@163.com', '11', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('622', 'xyt2787', '502787', 'gtaxjU', 'xyt2787', '1321576229', '221.2.68.66', 'xyt2787@126.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('623', 'zhongxiaoling', '19791010', 'xuq5iP', 'ling', '1321576625', '113.83.241.103', 'zhongxiaoling1979@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('624', 'xhswzlxh', '751112093', 'M3dLfb', 'hai', '1321576795', '123.84.24.116', '455901959@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('625', 'liumengyuan1028', '19811028', 'GWIrKD', '', '1321593180', '60.213.41.238', 'tdf-007@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('626', 'shi', '13835388962', 'QBHlIR', 'yuanyuan', '1321601536', '110.182.149.155', 'lishishurong@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('627', 'syg30399159', '30399159', 'YXzwBk', 'suy', '1321606305', '218.93.194.12', 'syg30399159@sohu.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('628', 'hhqsyg', '30399159', 'HKpQmw', 'hhq', '1321606574', '218.93.194.12', 'syg30399159@sohu.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('629', 'hjhhanfeng', '1314520', 'SHRpbB', '画画世界', '1321611776', '61.134.91.154', 'hjhhanfeng@126.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('630', '王子', '03110419', 'sRww49', '王子', '1321612191', '112.233.183.218', 'ganjuan12@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('631', 'zdtja', 'ja666666', 'PDmH8V', '路人', '1321612965', '61.133.116.28', 'zdtja@126.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('632', '1120166905', '1291014738514l', 'id82bp', '奈美', '1321616101', '124.224.160.203', '', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('633', '林宝政', '1234abcd', 'Lb9bL9', 'lfzh', '1321663914', '218.201.174.52', 'linfangzhuo@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('634', 'gzlzx@0520 com', '600999', 'xI2R8k', '', '1321675852', '112.247.110.69', '', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('635', 'gzlzx@0502 com', '600999', 'ieiaxr', '', '1321675973', '112.247.110.69', '', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('636', '0916@134.com', '600900', 'UjJmyb', '', '1321676105', '125.87.105.113', 'zhlishuiyue@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('637', 'lcl', '2661415', 'P9amnG', '', '1321677704', '119.134.44.68', '', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('638', 'ljh123', 'ljh123', 'uvtDxK', '', '1321677968', '60.31.157.211', '', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('639', '1334571417', '8331728796', 'CwDLzi', '', '1321679463', '120.2.194.221', '1334571417@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('640', '389512672', '1120248990', 'U1m9Vw', '123', '1321679824', '120.2.194.221', '1334571417@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('641', '111', '111111', 'YLuMJz', '111', '1321683901', '182.36.31.144', 'xxk20110608@sina.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('642', 'wgd19970122', 'wgd19970122', 'xSHses', 'Vilbert', '1321692283', '123.186.54.213', '534553045@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('643', '838577604', '12301230', 'U2tIKq', '平淡最真', '1321695746', '60.9.49.233', 'www.838577604@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('644', '平淡最真', '12301230', 'QN3X4Z', '李扬', '1321696632', '60.9.49.233', 'www.838577604@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('645', '12345678', '000123', '8R7TQ1', 'hu8i', '1321756383', '1.57.87.181', 'tongxinhui@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('646', '平淡', '12301230', '8QCYZz', '李杨', '1321760645', '60.9.123.170', '838577604@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('647', 'fengkai1997', 'wenzuzhongxue', 'p8d9bn', 'fk', '1321775982', '117.136.9.130', 'fengkai1997@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('648', 'sandefan1', 'sandefan5', 'JQNnUk', 'sdf', '1321776172', '117.136.9.130', '1455356532@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('649', 'pc1234567890', 'pc1234567890', 'RSzipR', 'pc', '1321781387', '60.9.115.108', 'pc19961112@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('650', 'pc643610691', '643610691', 'TrNUTY', 'pc', '1321781698', '60.9.115.108', 'pc19961112@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('651', '拼了命做自己', 'fengkai123', 'LNSG2e', '冯凯', '1321783108', '117.136.9.130', '1455356532@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('652', '1010293177', '1010293177', 'VZXCNx', '温婵', '1321783587', '110.249.84.228', '1010293177@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('653', 'wcx91388', '', 'uaV2gX', 'wcx91388', '1321836658', '60.160.108.62', '8791388wcx@sina.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('654', 'lixueqin', 'ab198252', 'VDz3qJ', '', '1321836671', '61.182.86.26', 'alixueqin@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('655', 'yingwwwok', 'ying20071799', 'kFFUDQ', 'yingwwwok', '1321841005', '123.133.132.198', 'yingwwwok@126.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('656', 'yingwww', 'ying20071799', 'LXbhcw', 'yingwww', '1321841710', '123.133.132.198', 'yingwwwok@126.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('657', '杨华文', '789654', '5JSMU4', 'huawen65', '1321842629', '58.220.238.162', 'huawen65@126.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('658', 'dhszdj', 'dhszdj', 'XxnvgT', 'dhmj', '1321843066', '60.164.175.214', 'mj2002_01@163.com', '11', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('659', 'dhszmj', 'dhszdj', 'AQdvB9', 'dhmj', '1321843254', '60.164.175.214', 'mj2002_01@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('660', '15862787558', '15862787558', 'dhEmv8', '', '1321846635', '183.201.255.5', 'hufenghua2002@126.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('661', '袁杰', '123456', 'RlnI82', '袁杰', '1321852341', '58.220.238.162', 'fsy2004-1225@sohu.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('662', 'ly11z@10.18.com', 'ly11z66', 'ass2hV', '若水', '1321855748', '60.213.41.238', 'hgr106@163.com', '11', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('663', 'guoqiang891006', 'sdgq88', 'IvudpP', 'sdpwzxgq', '1321859401', '123.132.224.50', 'guoqiang9_9@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('664', 'lujishan', '540609', 'VdCpms', 'lujishan', '1321862160', '61.133.116.29', 'ljsslb540609@126.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('665', '625476031', 'xh0123456789', 'wZyVmV', '小小', '1321863619', '222.84.212.170', '625476031@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('666', 'qmgzx@1101.com', '800500', 'dKKJkC', '', '1321870072', '222.177.236.13', '648637604@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('667', 'YNYYGJZX', '5645115', '8Lbhih', '', '1321873713', '116.53.59.24', '', '11', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('668', 'sjfay_123', 'a001428', 'LDUj2u', 'fay', '1321874787', '125.84.71.74', 'sjfay@126.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('669', 'lfr', '824100', 'Sp9GDE', '', '1321875182', '125.84.71.74', '421378286@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('670', 'sbzx111', '123456', 'tbqIY9', 'sbzx111', '1321877120', '182.36.25.193', 'xxk20110608@sina.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('671', 'sherwin410', 'sh790904', 'NDiKSD', 'sherwin', '1321877577', '58.220.238.162', 'sherwin410@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('672', 'wanghongmei', '000168', 'sXuM4p', '', '1321918362', '221.212.153.162', 'wanghongmei168@163.com.cn', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('673', '370687832', 'y205t419', 'u8PEYA', '天乐', '1321920840', '218.201.49.239', '370687832@QQ.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('674', 'z123456', 'kongying628712', 'Dawtlq', '恒', '1321921445', '60.171.207.226', '411907865@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('675', 'Miss Yang', 'yangxiuyun', 'QBFqTA', 'Yangyang', '1321921449', '221.2.67.214', '451629554@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('676', 'yingzi', '197704261608', '1E76Yk', '', '1321921798', '218.201.49.239', '17zhongxiaoying@sina.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('677', 'zbzb1234', '761019', 'VPtm9j', '梦幻', '1321922037', '218.201.49.239', '913743328@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('678', '123qweasdzxc', '123qweasdzxc', '8NFBCA', '', '1321922098', '218.201.49.239', '714995828@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('679', '周斌', '761019', 'b1uj4U', '梦幻', '1321922150', '218.201.49.239', '913743328@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('680', '石冠梅', '123456ok', 'eMe3tq', '梅', '1321926766', '123.132.222.163', '527590031@QQ.COM', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('681', 'GNSZ@0402.com', '000123', 'CPTuMe', 'sanzhong', '1321928022', '60.14.59.27', 'szsj002@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('682', 'song', 'zysydm1314', 'AuAA26', '', '1321928495', '183.68.7.44', 'zhaoyinsong@926.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('683', 'l李岩', '123456', 'Ihu3q4', '', '1321930254', '58.18.4.91', '', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('684', '伊明君', '512506', 'P86AMj', '', '1321930684', '60.171.207.226', 'yimingjun512506@sina.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('685', '方宗贵', 'abcd19970208', 'NTvbWU', '方宗贵', '1321935477', '222.180.84.116', '445808396@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('686', '8810@134', '520830701', '1v9ytE', '8810@134', '1321938349', '222.83.170.142', '381393301@QQ', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('687', 'gwq770801', '770801', 'aP5TVB', 'gzy', '1321941754', '123.232.29.125', 'guoyuxi20@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('688', '西楼小学', '7835258', 'WibEvi', '西楼小学', '1321942292', '112.228.126.201', 'xilouxiaoxue@126.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('689', 'hnezjinliyan', 'hnez1199@', 'aqafgS', '', '1321962275', '220.164.98.56', 'ezjly@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('690', 'songhangui123', '12345678', 'mejMUe', 'songhangui', '1322010016', '221.2.68.66', 'aaa@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('691', 'songhangui', '12345678', 'zu61hC', 'songhangui', '1322010516', '221.2.68.66', 'aaa@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('692', 'zhangying023', '0234569', 'SGPiW2', 'zhang', '1322015868', '222.220.159.252', 'zhangying24@126.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('693', 'wuximan', '362162', 'xVYerN', 'xiaowu', '1322019439', '123.84.71.72', 'wuximanshujian@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('694', '戚超', '111111', 'LzPnCs', '', '1322022334', '218.93.251.221', '1326223438@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('695', 'wei.maoji', '19780308', 'YK8Cln', '', '1322028335', '124.226.45.200', 'wei.maoji@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('696', 'mingen', 'mingen0531', 'mL17dG', '秀秀', '1322031131', '220.164.92.7', 'mingen1012@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('697', 'lihanjie', '711224', 'L53hw9', '', '1322035844', '124.228.32.115', '', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('698', 'guoweicyn', 'cyngp6889227', 'UiPxqS', 'gp', '1322036476', '60.24.64.74', 'guoweicyn@126.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('699', 'dengyali', '668270', 'PthS52', '天空', '1322039574', '110.6.44.63', '597256113@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('700', '丁明', '800425', 'vV1iPb', '', '1322090876', '218.93.251.221', '13951398810@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('701', 'ltzx@1115.com', 'ltzx66', 'lXsRI6', '', '1322091725', '113.17.47.4', 'ludong6509026@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('702', '123.@135.com', '123000', 'aYH9Fn', '小玉', '1322092493', '113.107.164.227', '328698545@qq', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('703', 'zhangmiaomiao', '19861003', 'td7eGc', '云淡风轻', '1322095602', '218.93.197.155', 'zmm1003@126.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('714', 'highquick', '5181036', 'AY76ZZ', 'baiyun', '1329126811', '202.107.238.226', 'byzxg12@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('713', 'zczzcz123', '197907141210', '5eP9Xx', '', '1329117100', '124.231.235.110', 'www.1648245097qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('706', '郭绍杰', 'g123456', 'zxnN6r', '郭绍杰', '1322130156', '222.133.22.37', 'geric@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('707', '曹老师', '1234567', 'wLMJey', '', '1322137714', '1.59.217.89', 'hsz_lcy@126.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('708', 'hsz_lcy', '1234567', 'wakbTp', '曹老师', '1322137876', '1.59.217.89', 'hsz_lcy@126.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('709', '345499209', '123456', '3G3bpt', '345499209', '1322145875', '120.9.133.94', '345499209@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('710', 'jia398650846', '84028937123', 'BaCtns', 'zhishi', '1322198424', '116.116.233.250', '398650846@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('711', 'gss1988423', '218916', 'sc5xGH', 'ss', '1322201390', '112.82.88.47', 'gss1988423@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('712', 'gss1988423@163.com', '218916', 'JjPJG5', 'ss', '1322201542', '112.82.88.47', 'gss1988423@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('735', 'zsxxlzb', 'mima1', 'EVMFEz', '春三月', '1329470809', '123.132.224.82', 'zsxxlzb@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('736', '徐国', '123456', 'd3H75f', '徐国', '1329473101', '119.177.144.39', '1058536767@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('737', 'zz199742100', 'zz,.1997', '5xAbKd', '友人', '1329478028', '60.165.132.206', '1844864885@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('738', '王栋19970130', 'wangyu19970130/', '6PkdLW', '安卓、、、控', '1329483747', '114.105.215.135', '1074690755@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('739', '19961210', '19961210', 'exX3yE', '19961030', '1329491158', '60.4.42.68', '389512672@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('740', '0902', '09020902', 'HxWYqs', '0902', '1329528496', '58.18.54.39', '447875456@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('741', 'chenyuanjin', '123456789', 'dCZPuE', '1317233537@qq.com', '1329528498', '119.184.79.104', '1317233537@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('742', '蓝海波', '173792', 'PpT3GD', 'LAN', '1329530620', '222.180.84.12', '719514780@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('743', '快乐的土豆', '1039689831', 'qkpxz5', '快乐的土豆', '1329547338', '101.7.240.49', '1039689831@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('744', '552024739', '8023.+maxin', 'yT4uYI', '学生', '1329620206', '60.4.155.172', 'q252646265.com@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('745', '2455953883', 'zhaokuo', '8Bxcr8', '学生', '1329624395', '110.230.246.193', '2455953883@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('746', '王忠良', '19801227', 'PLgRnB', '阿提拉', '1329628678', '113.134.100.23', 'wzl-1227@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('747', 'huhuashizhe1554', 'huaxuezu511', 'Mu2qby', '赵老师', '1329634117', '58.18.5.239', '279831838@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('748', 'abc123.com', '112233', 'ANnEYa', '1101659679@qq.com', '1329640672', '119.184.71.0', '1101659679@qq', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('749', 'wzl-1227@163.com', '19801227', 'F9FR6c', 'wzl', '1329644020', '113.134.100.23', 'wzl-1227@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('750', 'abc112233.abc', '112233', 'x9GUPM', '', '1329646330', '119.184.71.0', '', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('751', 'abc123abc', '123123', 'iNAnIL', '', '1329646406', '119.184.71.0', '', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('752', 'liangfu321', '272912', 'gVsW2Y', '', '1329724509', '112.228.235.201', 'liangfu321@126.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('753', '天落流云', '521521521a', 'scPgn4', 'scau', '1329725857', '125.88.24.42', 'guoruipeng1988@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('754', 'dmtzxx@1021.com', 'dmtzxx66', 'ZN9A4p', '', '1329726169', '218.56.181.3', 'xyqiang01@126.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('755', 'yanbwnyyq@126.com', 'dmtzxx66', 'dk5LfH', '', '1329726300', '218.56.181.3', 'xyqiang01@126.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('756', '周晨璐123', '123321', '6gwFYj', '周晨璐', '1329730548', '222.174.14.119', '1392128584@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('757', 'yhtiks123', 'asdfgh', 'wQFWs6', 'asd', '1329735029', '111.124.104.245', 'david5136qiqi@foxmal.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('758', 'gaomengtang', '842240', 'FD2VNQ', '傲天', '1329744324', '123.132.224.45', 'gaomengtang@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('759', 'nieliyu', '123456', 'l86d7R', '原始人生', '1329784983', '123.132.224.52', 'nieliyu01@126.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('760', 'jingangzhiqu', '123456', '612dA3', '大河上下', '1329787788', '123.132.224.52', 'jingangzhiqi6688@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('761', '聂友珍', '', 'YCERKr', '', '1329788484', '123.132.224.52', '聂友珍2010@126.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('762', 'yuanyu', '891007', 'ef79gi', 'yuanyu', '1329791206', '123.132.224.52', 'yuanyu891007@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('763', 'a7752079', 'jia7752079', 'gzlFX1', '', '1329795653', '118.144.126.255', 'smujatpgf@126.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('764', 'meihua', '111111', '2ra465', 'hua', '1329799448', '111.126.127.98', '453678509@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('765', 'tsssxx', '123456', 'TrKW6b', 'tianshan', '1329799645', '111.126.127.98', 'yangguichao555@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('766', '刘景芳', '13993810212', 'AiTY1P', 'liujingfnag@1984.163', '1329808644', '125.74.116.231', 'liujingfang@1984.163', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('767', '姜希枫', '369369', 'bH8783', '枫', '1329810734', '219.146.143.210', 'jiangxifeng16@yahoo.com.cn', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('768', '1911190', '2077156', 'wNHjGx', '', '1329812052', '221.195.107.23', '', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('769', 'xue', 'xjj123', 'TbSKtC', 'xjj369369', '1329870103', '123.132.230.118', 'xjj369369@sohu.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('770', 'xiami-898@163.com', '763638', '6QNhUf', '', '1329871203', '123.132.230.118', 'xiami-898@!63.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('771', 'fgxynm', 'fbw070124', 'AFffzn', '秀林镇中学', '1329880715', '121.28.15.90', 'xlzzxjdc@yeah.net', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('772', 'lingwaide@126.com', '1654816758', 'dcWVN1', '', '1329881159', '60.190.100.148', 'lingwaide@126.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('773', 'lingwaide', '1654816758', 'nupGnW', 'Dream', '1329881450', '60.190.100.148', 'lingwwaide@126.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('774', 'fswyx', 'Leo06688', 'BJ7BdC', 'fs', '1329903567', '218.13.32.249', 'fswyx@126.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('775', 'fssdwyx', 'Leo06688', 'dCjfrr', 'wyx', '1329903725', '218.13.32.249', 'fswyx@126.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('776', 'chenqinglong', '196811', '3EQXRm', 'yp7u', '1329905068', '121.12.153.77', 'chenqinglong1@126.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('777', '陈清龙', '196811', 'knntPp', '丰华', '1329905498', '121.12.153.77', 'chenqinglong0@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('778', '1269398503', 'limingtan', '3D8jAv', 'li', '1329920308', '112.252.181.211', '1269398503@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('779', '137723101', 'lzw217413266', 'Rp5ASu', 'KIM', '1329957174', '222.50.55.30', '13726978138@139.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('780', 'edonglin', 'e8221612', 'lIIbfb', 'edong', '1329969541', '119.178.217.94', 'edonghcm@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('781', 'LFWZ0405.Com', '133666', 'QVb6We', 'jin', '1329974339', '118.73.104.30', 'jzh726000@sina.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('782', 'lxlx', '123lxlx', '1rsHVa', 'll', '1329979370', '112.251.53.225', 'iloveallpe0304', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('783', 'd318269', '318269', '5h1zYi', '台山人', '1329992625', '220.249.195.8', 'd318269@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('784', '1647496378', '', 'eXwSfp', '12', '1329999159', '112.230.21.71', '1647496378@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('785', 'asffsfsa', '1234', 'hejq5c', 'dasd', '1329999785', '110.205.220.209', '1197272506QQ.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('786', '杨燕军是个傻逼', 'laozicaonima', '7Wc9Vy', '白痴杨燕军', '1330000024', '110.205.220.209', '1347906340qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('787', 'songzf3656@163.com', '19810610', 'MUmLA6', '增富', '1330042497', '218.58.136.5', 'songzf3656@126.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('788', 'songzf3656', '19810610', '6ilAc7', 'songz', '1330042592', '218.58.136.5', 'songzf3656@126.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('789', '雪域天堂', '198724cde989', 'ECLUFY', '雪', '1330052721', '60.213.13.130', 'mengxue20080204@126.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('790', 'zhangyan', 'zhangyan', 'wcTG3c', 'yan', '1330054708', '60.174.79.146', '1208979513.qq.con', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('791', 'liumingxia', '15053929962', 'vQrS4g', '', '1330059643', '123.132.224.76', 'liumingxia78.@126.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('792', 'zjgxdm', '11206318', 'dg53eP', '春风细雨', '1330066807', '218.4.99.250', 'xdm1818@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('793', 'sunbin0098', '19851012', 'pla9US', 'sunbin0098', '1330068737', '113.64.147.246', '313072462@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('794', 'majiandong', 'majiandong', '4C18by', '', '1330076442', '182.37.203.149', 'mjd13.153917197@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('795', '1536803516@qq.com', 'wjx5201314@#$', 'VRHLjT', '153@qq.com', '1330081187', '119.85.252.178', '1536803516@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('796', 'hj@54722281.com', '54722281', 'RY8TaU', 'wangjianxiong', '1330081506', '119.85.252.178', '1536803516@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('797', 'wq12345', 'wq12345', 'iTrnHm', 'wq', '1330083420', '182.37.21.226', 'mqwqhaoren@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('798', 'yuandaishu', 'liushuxin', 'l9zsFx', '袁代数', '1330099270', '220.180.121.150', '1027717818@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('799', 'mayanxia', '2005402', 'MWTT3K', 'mayanxia', '1330152000', '221.1.211.98', 'mayanxia123jy@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('800', '吴波', '278865512', 'LbU5JH', '', '1330158105', '220.248.224.54', 'wubo2788@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('801', 'ljmnmd123', '5624733...', '1u3tjY', '4f2e1', '1330158575', '221.209.46.40', '549223341@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('802', 'zhangxin123', '521131400', 'GmDdMR', '65f4e', '1330159536', '221.209.46.40', '549223341@qq.com', '11', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('803', 'qwe@qwe12345', 'qweasdzxc', 'sNrdnF', 'wu', '1330166248', '124.128.134.3', 'qwe0987654321qwe@126.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('804', 'guest', 'guest', 'BKCyYY', '...', '1330166501', '124.165.246.58', 'ww.164005751@.163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('805', 'qwe@qwe123456', 'qwertyuiop', 'K8xLCI', 'wux', '1330166591', '124.128.134.3', 'qwe0987654321@126.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('806', 'fzczx@128.com', '131666', 'HFutFk', '', '1330197334', '218.57.209.67', '', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('807', '苏永理', 'love3385@', 'wmMID6', '大哥', '1330228974', '113.123.155.84', '40906236@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('808', 'nxy', '199711', 'UceP9m', 'nxy', '1330258195', '182.33.48.87', 'nxy1114@16.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('809', 'sumlavender', '5201206', 'WtJFke', '泥鳅', '1330267636', '123.132.224.43', '56934910@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('810', 'mxp928', '9280105374', 'gheqEr', '萍凡', '1330303809', '221.2.68.62', 'mengxianping_198@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('811', 'yn亲亲宝贝', 'mmcmxl', 'zvfvUc', 'qqbb', '1330304660', '123.132.224.89', 'ynmxl@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('812', 'zmdsyx', '03962914952', 'Gd4zqS', '驻马店市第十一小学', '1330313988', '202.110.65.3', 'zmdcyqsyx@126.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('813', '碎月流星', '5310200', 'G1Vrpm', '碎月流星', '1330317270', '118.228.151.241', 'zyl5310200@sina.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('814', 'luo13750214278', 'luo13750214278', 'Ysq2Gk', '山峰', '1330318631', '61.146.118.125', 'nanfeng6885881@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('815', '黄炜', '587624', '3KIfie', '黄帝', '1330325683', '218.4.99.250', 'huangweizd@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('816', 'heqing', '740623', 'tH6zp9', '', '1330326140', '60.213.23.82', 'heqing5@sina.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('817', '0320@134.com', '123000', 'VMmVLH', '黄帝', '1330326191', '218.4.99.250', 'huangweizd@qq.com', '11', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('818', '实验二小', '123456', 'eb781T', '', '1330326340', '60.213.23.82', 'heqing5@sina.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('819', '小学133', '123456', 'bANYHB', '', '1330327197', '60.213.23.82', 'yj_0907@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('820', '院东头中心小学', '123456', '5vJdpq', '中心小学', '1330327279', '60.213.23.82', 'yj_0907@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('821', 'szslghjd', '197832', 'bwHK9X', '东子', '1330328947', '119.177.206.253', 'szslghjd@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('822', '姐有点狂', '3694557zaza', 'beBU2f', '原影', '1330332471', '60.165.219.55', '1249300441@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('823', '莱芜市张家洼二中', '586691lichen', '7vxY8q', '张家洼二中', '1330341411', '218.56.160.8', 'lichen987654@126.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('824', 'jiaoshi', '123456', 'GasHkn', 'jiaoshi', '1330345872', '60.213.23.82', '471478377@QQ.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('825', 'sun', 'xiao@kai', 'i78ZxE', 'sun', '1330389454', '121.12.153.77', '592910183@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('826', 'texsbzx', '123000', 'X3fZT7', '三堡中学', '1330392937', '123.62.15.76', 'texsbzx@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('827', '正午镇中心学校', '123456', 'iGECkj', '正午教育', '1330394307', '220.180.162.6', 'zwjy3402323', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('828', '李大明', '123456', 'hEcT1I', 'daming', '1330395007', '61.146.118.125', 'hy123@.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('829', 'guoqiang1213', '881213', 'zJLt3s', 'sdgq', '1330398490', '123.132.224.50', 'guoqiang9_9@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('830', 'yu99', '11111111', 'Cgcg8r', 'yu', '1330401329', '123.132.230.118', 'yuzhiying.cool@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('831', '0320@133.com', '123456', 'cb4YNI', '', '1330406867', '123.132.224.104', '', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('832', 'chunlin.g@163.com', '85122900', 'bCbiWI', '小郭', '1330409657', '123.132.224.108', '2277961777@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('833', '品 官', '5511338866', '3ceyUn', 'sh', '1330412880', '60.174.97.126', 'sohu.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('834', '0320', '123456', '6h5SXp', '', '1330413232', '60.174.97.126', '134.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('835', '133', '123456', 'zqvKbS', '风过无痕', '1330416488', '60.213.23.82', 'jysljq@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('836', 'sundjiing', '258741', 'tlSkRS', 'sunjing', '1330420410', '119.186.51.214', 'sundjing', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('837', 'sundjing', '258741', 'pEa8xj', 'sj', '1330420657', '119.186.51.214', 'sundjing@126.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('838', 'sj', '258741', '4yqKqM', 'sj', '1330421693', '119.186.51.214', 'sundjing@126.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('839', '眼镜', 'ghf741105', '8CXFpY', '', '1330423686', '118.79.34.52', '707769190@QQ.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('840', 'nhj  521', '', 'fyBhYM', '5211314', '1330424025', '58.58.183.6', '997923817@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('841', '5211314nhj', '5211314nhj.', 'AR4y7k', '韩成', '1330424340', '58.58.183.6', '997923817@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('842', '赵艳君', 'zyj740921', '6pLJ63', '', '1330425142', '118.79.34.52', '', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('843', '韩成勇', '5211314nhj.', 'HE2QWX', '韩', '1330426367', '58.58.183.6', '997923817@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('844', '幸福的小猪', '5211314', '3mLA7F', '123', '1330427264', '58.58.183.6', '997923817@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('845', 'wsk68211', 'k68211', 'vJB4Vw', 'wsk', '1330473545', '117.95.5.169', 'wsk68211@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('846', 'fang1981_', '19811018', 'jSYkDU', '房', '1330485677', '119.176.158.202', 'fang1981_@126.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('847', '1074690755@qq.com', 'aerbeisi19970130', 'aBV7i6', '学习、永无止境', '1330508964', '114.105.215.166', '1074690755@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('848', 'ltzx2', '13694204470', 's2Kezd', '', '1330511077', '113.105.141.245', '675916982@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('849', '619734410', 'HUANGHE003693430', '36KsJZ', '志远', '1330511816', '1.85.104.97', '619734410@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('850', 'ysxzg', '770510', 'ZQziRF', '', '1330515821', '60.213.23.82', 'ysxzg@126.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('851', 'liuguohua_327', 'WWWW327QQ215', 'gVP4JJ', '尘封的记忆', '1330518131', '111.124.207.28', 'liuguohua_211@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('852', 'chenchuang', '111055', '2e6VKT', 'pin', '1330520671', '60.219.190.218', 'chenchuanglihai@126.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('853', '黄河', 'huanghe003693430', 'ybkE9K', '黄河', '1330522368', '1.85.131.167', '619734410@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('854', 'yangjinfeng123456', '123456789', '4qrmmS', 'ly20266', '1330560594', '222.43.81.100', 'ly202@1106.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('855', 'dzxx@.com', '888666', 'wIGtSG', 'lin', '1330567390', '218.56.181.4', 'grwhl@126.com', '11', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('856', 'xdzcz@0501.com', '600999', 'CqehwR', '', '1330580355', '221.2.63.76', '', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('857', 'mhxx', '1234567890', 'yzkUzT', 'mhxx', '1330581551', '112.246.35.232', 'xmlgood88@126.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('858', '海英飞空', 'swf987654321', 'yzcxnL', 'yuwenzu', '1330582476', '220.180.162.6', 'zwywz3401323@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('859', '592910183@qq.com', 'xiao@kai', 'iQ8qiA', 'sun', '1330584441', '121.12.153.77', '592910183@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('860', '56934910@qq.com', '5201206', 'GlvYDg', 'sc', '1330584811', '123.132.224.43', '56934910@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('861', 'hsxx@0216.com', 'hsxx66', 'BmNQnl', '', '1330585397', '221.2.82.14', 'hulinfang1208@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('862', 'dzhanmx', 'hanmx1973', 'AYlebT', '风中的刀', '1330586528', '218.56.181.4', 'dzhmx@126.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('863', 'ttailai', '5662329', 'CVvbI3', '唐老鸭', '1330591509', '113.85.169.55', '625155508@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('864', '小白_127', '15953940270', 'AvkY3F', '小白', '1330591931', '60.213.23.82', 'zhangxia1127@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('865', '961718720', '199718+zxc', 'kZFeIM', 'hill.wu', '1330596388', '218.13.32.235', '961718720@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('866', '741427841', '159357', 'k6BB1u', '东仙坡中学', '1330602457', '27.187.5.203', '741427841@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('867', 'www.dxpzx.cn', '159357', 'XttvVq', '东仙坡中学', '1330602671', '27.187.5.203', '741427841@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('868', 'ooooo', 'ooooo', 'y475QR', 'ee', '1330603823', '58.58.183.6', '997923817@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('869', 'yangkaili', '54426083ykl', 'nLzQ15', '似水骄阳0223', '1330606605', '124.115.247.9', '54426083@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('870', 'ykl_0223', '54426083ykl', 'c5KSaa', '似水骄阳', '1330608412', '124.115.247.9', '54426083@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('871', 'wangzhi12468', '19890918', 'rENie2', '无语', '1330614858', '118.76.30.179', '460067196@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('872', 'zas1997', '123456', 'RJ2RTG', '', '1330646642', '218.75.83.233', 'zas1997@126.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('873', 'neo1981', '20120301', 'ZLWGgQ', 'neo1981', '1330651781', '113.226.168.21', 'daoquanzhang@sina.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('874', 'yang6836887', 'by315072', 'KkPQQv', '磊', '1330654948', '222.86.58.14', '763214797@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('875', 'fanxj7117', '711711', 'pqMlcq', '', '1330655067', '61.146.118.125', 'fanxj7117@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('876', 'YDZX@1228.COM', 'ydzx66', 'Q3AHwS', 'TZXYDZX21', '1330667051', '114.139.34.172', 'TZXYDZX21', '11', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('877', 'xiaoxiong', '749247712', 'qTfPyc', 'xiaoxiong', '1330667262', '183.186.142.160', '749247712@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('878', 'wanganjun49', 'waj880405', 'egzFBB', 'wanganjun49', '1330668456', '61.189.197.36', 'wanganjun49@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('879', 'huihai2005', '771022', 'pZLqL6', 'hh', '1330675625', '119.112.107.9', 'huihai2005@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('880', 'yzh1290', '660310', 'mGWrBe', '', '1330685950', '219.150.126.230', 'smyzh1290@126.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('881', '苏松波', '1999su,', 'FzuuEa', '苏', '1330686283', '124.130.36.31', 'www.0320@134.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('882', '韦伊', 'mengweiyi', 's7RDK6', '粗线条', '1330686924', '112.251.127.44', 'guoli423@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('883', 'lizhansan', 'zxcvbnm', '8EmXG1', '李占三', '1330689239', '61.162.192.185', '1176791672@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('884', 'xjcfd', '7780400', 'Ng465H', 'cfd', '1330694213', '123.97.230.122', 'chen.fengdan@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('885', 'vanilla晓芹', '756520', '5Gjkcm', 'qin', '1330757764', '218.92.86.10', 'shan_xiaoqin@126.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('886', '吴关琴', '123', 'UI6IGv', '', '1330758117', '220.164.197.152', '', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('887', 'txxkkj', 'txxkkj', 'McKy82', 'tea', '1330821983', '111.12.121.18', 'txxkkj@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('888', 'f82368', '1314159', 'ux4tmS', '夜郎中学', '1330834771', '58.42.160.225', '756948689@qq.com', '11', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('889', '756948689@qq.com', '1314159', 'RblNQU', '阿斯达斯', '1330834868', '58.42.160.225', '756948689@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('890', 'wyx1234', '717719', 'iAWves', '梦祯', '1330839896', '60.11.200.154', '120110405@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('891', 'woshengri0103', 'wo980103', 'ru6SJ4', '周军伟', '1330869993', '119.177.213.206', '1163041795@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('892', 'lyyszxm', 'pleasure', 'iYZANZ', '沂水县许家湖中学', '1330913695', '60.213.23.82', '534386651@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('893', 'xgxx@0311.com', '888666', 'PShvpv', '', '1330915409', '60.214.146.162', '18906375608@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('894', '77899', '77899', 'XHfF9k', '77899', '1330925197', '60.213.23.82', '0@123.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('895', 'xjhzxldh', '629518', 'wJhTyI', 'ldh', '1330929868', '60.213.23.82', 'xjhzxldh@126.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('896', '雪花飘窗外', '7611=7611', 'XpZHTC', '雪花', '1330931633', '222.135.79.208', 'fenghaozhang@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('897', 'wyzyyx', 'wyZYYX', 'W87JeC', '同志', '1330931894', '61.131.142.44', 'zyyxzjm@126.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('898', '5201314ljh', '5201314', 'Mb17b8', '虎子', '1330935428', '113.137.178.112', '464948684@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('899', 'dxqspring', '123456', 'NkPgKu', '小强', '1330935900', '58.254.6.18', 'dxqworld123@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('900', 'lxl3978', '730422', 'nRj3aQ', 'qpzx', '1330947647', '61.133.116.27', 'lxl3978@126.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('901', 'ln615', '615724', 'QHdr35', '李娜', '1330953228', '122.158.204.71', 'ln615@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('902', '豆豆闲逛', '1985810', '4wtd9F', '豆豆', '1330992960', '221.229.116.67', 'lijing.0810@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('903', '广西南丹县中堡中学', '123456', 'V994B4', '', '1330996148', '116.10.0.92', 'ndxzbzx@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('904', 'syzxdn', '7363885', 'CpAPd7', '', '1330996323', '14.208.18.30', '502430839@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('905', 'caixia@163.com', '123456', 'Ce2EBx', '', '1330997662', '112.225.99.140', 'caixia@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('906', 'liuxiaoxin', '123456', 'UvpF1M', '258', '1330999216', '123.132.224.90', 'ynadlxx@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('907', 'guiyizhongxue', '12345678', 'yEuDHS', '', '1331012102', '123.131.164.226', 'guiyizhongxue', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('908', 'jinson', '520717', 'bnPhuS', 'guo', '1331015211', '113.85.168.175', '214152028@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('909', '0315@134.com', '0001234', '3iwyPu', '', '1331016500', '123.131.164.226', '', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('910', 'cnzywz@126.cn', '151555', 'mqynip', 'lsj328765', '1331017820', '119.1.144.36', '13985681221@163.cn', '11', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('911', 'suntao728', '919729', 'HQE4zv', '', '1331019003', '60.214.155.140', 'suntao728@126.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('912', 'z980343', 'z980343', 'EXEShZ', '潇张', '1331019624', '61.146.118.125', 'z980343@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('913', '20121981', '1985', '6cLf3u', '山楂树', '1331030507', '58.254.6.18', 'sbxxyjtwnn@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('914', 'wangjinchengqxh', 'louying_521', 'TY2ng9', 'zidixiaolouying', '1331032040', '113.3.183.108', 'wangjinchengqxh@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('915', '542584911', 'wsghww178745835', 'jEBUss', 'fdzx@163.com', '1331032053', '110.18.180.219', 'fdzx@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('916', 'louying_521', 'louying_521', 'LYrNlv', 'hahaha', '1331032593', '113.3.183.108', 'wangjinchengqxh@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('917', 'juwei8414', '220912453', 'IdnDva', '那棵...树', '1331078149', '112.254.22.247', 'juwei8414@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('918', '王军', '19711201wwy', 'yA8Fvu', '王军', '1331083345', '60.213.23.82', 'wwy19711201@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('919', 'wang', '19711201wwy', 'qHSyDz', '王军', '1331087126', '60.213.23.82', 'wwy19711201@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('920', 'wangdianjun', '937837', 'EkhiDR', '开心', '1331100528', '60.213.23.82', 'wangdianjun3@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('921', '吴干红', 'yiwu1969812.', 'Eg3ZlS', '635923332@qq.com', '1331103860', '119.135.176.6', '635923332@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('922', 'msw7808', '19780805', 'RgySt7', 'zhou', '1331108273', '119.135.176.26', 'msw7808@hotmail.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('923', 'bwj1972', '5991002ABC', '4QbDVT', 'BWJ1972', '1331108937', '120.15.15.246', 'BWJ1972@163.COM', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('924', '编,一季梦', '826634962464', 'wnz4ap', 'ANWEI', '1331116523', '119.1.232.61', '1451641183.QQ.COM', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('925', 'ANWEI', '826634962464', 'pAxYhW', 'ANWEI', '1331116777', '119.1.232.61', '1451651183.QQ.COM', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('926', '花雨', '5991002ABC', 'mSTPZU', 'BWJ1972', '1331118575', '120.15.15.246', 'BWJ1972@163.COM', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('927', '朱桂莲', '13796235138', 'Jwl43e', '', '1331120618', '123.83.82.24', '1025282850@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('928', 'blzxyj', '65127823', 'v2Rlhb', 'yj', '1331121206', '218.22.57.87', 'blzxyj@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('929', 'feifei820', '990058', 'uScwwa', '菲菲', '1331190658', '121.9.64.222', '345031291@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('930', 'szllxx', '84726853', '5PMpZU', '深圳龙岭学校', '1331196269', '119.145.11.200', 'szwyz168@163.com', '11', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('931', 'billxingchuan', '69pl,.', '6N22G4', '', '1331198301', '116.29.180.8', '117604376@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('932', 'yjezwmfsw', 'wmf628569', 'BBzKC3', 'wmf', '1331252690', '116.113.211.226', '811217236@QQ.COM', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('933', 'yeyue2007', '19810703', 'wrSjE9', '坐看云起', '1331256788', '58.214.243.2', '956568907@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('934', '我是张老师', '63162088', 'DCg3DW', '我是张老师', '1331259597', '121.9.64.222', 'whzap8888@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('935', 'fgwyf123', 'wyf123456', 'Fn7vHW', '', '1331273517', '117.36.192.66', 'fghuayangwyf@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('936', '90135', '735865', 'krSsLz', '', '1331278641', '119.184.119.130', 'hui8551025@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('937', 'xuyisong', '83768881', 'QlccSA', 'xys', '1331278681', '123.132.224.89', 'xuyisong@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('938', 'czscn', '6458250.', 'V9Vpev', '雪舟', '1331281243', '202.107.222.130', 'czscn@126.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('939', 'sjsnxx', '29853899', '7dj4g5', '', '1331281795', '119.139.130.101', '', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('940', '1234@123.com', '123456', 'uw5r8f', '123', '1331287302', '112.234.236.60', 'www.134@126.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('941', 'su@123.com', '123456', 'PNka9F', '1234', '1331287857', '112.234.236.60', 'www.1234@126.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('942', 'mhzxhjw', '13777248930', '8mLtwx', '', '1331348305', '221.12.63.223', '', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('943', 'ahsdwt', '821204', '1ckJKd', 'ahsdwt', '1331367495', '58.220.238.162', 'ahsdwt@yahoo.com.cn', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('944', '不忘sgwannabe', 'bxbasgwannabexst', 'c2PWnu', '不忘SG', '1331382947', '122.143.42.46', '1336647569@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('945', 'waoyaoyao', 'hcm110', 'azq9j4', 'hao', '1331392571', '112.251.194.60', 'hcm110@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('946', '615896455', 'zxcvbnm', 'ezf2Sp', '', '1331443306', '118.183.213.239', '615896455@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('947', 'wangmaodong110806', '110806', '8Grhn4', '', '1331515647', '221.2.67.214', '', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('948', 'hongqingting', '83851006', 'unACNe', 'hqt', '1331520770', '60.213.23.82', 'liluohudie@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('949', 'sunnyaoni', 'aoni660708', 'kdjuJE', '三竖', '1331532996', '60.213.9.34', '1094514181@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('950', '0135&133.com', '000123', 'VABZ1V', '', '1331545304', '119.122.202.14', '', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('951', '0315&133.com', '000123', 'dwp3J2', '深圳沙井上南学校', '1331545660', '119.122.202.14', '', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('952', '张平', '7281+6768', 'JvyNJR', '', '1331546592', '61.134.36.115', 'tian72816768@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('953', 'fiank', '030109', 'UIs214', 'f', '1331551534', '61.145.167.186', '63321035@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('954', 'LY13Z1028.COM', 'LY13Z66', '3eIGrw', '八月桂花香', '1331600654', '221.2.68.66', '1913673870@.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('955', '吴建伟', 'dcxx666', '7ldM7l', '选择记忆', '1331606077', '112.250.88.162', '443822411@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('956', '吴建伟123', 'dcxx666', '5iCXsu', '吴建伟123', '1331606211', '112.250.88.162', '443822411@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('957', 'cai_jin2008', 'caijin630210', 'uC44II', '大头小子', '1331606828', '124.117.217.190', 'cai_jin2008@126.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('958', '头屯河农场学校', 'tthnc', 'pJEnRX', '学校', '1331607281', '124.117.217.190', 'cai_jin2008@126.com', '11', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('959', '517390554', '62042215lzl', 'rQpdkw', '活泼女孩', '1331616276', '222.57.27.142', '', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('960', 'djf', 'family', 'WiylQi', '', '1331620216', '218.75.83.196', 'djf139139@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('961', 'zxl', '252431', 'bcbrS4', '', '1331624577', '123.132.231.182', '', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('962', '新疆兵团农十二师头屯河农场学校', 'tthncxx', 'CKMUTy', '头屯河农场学校', '1331630301', '124.117.217.190', 'cai_jin2008@126.com', '11', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('963', 'kansi9', '759520', 'YGuaNT', 'vcszhj', '1331633805', '183.69.6.200', '309299297@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('964', '牛牛', '251146696', 'RvzDJI', 'niuniu', '1331685065', '121.11.232.53', 'gtzxgg8282117@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('965', 'quleixia', '2358000111', 'v2mBQB', 'quleixia', '1331685369', '112.225.102.72', 'quleixia@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('966', 'lmzxswd', 'a123456', 'JfjEfT', 'lmedu', '1331691523', '218.8.10.21', 'lmzxswd@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('967', '余庆剑', '123456', 'TyTAxV', 'qc', '1331717987', '58.253.247.78', '156463397@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('968', '1193250610', '1790329560', '4e7bl2', '', '1331733085', '110.230.229.226', '', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('969', '蝶变', '09098691a', 'LnjMFi', '玉亭', '1331734105', '111.77.181.85', '1790658649@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('970', '1790658649', '09098691a', 'N16viv', 'yuting', '1331734467', '111.77.181.85', '1790658649@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('971', '学艺', 'xy91576z', 'ACNI5c', '', '1331737254', '60.174.105.156', '819154991@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('972', 'xtez@0330.com', '000123', '3ARa4W', '二中', '1331773211', '60.213.137.114', 'tachangzhou@126.com', '11', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('973', 'HYXXI@0127.COM', '', 'LtnLjt', '', '1331779942', '117.36.192.66', '', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('974', '岳小丫2000', '790520yuexiaoya', 'lKE5fv', '', '1331780131', '60.213.43.30', '', '10', '0', '0.00', '', '5', '1', '', null, null);
INSERT INTO `v9_member_verify` VALUES ('975', 'tangyong', 'tangyong', '5TbK6W', 'tangyong', '1331780208', '222.134.62.194', 'xinyangtangyong@sina.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('976', 'tatin1987', '2116336', 'Jk3MHI', '高滩', '1331792171', '219.145.210.149', '287021595@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('977', 'chxq62036', 'chxq-2012', 'Aaw7As', 'chenai', '1331799102', '123.132.224.68', 'chxqian@sina.cn', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('978', '笑面明天', '000000', 'Hi6EvD', '笑面明天', '1331859319', '218.201.98.210', 'lxxczxf@126.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('979', '山东省莱西市城关小学', '8458375', 'dFjrKj', '城关小学', '1331866472', '218.201.98.210', 'sjcgxx@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('980', 'lxscbxx', '126126', 'VS7ppT', '莱西市城北小学', '1331867014', '218.201.98.210', 'lxsjmhsxx@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('981', '徐凤', '666888fengfeng', 'nehL9Q', '', '1331867735', '218.201.98.210', 'xufeng666888@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('982', 'ysmzzxx', 'zxx2661132', 'aQfx3Y', '马站中心校', '1331867756', '60.213.23.82', 'ysmzzxx@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('983', '姜永梅', '1365867769', 'ipGiuw', '', '1331870392', '218.201.98.210', '', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('984', '静静听', '810410', '2cU3Sv', 'song', '1331884299', '218.56.181.6', '854388076@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('985', '左磊', '', 'bErc1p', '', '1331884423', '218.201.98.210', 'zuoleixinxiang@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('986', 'sjzxxx@0315.com', '666999', 'vAMKlh', '', '1331884802', '218.201.98.210', 'lxsjzxxxjdch@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('987', '庞建安', '111111', 'iDmigm', '爆米花', '1331884935', '60.213.48.42', '446279061@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('988', 'wj', 'lz2000822', 'j16Tkp', '小蜜蜂', '1331887967', '218.201.98.210', 'wj19730611@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('989', '杨柳', '13001682778', 'guB5AX', '杨柳', '1331888439', '218.201.98.210', 'genghuiyouxiang@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('990', 'name8005', '87466675', 'wnMG5T', '君知', '1331889140', '218.201.98.210', 'name8005@126.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('991', '15863967700', '111111', 'ZSAyFC', '爆米花', '1331889921', '60.213.48.42', '446279061@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('992', '0324@134.com', '123456', 'kp4r3D', '苏松波', '1331890772', '119.177.203.59', '1149949712@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('993', '1234@126.com', '123456', 'FN8hnM', '苏松波', '1331894942', '119.177.203.59', '1149949314@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('994', '伙伴', '19661128', 'NxbVeE', '', '1331907476', '113.70.149.47', '', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('995', 'gaotingdan', '060851299gao', 'Rbl4X3', '蓝淼', '1331909030', '125.39.162.8', 'gaotingdan0608@126.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('996', 'xuexiao', 'YXQ19981117', 'SW9DVe', '', '1331973743', '113.122.146.108', 'huili419@yahoo.com.cn', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('997', '眼睛', '14660397', 'VHdmTB', '眼睛', '1331988131', '121.25.37.192', '767275842@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('998', 'gyp', '000123', '4TJMJz', 'gyp', '1331993453', '14.222.190.243', 'gongyanping1986@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('999', 'guige@yi', '199421+.', '43tjFF', '雨', '1332010081', '114.135.74.36', '928012735@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1000', '3', '520wao', 'fwFKtW', 'yu', '1332010972', '114.135.74.36', '928012735@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1001', 'kxj1997', 'wudongqiji', 'IbmFI3', '蓝颜', '1332046118', '222.133.132.122', '', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1002', '蓝颜', 'wudongqiji', 'ZaVG7f', '蓝颜', '1332046324', '222.133.132.122', 'abcd521@校视通。com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1003', 'haa8333479', '8333907', 'YPJHMl', '陶女士', '1332056204', '180.121.145.212', 'haa8333479@126.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1004', 'lianxi', '321654', '1sSwzw', 'lianxi', '1332112234', '222.184.69.81', 'lshongzhong@126.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1005', 'mmcxx@0227.com', 'mmcxx66', '27rNxb', 'mmcxx@0227.com', '1332120240', '124.130.27.161', 'mmcxx@0227.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1006', 'sevensixer', '97135185', 'zcJEKZ', '鸿', '1332125919', '58.220.242.130', 'shjsqj@126.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1007', 'ptsz', 'pt82821252', '6BbZIJ', 'ptsz', '1332126873', '183.0.81.106', 'ptsz82821252@126.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1008', 'yzb19690606', '', 'lxQKb8', '', '1332132070', '113.9.23.190', 'yzb19690606@126.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1009', 'zhaofengxian', '799729', 'PYVsUu', 'zhaofengxian', '1332137486', '60.213.7.66', 'zhaofengxian1977', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1010', 'yssglwb', '197810160', 'DZPjlQ', '', '1332140755', '60.213.23.82', 'yssglwb@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1011', 'cjyzcc', '612224', 'lVKtuH', 'zcc', '1332146278', '60.213.23.82', 'cjyzcc@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1012', 'dujiazhou', '712097d', 'UUHrnH', 'dd', '1332147675', '221.2.68.66', 'jz104315@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1013', '欢乐缘', '666666', '1m2Lfz', 'hly', '1332147686', '221.1.177.38', 'dpsx2011eb@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1014', 'wxq603', '962036', 'BaD4Ve', '笔记本', '1332156196', '113.138.169.28', 'wxq13992410961@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1015', 'chenglijie', '883158', 'wFjmsg', 'cheng', '1332199534', '60.15.245.26', 'chenglijiegxl@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1016', '胡升昌', '666999', 'UUTKib', '', '1332201997', '218.201.98.210', 'hsc524@126.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1017', 'wlzx0908.com', '888666', 'SlBrnd', '', '1332203518', '183.66.188.129', '', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1018', '37280119720814102x', '123456', 'e5aApK', '123456', '1332204895', '60.213.23.82', '1296976928@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1019', '彩云飞', '', '285RZk', '', '1332212624', '221.1.212.50', '864218048@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1020', 'jihua', 'jihua', 'ukidxA', 'jihua', '1332218865', '180.125.77.94', 'jihua525@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1021', 'lxzlx', 'zlx710318', 'hAtWMg', 'zlx', '1332223778', '218.201.98.210', 'zhanlixiang@126.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1022', '118df', '030103004', 'iX1iZu', 'fu99', '1332224557', '113.64.145.11', 'fu99jiang@sina.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1023', 'gyys', '3460239', 'Uz1159', '', '1332230065', '221.1.203.50', 'gyys33@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1024', 'wybsmm', '123321', 'rcIDFD', 'wybsmm', '1332231739', '60.213.23.82', 'wybsmm@sohu.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1025', 'tyqz0299com', '600800', 'nIQFCT', '', '1332238004', '58.47.70.73', 'clq1469@126.com', '11', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1026', 'hzs342618@133.com', '342618', 'hJmhEp', '山中小猴', '1332245354', '171.35.22.57', 'hzs342618@126.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1027', 'gmz1985g', '19851202', 'VaM4GK', '关关', '1332246016', '113.82.229.126', 'gmz1985g@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1028', 'sgchl221', 'chl8791232', 'bprReS', '紫气东来', '1332287302', '113.106.134.236', '772009561@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1029', 'xingruiguo', '628101sslyxx', 'rRvuk5', '一小', '1332293391', '60.213.23.82', 'xingrg2009@126.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1030', 'cbzx', '123456', 'kw1CM3', '城北中学', '1332296284', '218.201.98.210', 'softcloud2432121@126.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1031', 'hucheng99', '9900721whb', 'CF2ti9', '胡城', '1332298460', '58.253.247.83', 'whb9900721@tom.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1032', 'h dzzx', '600333', '5slhct', '', '1332299963', '221.1.210.146', '', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1033', 'huili', '885887', 'Elb732', '', '1332303052', '125.127.162.222', '1170410390@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1034', '韦文才', '', 'Y5CXEb', 'WWC', '1332309894', '124.226.51.231', 'WEIWENCAI', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1035', 'number1', '112233', 'PqpyNR', 'ASD', '1332334163', '112.251.19.149', '364738021@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1036', '胡笑玫', '19990905', 'Vgc5y2', 'j', '1332335250', '222.57.24.205', 'hxm@.cn', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1037', '67166793', '123456', 'xvGMNN', 'yang', '1332338655', '111.12.121.18', '67166793@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1038', 'zhengbo1982', '1231516', 'c3KrvF', 'zb', '1332379434', '222.178.145.174', 'zheng-bo39@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1039', 'nhjy689', 'nhjy8581689', 'a7gQmp', 'bmss', '1332380266', '119.184.119.130', 'nhjy689@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1040', 'yeyudi2012', '2012yeyudi', '8hwlBt', 'laodi', '1332381186', '122.224.235.154', 'yeyudididi@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1041', '沂水三中', '2289403', 'm7spN9', '三中', '1332386273', '60.213.23.82', 'rzq200808@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1042', 'caoysh', '123456/.,', 'BcEfwG', 'cao', '1332387461', '221.5.213.2', '344378160@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1043', 'nauxuy', '205221181', 'PbDdw4', '', '1332389288', '180.127.31.183', 'nauxuy@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1044', '陆淑霞老师', '13673933679ziji', 'gCUu2C', '', '1332395341', '61.163.2.107', '', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1045', '招贤二中', '13563325312', 'HNuaj3', '', '1332397288', '221.2.63.74', 'zhang6900639@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1046', '雨桐', '78903mingjuan', '4qwsB8', '', '1332397452', '60.213.23.82', '155105826@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1047', '曹明娟', '78903mingjuan', 'firaEZ', '雨桐', '1332397607', '60.213.23.82', '155105826@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1048', 'xsy250', 'xsy250250', 'ZX4qyA', '', '1332397669', '27.224.120.61', '', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1049', 'hszxlina', '19870916nn', 'UmNaBq', '李娜', '1332397786', '60.213.23.82', 'hszxlina@!26.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1050', '杨东东', 'ydd12345ydd', '3el98c', '东东', '1332401900', '113.103.107.30', '1048475244@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1051', 'duyikun', '750405', 'G8WnVw', '', '1332405714', '123.132.224.45', '963459152@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1052', 'gkp', 'gkp1314520chun', 'D4rfQn', '鲲鹏', '1332413194', '220.242.142.148', '13672425420@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1053', '82470324', '82470324', '38yQ5u', '', '1332423009', '114.238.98.37', 'jslslihong@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1054', 'luohail2009', 'luohaililove11', 'm3MRjk', 'luo', '1332460132', '112.82.88.9', '1443680123@.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1055', 'zhouaidong', '2207780', '5CprJk', '', '1332464992', '180.125.77.94', 'zhouaidongnihao@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1056', 'wdqc88', 'wdqc88', 'uqLaS2', 'wdqc88', '1332466158', '120.84.25.50', 'wdqc88@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1057', 'xiexiumeikelly', '750619', 'tVjMis', '', '1332468387', '221.2.86.190', 'xiexiumei@yahoo.com.cn', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1058', '海阔天空', 'wb19711791bw', 'Ab28kF', '宁海', '1332469580', '221.130.82.89', 'jssnwangbo@126.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1059', '393610988', '123456789', 'KNhLbU', '12', '1332471356', '122.194.11.95', 'j626-626@126.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1060', 'lygmcg', '1978031019287', 'jkAeGI', '', '1332472735', '218.92.13.186', '304399847@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1061', '周美霞', '15865518679', 'xVAEzF', '多多', '1332485278', '218.201.98.210', 'zmx7876@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1062', 'qaz', 'qaz123', 'A3K56B', 'qaz', '1332485531', '218.92.115.165', '313450496@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1063', '重庆市木洞中学', '1231516', '7TUegX', '木洞中学', '1332488214', '222.178.145.174', 'zheng-bo39@163.com', '11', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1064', 'hbh1279', '142704600059', 'MzlhHz', 'houbinghang', '1332488509', '58.56.231.50', 'hbh1279@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1065', 'liushaowei123', '123', 'P9wHd9', '', '1332493350', '122.6.144.6', 'ly16z@1128.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1066', 'zklman123456', 'zklman123456', 'a8QyXQ', '', '1332495525', '222.179.153.243', '1091123278@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1067', '782584822@qq.com', 'qq782584822', 'eCgduQ', 'lxl', '1332511261', '27.224.142.136', 'lxl782584822@126.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1068', 'qq782584822', '782584822', 'E9lCfG', '甘肃省会宁县枝阳中学', '1332511425', '27.224.142.136', 'lxl782584822@126.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1069', 'ksai@qq.com', '1208781739', '9vty7W', '1208781739', '1332542976', '112.251.1.131', '1208781739@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1070', '15362325713', '25713', 'ber2wS', 'lyzgtzx', '1332555857', '14.148.27.238', 'lyzgtzx@126.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1071', '栤樰樂', '1163697345', 'k4lXnI', '乐乐', '1332564295', '125.75.108.22', '1163697345@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1072', 'xiabin', '123456', 'ZiR8iw', '', '1332567229', '113.122.243.190', '422399972@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1073', 'BUWANG', 'bxbasgwannabexst', 'HLugzF', '不忘', '1332584324', '122.143.45.119', '1336647569@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1074', 'blxx', '1234', '9UplK7', '北凌小学', '1332586144', '114.232.212.208', 'dingguangqun@yahoo.com.cn', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1075', '文容', '1964PPP0818', 'TZP1SU', 'wr', '1332590851', '222.179.153.243', 'wrcfc@126.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1076', 'liyang@123', 'liyang990114', 'qm92pI', 'hh', '1332638007', '125.74.107.155', 'liyang4920@qq.com', '10', '0', '0.00', '', '1', '1', '', null, null);
INSERT INTO `v9_member_verify` VALUES ('1077', 'qwe@111', 'liyang990114', 'fHgNG4', 'a', '1332638125', '125.74.107.155', 'liyang4920@qq.com', '10', '0', '0.00', '', '5', '1', '', null, null);
INSERT INTO `v9_member_verify` VALUES ('1078', 'stevia', '6296396', 'dshArP', '马玛俊', '1332680731', '60.172.8.117', 'stevia@21cn.com', '10', '0', '0.00', '', '1', '1', '', null, null);
INSERT INTO `v9_member_verify` VALUES ('1079', 'lichun', '123456', '13zmRN', 'chunyu', '1332684886', '222.179.153.243', '361972362@qq.com', '10', '0', '0.00', '', '1', '1', '', null, null);
INSERT INTO `v9_member_verify` VALUES ('1080', '117', '123000', 'FbJleF', '', '1332685004', '183.7.167.6', '', '10', '0', '0.00', '', '5', '1', '', null, null);
INSERT INTO `v9_member_verify` VALUES ('1081', 'zzh_kk', 'zhou222', 'iFunqJ', '淡定', '1332685220', '222.179.153.243', 'zzh_kk@sohul.com', '10', '0', '0.00', '', '1', '1', '', null, null);
INSERT INTO `v9_member_verify` VALUES ('1082', 'xyzzs', '668903', 'QwDsEj', 'zzs', '1332722918', '219.138.86.156', '807341217@QQ.COM', '10', '0', '0.00', '', '1', '1', '', null, null);
INSERT INTO `v9_member_verify` VALUES ('1083', 'yyyylll521', '5285220', 'qhCQNr', '念訫', '1332723540', '218.7.208.107', 'zhiaihuahua521@163.com', '10', '0', '0.00', '', '1', '1', '', null, null);
INSERT INTO `v9_member_verify` VALUES ('1084', '新疆兵团12师头屯河农场学校', 'tthncxx630210', 'evuUQs', '头屯河农场学校', '1332729711', '124.117.217.190', 'cai_jin2008@126.com', '10', '0', '0.00', '', '1', '1', '', null, null);
INSERT INTO `v9_member_verify` VALUES ('1085', 'qinzher', '2866586', '3TFzpm', '', '1332732878', '219.159.103.176', 'qinzher@qq.com', '10', '0', '0.00', '', '1', '1', '', null, null);
INSERT INTO `v9_member_verify` VALUES ('1099', '677023', '669518', 'VpFkaV', '云际苍鹰', '1332844349', '14.148.47.80', '625739031@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1098', 'w0.0', 'w0.0', 'UJBGaa', 'aaa', '1332840428', '124.133.4.226', '945657414@.qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1097', 'ozh', '68112859', '1J67Ym', 'ozh', '1332834885', '58.253.247.73', 'benio6811@tom.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1096', 'ctc2012', '2102ctc', '12ju3L', '老蔡', '1332834299', '58.47.33.243', 'jxctc2012@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1095', '马胜田', '', 'VKDGAQ', '壮志凌云', '1332833253', '222.133.22.70', '465643493@QQ.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1094', '董建明', '13303320064', 'z97S3G', '教育', '1332815758', '121.18.71.177', '857259011@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1093', 'ganyushex', 'dyj757922', 'aMDn7C', '沙河二小', '1332815059', '122.194.11.138', '254896207@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1100', 'jswxxys', '771217', 'tviamp', 'jsxys', '1332899283', '61.132.87.130', 'jswxxys@126.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1101', 'jsxbj88', 'xbj197188', 'l84Bhl', '闲庭信步', '1332920990', '218.2.66.91', 'xbj-h@126.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1102', 'zxh', '1982329', '5lCklr', '', '1332921070', '221.1.203.50', 'guoyan.bo@sohu.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1103', '110', '123456', 'znzmxF', '邮箱', '1332928715', '123.129.184.3', '245072276qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1104', 'zhuyongqing', '19630311', 'hV4MAr', '', '1332991788', '219.136.229.251', 'yongqing_zhu@tom.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1105', '新教师', '123456789', 'jdb4hi', '朵朵', '1333000087', '119.138.8.36', '541558873@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1106', 'ynszlxs', '20121111', 'skRmFk', '', '1333003789', '123.132.224.26', '', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1107', 'yigeng2006@126.com', '34763722', '8LusM8', '', '1333005534', '219.136.229.254', 'yigeng2006@126.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1108', 'bingshixuanjian', '3227592', 'dbKgZy', 'bsxj', '1333008829', '60.165.132.220', 'bingshixuanjian@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1109', 'zxh223223', '19751019', 'L5kire', '华子', '1333012974', '218.201.98.210', 'zxh223223@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1110', '41425744', 'abc6312876', 'mfR5PP', '逍遥离', '1333018855', '119.138.146.39', '302554831@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1111', '202215', '202215', 'xcg84v', '开心', '1333022910', '61.190.141.212', 'lwb.111@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1112', 'chinaxt', '13953862354', 'BM7vE4', '', '1333074014', '222.174.27.242', 'chenchengqiang@126.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1113', '飞雪', '123456', '9VUkWE', '', '1333074330', '222.174.27.242', '863852101@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1114', '116', '123abc', 'Y3t764', '小学', '1333074428', '117.35.8.133', 'xy781220@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1115', '新泰市东都镇中心小学', '13953862354', 'wy7g8G', 'ccq', '1333074911', '222.174.27.242', 'chenchengqiang@126.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1116', 'zhangjinwei', 'z19700430', 'dPfeFs', '张sir', '1333099254', '121.9.250.6', 'zhjiwe@tom.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1117', '新泰市朝阳育英学校', '13953862354', 'gRlYSc', '朝阳育英', '1333150823', '222.174.27.242', 'chenchengqiang@126.com', '11', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1118', '无优公子', 'lwq18918998664098', 'BkCmnY', '', '1333154098', '61.143.243.210', '494216619@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1119', 'lina', '123456789', '9RM1pJ', 'linagirl123@126', '1333156512', '221.2.67.214', 'linagirl123@126.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1120', 'chenruiling_328062', 'a8a', 'YXK78g', 'chen', '1333157607', '221.2.67.214', 'ruiling1979@sina.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1121', 'xjsy1110.com', 'xjsy66', '6meR96', '', '1333161735', '221.2.67.214', 'weihongfang@yeah.net', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1122', '周兴华', '666999', 'A4vdiy', '开心快乐', '1333175113', '112.225.96.125', 'zxh223223@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1123', '聚焦', 'hgy1984', 'ViLH7t', '', '1333184404', '183.58.95.253', '136529504@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1124', 'yjxxpxx', 'yjxxpxx1', 'RGVtT8', 'xpxx', '1333192315', '27.224.174.19', '1259027279@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1125', 'yjxxoxx', 'yjxxpxx1', 'ig5iyb', 'xpxx', '1333199456', '27.224.174.19', '1259027279@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1126', '1259027279', '062613cxl', 'VG1IZN', '邢坪小学', '1333270620', '27.224.168.245', '1934296812@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1127', '杨集乡邢坪小学', 'yjxxpxx1', 'YTnwhx', '邢坪小学', '1333271276', '27.224.168.245', '1259027279@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1128', '甘肃省会宁县杨集乡邢坪小学', 'yjxxpxx1', 'HffTTd', '邢坪小学', '1333271548', '27.224.168.245', '1259027279@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1129', '752272523', '10010.', 'lUEpDH', '筱迪', '1333282087', '112.233.153.16', '752272523@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1130', 'zhuhui', 'zhuhui888', 'UNQzMr', '', '1333325931', '59.55.34.144', '', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1131', '188', '188000', 'FEL3tZ', '123', '1333330342', '1.56.59.68', '492238486@.qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1132', 'james', '123456', 'F3nvdu', 'james', '1333334719', '112.113.21.128', 'james8v8@yahoo.com.cn', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1133', '123456789', '123456789', 'aGEKCK', '12', '1333344001', '112.251.194.2', '', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1134', '000001', '000001', 't37Rdi', '000001', '1333344080', '112.251.194.2', '', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1135', 'vk9963420', 'vl9963420kun', 'lEqCyq', 'VK', '1333455230', '218.56.251.19', '614326984@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1136', '兰河一中', '5410052', 'E7B48R', '', '1333457573', '60.14.196.103', '', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1137', '练世中', 'lsz20030929', '8WMnIM', '感叹号', '1333498602', '111.124.43.233', '506701283@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1138', 'yanshixia', '19780527', 'AgJYLP', '搜狐', '1333507384', '116.29.28.81', 'fengyan0429@sohu.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1139', 'zjm1506', 'zjm523471', 'VjqEDR', '123', '1333537395', '112.239.39.5', 'zjm1506@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1140', 'wyx_0903', '842693', 'tqXg58', '雪儿', '1333543835', '222.134.62.194', 'wyx_0903@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1141', '118', '123000', 'Mm7AWf', '', '1333549871', '222.81.203.254', '1254191512@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1142', 'wzzzx@0512.com', '600900', '4wyZqT', '', '1333584782', '60.213.146.59', '', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1143', 'moneykengrex', 'lin5201314', 's3HMsA', '群', '1333593617', '183.9.176.112', '659698768@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1144', '235896', '123456', 'd6HNDV', 'dd', '1333594172', '218.201.180.75', 'dpxgq@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1145', 'glyzmkx', '800304', 'TheRas', '', '1333612344', '113.1.132.38', 'glyzmkx@126.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1146', 'dyxx0318@.com', '888666', 'sjQ9JG', '', '1333682019', '218.56.181.10', '', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1147', '张伟53374616', '314159', '9i1Kbc', '阿伟', '1333716199', '112.132.19.246', 'ahthzjzw@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1148', 'hdzzx@0501.com', '600333', '2vQ8uT', 'dt', '1333755324', '221.1.210.146', 'jxg_88888@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1149', '会宁县杨集乡邢坪小学', 'yjxxpxx', 'wqUCzX', '邢坪小学', '1333774025', '27.224.129.16', '1934296812@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1150', 'jinlin', '6255585', 'LHLWVn', '金鳞', '1333775006', '14.113.33.143', '185591832@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1151', '钱兆谦', '666131', 'ddD4rb', '大千', '1333850342', '218.93.197.158', '1260791380@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1152', 'www', 'wwwwww', 'iZrYUS', 'mmm', '1333860005', '121.233.199.12', '724303117@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1153', 'shangyu@0309.com', '555666', 'a66jx6', '', '1333882393', '14.210.4.106', '', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1154', 'bywah', '666518', 'HTUMLG', '', '1333929462', '218.91.159.58', 'wah_8121738@yah00.com.cn', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1155', 'lt023', '654321', 'qlP357', '小罗', '1333934073', '222.177.244.235', '', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1156', 'lt123', '123456', '8eK93y', 'lt', '1333934157', '222.177.244.235', '563916716@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1157', 'jinyuanxiaoxue', 'shilitaohua', 'Z9ZeDr', 'dd', '1333935262', '218.24.4.100', '13644911187@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1158', 'bruce', '123456', 'WdIAh6', 'teacher', '1333948857', '112.113.29.240', 'payneb2126.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1159', 'pxf', '218925', '9tt1Gf', '', '1333948920', '1.57.104.247', 'pxf218925@126.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1160', 'nnnnnn', '123456', 'BAH5e6', 'teracher', '1333948936', '112.113.29.240', 'payneb@126.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1161', 'lcy', '913618', 'FlvSbj', '梁山', '1333958596', '218.7.208.110', '120470833@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1162', '胡光明', '123456', 'hX5sz2', '', '1333960352', '58.220.238.162', '', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1163', '对于', '123123123', 'QQMl96', '', '1333964680', '123.232.29.156', '715406491@qq。com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1164', 'wangdan@1314.com', '5201314', 'HR7tBB', 'wd', '1333972350', '111.127.123.118', '1392661258@qq.com', '11', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1165', 'wangdanqq@1314.com', '5201314', 'qGevwF', 'wd', '1333972689', '111.127.123.118', '13926612582@qq.com', '11', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1166', 'lixiaobo185', 'LXB13100069149', '4DRsG5', 'lixiaobo185', '1333978321', '124.164.36.90', '377321345@QQ.COM', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1167', 'lndlcq', '8237832', 'cplf14', '蓝天', '1334018826', '211.143.86.230', 'lndlcq@126.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1168', '小李小学', '5129436', '5uCMYJ', '小李小学', '1334039905', '218.201.148.100', 'ljzxlxx@126.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1169', '安乐镇联校', '123456', 'LLCETx', '', '1334047257', '61.133.116.18', 'haoyuzhu2007@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1170', 'dzxxaaa', 'zhongguojiaoyu', 'mS4V1A', '春暖花开', '1334049632', '220.180.156.181', '894097584@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1171', 'kz', '1234562736', '6YIqHz', '', '1334058645', '112.255.155.190', '', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1172', 'ms-zhao', '522848834', 'TmqLyk', '明明德', '1334061580', '117.39.52.190', '522848834@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1173', 'juweiguo2000', '19791222', 'vvkfHk', '随风', '1334063466', '60.222.233.155', 'juweiguo2000@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1174', 'j70sjj', '411310', 'CdAaEx', 'sj', '1334115511', '222.178.58.120', 'xwq_china@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1175', 'hongfeidawei', '123', 'SCmdfC', '', '1334115649', '218.56.9.66', 'hongfeidawei@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1176', '1375640324', '584519200.0', '5puVvp', '李超', '1334138131', '117.36.192.66', '1375640324@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1177', 'xiyue', '15353917zhang', 'f1AFT5', '琦', '1334149363', '112.231.205.183', '709559987@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1178', '879723632', 'zsy13536249128z', 'rlrFy3', '', '1334187511', '59.37.160.32', 'hpzsy@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1179', '恩平市横陂镇中心小学', '123456780', 'qlHQrx', '', '1334187700', '59.37.160.32', 'hpzsy@qq.com', '11', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1180', '吴小燕', '770929', '4XpL3f', '1046837204', '1334188122', '59.37.160.32', '1046837204@qq.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1181', '季宅乡小', 'jtl6691978', 'QqYIyX', '特特', '1334192355', '61.153.247.162', 'jtl2005m@163.com', '10', '0', '0.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1182', 'shenyiwu', '133666', 'ZD8qY5', '', '1334571497', '125.93.31.250', '', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1183', 'chenchaoxia', '974136', 'kSKCaY', 'ccx', '1334573571', '27.9.180.21', '361477151@qq.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1184', '139', '13996643896', 'KhqNqk', 'dahuo', '1334583088', '180.84.88.123', '530104341@qq.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1185', '0085', '00850085', '8KwGnv', 'fish', '1334624565', '222.32.33.129', 'fish0085@qq.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1186', 'hanchuanxuexiao', '123456', 'tXxyuM', '历练', '1334630827', '118.183.102.216', '249323448@qq.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1187', 'wulonglong', '7524050', '7jrWYP', '龙帅富', '1334633612', '183.60.103.222', 'wulonglong_2009@163.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1188', 'wulonglong12', '7524050', 'nbScIh', '龙副帅', '1334633746', '183.60.103.222', 'wulonglong_2009@163.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1189', 'lantian7235196', '7235196', '5lSKnR', '蓝田民族中学', '1334647100', '125.93.31.250', '13794515180', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1190', 'xgzxma', '751102', 'Kb7sld', '不倒翁', '1334660407', '218.75.83.233', 'xgzxma@163.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1191', 'xiefuhua', 'cw19890204', 'hN8Jc1', '小谢', '1334672462', '120.198.91.49', 'xie-fuhua@163.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1192', 'xlxzhxiaoxue', '5510076', '3baVdL', '兴隆乡直小学', '1334707060', '122.157.198.183', 'xlxzhxiaoxue@126.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1193', '13013068256', '000123', 'SBnHlL', 'xmcx', '1334728644', '14.153.137.129', '332711132@qq', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1194', '板贡小学', '123456', 'KdGhIF', '', '1334732307', '124.226.40.234', '', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1195', '周新姣', '123456abc', 'wtInS8', 'bangongxiaoxue', '1334733279', '124.226.40.234', 'bangongxiaoxue@163.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1196', '丈八丘联小', '6982024', 'jYZUdG', '夸美纽斯', '1334735057', '124.132.99.66', 'zhangbaqiulianxiao@126.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1197', 'yxjyg', '442515', 't8KQaJ', '金永刚', '1334739612', '61.184.81.111', 'yxjyg@126.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1198', 'wuge16888', 'zhang88888888', 'iWlmwL', 'john', '1334743198', '121.12.153.68', '187310179@qq.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1199', 'hdf', '199421+.', '8esefB', 'tr', '1334745579', '119.1.232.61', '928012735@.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1200', '雾里看花', '62492521', 'vafZkk', 'lqz', '1334808735', '218.201.30.205', 'lqz00000@163.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1201', 'nzzx@0511.com', '600900', 'jz9wgW', '南镇中学', '1334818390', '61.133.116.27', 'gtnzzx@126.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1202', 'koushengli', '13845339585', 'JrKsuA', '163邮箱', '1334818503', '113.3.234.184', 'lkksksl@163.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1203', 'aixuexi@163.com', '123456', 'aZ5AzU', '', '1334824633', '114.249.210.219', '267228618@qq.com', '10', '20', '20.00', '', '1', '1', '', null, null);
INSERT INTO `v9_member_verify` VALUES ('1204', '2302013777', '123456789', 'jSwsnw', '高斯', '1334837506', '113.8.137.81', '2302013777@qq.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1205', 'aw12583576', '1506350251', 'KLi3cu', '思语洁', '1334845514', '59.59.159.242', '1850973029@qq.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1206', 'txwlm@163.com', 'wlm8443225070!', 'hHddw8', '沧海一笑', '1334882857', '122.225.50.14', 'txwlm@163.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1207', '甘南县兴隆乡中心小学', '5510076', 'ELBMQr', '兴隆乡小', '1334887521', '1.60.214.0', 'xlxzhxiaoxue@126.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1208', '中国地', 'jsxzxty4718098', 'eaxw5q', '', '1334891034', '222.187.96.33', 'lixinjuncaiji@163.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1209', 'haitianzhixin', '123456789', 'auwxZS', 'ga', '1334901715', '222.187.96.33', '905112186@qq.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1210', '小米粒', '13019775208', 'ts2ymm', 'jyzx', '1334910741', '218.246.181.20', 'zhangruodan@126.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1211', '0538', 'a13853841615', 'HbepZq', '0538', '1334911081', '60.213.146.59', 'a13853841615@sohu.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1212', '赵景泽', '7181360800', 'g36lF8', '景泽', '1334926459', '119.164.34.83', '718136080@qq.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1213', '1804646235', '666666.', '16xQVn', '', '1334926762', '112.245.111.161', '1804646235@qq.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1214', 'trw521349', 'wgy54324585ygw', 'GbLLwl', 'trw', '1334935114', '123.146.116.54', '447883725@qq.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1215', '810737153', '520woaini', 'twZxNE', '新苑', '1334996404', '125.74.177.121', '810737153', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1216', '高洪振', 'woaini963.', 'xaEcXE', '高', '1335006040', '113.120.3.135', '1293378635@qq.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1217', 'sdlcyz', '147258', 'ac5LER', 'yz', '1335012249', '111.14.65.71', 'zhangzh1@163.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1218', '710741050', '820316', 'ZBuztW', '谢', '1335047120', '222.77.15.194', 'qzfz@225.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1219', '1556326167', '531531531', 'RGVxiS', 'zh', '1335057274', '1.60.106.8', '1556326167@qq.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1220', 'xiejiashun', '3391411', 'mqJGx9', 'shun', '1335071070', '183.235.9.198', 'xiejiashun3@163.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1221', '幸会', '98171585aiqi', 'WsjRzb', '', '1335076505', '121.7.224.170', 'xinghui98171585@163.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1222', '1109426215', 'libaoluo5625.', 'QRD5PU', 'll珞珞uo', '1335078301', '60.31.161.204', 'libaoluo826574817@163.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1223', '淮安市茭陵乡东高小学', '85470364', 'u7dXEm', '大河奔流', '1335100272', '49.87.60.86', 'haczgcs@163.com', '11', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1224', 'galactic', '19860319', 'xK8iQk', '珠有泪', '1335145862', '60.190.124.34', 'fanxiaofei1986@126.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1225', 'liuxinhua', '7431560qq', 'rNEgpy', 'lxh', '1335148456', '123.164.84.14', 'qlslxh@126.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1226', 'jxjx@0226.com', '888666', 'RftxHN', '雾里云', '1335150227', '116.53.251.114', '371577090@qq.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1227', 'jxjx@0227.com', '888666', 'hLe5vH', '雾里云', '1335150978', '116.53.251.114', '371577090@qq.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1228', 'jxjx@0228.com', '888666', 'khp6EL', '雾里云', '1335151124', '116.53.251.114', '371577090@qq.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1229', 'atshmn', '111111', 'lF21a6', 'atshmn', '1335160515', '122.136.135.178', 'atshmn@126.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1230', 'yaowang456', '123456789', 'zQp4E2', 'yaowang456', '1335163075', '221.130.82.89', 'yaowang456@163.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1231', '兴民物理', '3281165hnzxmqq', 'pSZCFr', '烟圈', '1335164504', '60.165.132.250', 'zhangxinminal@163.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1232', '清风朗月', 'xyz631', 'pqvcxf', '清风朗月', '1335165736', '221.1.213.194', 'zgybq@163.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1233', 'skyxiu6040', '3402482', 'RULDwY', 'xiu', '1335170841', '218.24.4.106', '2119_xiu@163.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1234', 'liuhaixia', '1012', 'I5QyI7', 'LHX', '1335171561', '58.18.54.39', '2247963181@qq.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1235', 'wangming', '000123', 'hypqga', '海电中学', '1335173267', '124.126.218.164', '123@126.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1236', 'yaowang534', '123456789', '88xGnJ', 'yaowang534', '1335220228', '221.130.82.89', 'yaowang456@163.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1237', 'aaa', 'aaasssddd', 'BSLWDN', '哎哎哎', '1335223279', '121.233.181.13', 'aaa@163.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1238', 'bbb', 'aaasssddd', 'KbZ9FS', 'bbb', '1335223372', '121.233.181.13', 'bbb@163.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1239', 'qiaogenf', '1103929', 'shVZPC', 'qgf', '1335230931', '118.186.1.3', 'qgfan1983@163.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1240', 'lilan801020', '801020', 'fLi9mS', '', '1335234965', '222.133.12.78', 'lilan19801020@163', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1241', 'sgyzlyx', 'sgyzlyx', '5b9pcj', '', '1335253082', '59.32.238.149', 'gdsgyzlyx@126.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1242', 'yd4x', '113355', 'CutdLX', 'yd4x', '1335263668', '122.73.226.254', 'yd4x@163.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1243', 'lkksjyf', 'jyf1234568', 'EsC5ZA', '小林', '1335265995', '113.7.97.56', 'lkksjyf@163.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1244', 'aoxuehongmei', 'limei123456', '7S6zjd', '835684673@qq.com', '1335271677', '1.59.211.32', '835684673@qq.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1245', 'hongmei', 'limei123456', 'QKsWJ1', '835684673@qq.com', '1335272105', '1.59.211.32', '835684673@qq.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1246', 'chenlj', 'nideairen', 'tfn5EJ', '', '1335319980', '123.164.84.14', 'chenlj19790307@126.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1247', 'chenlijuan', 'nideairen', 'GxMff3', '', '1335320053', '123.164.84.14', 'chenlj19790307@126.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1248', 'gx624', '062425', 'jEFjLg', '', '1335321220', '111.161.11.153', '', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1249', 'jyjsx03', '07103591941', 'XbgpwZ', '北冰洋', '1335322765', '122.228.176.114', 'jyjsx_2007@163.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1250', 'csw6636', '730905', 'ey9dbT', '', '1335334737', '122.158.153.226', 'csw6636@163.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1251', 'qi', '123456', '9H21UK', 'qi', '1335336767', '121.28.15.11', 'ysdzzx@126.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1252', '赵海峰', '186266', 'mgzI9u', 'zhao', '1335339524', '218.9.116.26', ' zhaoshunyao186266@126.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1253', '138', '136000', 'XGyJty', 'feifei', '1335350511', '60.252.57.147', 'duanyifei850630@163.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1254', 'feixiang0209005', '7217273', 'q91UDe', 'feixiang', '1335358736', '125.127.184.46', 'glorycash@gmail.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1255', 'only', '13853173907', '2S4Q3c', '珊', '1335360782', '119.163.187.30', '1442349264@qq.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1256', '321', '13853173907', '9SDgGG', '珊', '1335360942', '119.163.187.30', '1442349264@qq.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1257', 'liujm0318', '640318', 'wQWimY', '', '1335398631', '218.7.204.112', '0454liujinmin@163.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1258', 'dszx@0315.com', '111888', 'Hm76tN', '', '1335929000', '218.84.70.89', '924182346qq@.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1259', '寄望明天', 'hh10286868', 'aN1AjC', '寄望明天', '1335934315', '222.178.58.117', '643339800@qq.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1260', 'LXYZ', 'LXYZ123456', 'dhmL3p', '临县一中', '1335943374', '183.186.141.130', '1163559432@QQ.COM', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1261', 'zhaodongxia', 'zhao3333', 'YPSN7u', '', '1335945348', '218.246.181.20', 'wanghailong_828@sina.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1262', '暖暖冰心', 'wzy100@love', 'qL11Hf', '小小', '1335945557', '58.57.39.187', 'yxx0115@sina.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1263', 'xxsyzx', 'YLPAzsf', 'fVRlsk', 'syzx', '1335948739', '58.253.247.78', 'xxsyzx66@163.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1264', '54188', '54188', 'Crxgtf', 'han', '1335961535', '222.133.22.37', 'a1097755781@163.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1265', '结束波', '958517209', 'dwN3sm', '的返回给', '1336002215', '58.18.54.39', '', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1266', '不老心', '417408', 'j1XKlK', '不老心', '1336003234', '58.220.238.162', 'slh6248@sina.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1267', 'zhouzhou', '258369', 'lBySxb', '啊秀', '1336005372', '36.40.210.25', '924454863@qq.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1268', 'kdjkdj', 'kdjkdj', 'pLYqXH', 'kdj', '1336010127', '222.180.76.134', '971300008@qq.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1269', '吴帅', '1124', 'En8bcq', '', '1336013003', '58.18.54.39', 'fdzx@163.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1270', 'xiaoxianli', '20070303', 'q39Rsa', 'xxl', '1336018108', '60.190.178.222', 'xxl0303@126.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1271', 'lisuyan5055', 'lsy4485098', 'gTYiHQ', '落霞', '1336018180', '60.190.178.222', 'lisuyan5055@163.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1272', '123123', '322080', 'Rfcc52', '小刚', '1336019930', '113.2.105.226', 'yong322080@163.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1273', '15215286248', '123456', 'dF4F2N', '', '1336025082', '113.251.154.204', '', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1274', '8278966', '197702010085', 'gaIZYr', '1007873405', '1336025523', '222.32.33.129', '1007873405@qq.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1275', 'JQT197112', '19711218', 'pqjgkH', '剑客', '1336025704', '218.201.98.210', 'jqt1971@163.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1276', '1101781629', 'thl32018', 'NZv63X', '牛', '1336043121', '60.168.194.196', '', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1277', '无极无求', 'gdstcywzs', 'n4dpel', '', '1336090745', '61.141.0.199', 'cycnwzs2009@163.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1278', 'zhaohong1', 'zhaohong2', 's5nyu9', 'zhaohong', '1336096163', '123.133.132.198', 'leihong6269@163.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1279', 'dxw3658', 'Aa20020517', '7aWz7Z', '代皓宇', '1336134495', '60.213.49.122', 'dxw3658@163.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1280', '295808779@qq.com', '123456', '3HMLWm', '123', '1336174884', '58.18.54.39', '295808779@qq.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1281', 'LUSHUAI', '333', 'Tg3TK3', 'LS', '1336178406', '58.18.54.39', '115462950@QQ,COM', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1282', 'wendyding', '634602qjsh', 'J6lV9Z', 'wendy', '1336202566', '119.121.13.29', 'woshidpxnon@163.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1283', 'aaaaa123456', '123456', '3TZzhm', 'brucele', '1336206613', '112.113.22.190', 'payneb@126.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1284', 'zxcv123', '123456', 'gItYh1', 'mnbv', '1336206724', '112.113.22.190', 'payneb@126.com', '11', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1285', '108', '136000', 'wmIphb', 'rachel', '1336210943', '122.65.230.229', 'xuexinxueke@163.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1286', '9963420', '9963420', 'rraqG9', 'vk', '1336214202', '117.136.9.149', '614326984@163.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1287', 'zhoutingxuan', 'zj122119', 'Fdxbc9', '', '1336216844', '112.233.56.103', '', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1288', 'zhoushouy', '8856295', 'gipDIm', 'xinyishi', '1336269532', '58.218.181.38', 'zhshy668866@163.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1289', 'nanboss', '123456', 'g8NH4L', 'nanboss', '1336274158', '125.109.4.150', 'nanboss@163.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1290', 'ylzx@126939', '', 'ijlnKs', '李明华', '1336274560', '222.133.122.82', '1269398503@qq.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1291', 'he', '5201314', 'mKR8Al', 'enen', '1336280267', '58.18.54.39', '1273759810@qq.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1292', '田江海', '834039', 'PaBAzt', '浪花一朵', '1336285393', '222.87.184.168', '179672995@qq.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1293', 'jxp9', '821102op', 'zIu8dR', '郝好', '1336305227', '60.190.124.45', 'jxp9@163.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1294', '2322085918', 'lwd-19960213', 'XFjqth', '大哥', '1336309020', '219.147.216.7', '875507171@qq.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1295', '江川学校教学', '000123', 'ccrA6S', '', '1336349393', '218.7.204.112', 'jcxhf816@163.com', '10', '20', '20.00', '', '1', '1', '', null, null);
INSERT INTO `v9_member_verify` VALUES ('1296', 'ying11111', 'yjj123', 'QwhWc9', 'ying11111', '1336351197', '60.190.124.45', 'ying11111_007@sina.cn', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1297', '张建彩', 'lyqx66', 'JXKwPd', '张', '1336359359', '218.201.183.102', 'zgzjc1977@163.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1298', 'sunstone', 'lcy@1013', 'jzbCIl', '向阳花', '1336366208', '218.7.208.249', 'goldmemory@sohu.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1299', 'gyz2738', '2738129mn', 'Q9eHCA', '', '1336374925', '119.179.218.70', 'gyz2738@163.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1300', '乌鲁木齐市第111中学', '111888', 'W1pQu7', '', '1336375980', '221.181.14.94', '', '11', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1301', 'ww0572556', '0572556', '7le17d', '流星', '1336389312', '113.7.22.125', 'ww0572556@tom.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1302', 'ww1405', '0572556', 'z5A7LQ', '66', '1336390338', '113.7.22.125', 'ww1405@163.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1303', '六月', '123123123', 'NeAhq7', '刘', '1336402028', '58.18.54.39', 'fdzx@163.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1304', 'xzhua', '4592942', 'MtVkPv', '缙云娃哈哈', '1336443206', '60.190.124.34', 'xizihua4588@163.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1305', 'jyzx@0501.com', '5556663', 'MCAETk', '', '1336457014', '218.246.181.20', '', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1306', 'wyc', '135135', 'QCeTuW', '庆发中学', '1336461491', '60.219.61.33', 'qfzxwangyanchao@163.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1307', 'sunday6881', 'ljw88888', 'wZeyvi', '石头', '1336466773', '58.215.244.202', '172723313@qq.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1308', 'liqele123', '8857646-', 'gRHW1n', 'fdzx@163.com', '1336470992', '58.18.54.39', 'www.8857646@163.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1309', 'vaxzz520', '123456', 'rjPpgg', '00', '1336471027', '58.18.54.39', 'sucunzheng@mail.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1310', 'gushangyue', '6336050', 'FKLMLU', 'gushangyue', '1336491318', '182.240.65.118', 'gushangyue@163.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1311', 'zfc', '585858', 'LN6zHy', '', '1336524686', '218.92.13.186', '', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1312', '65523888', '13019789258', 'ExGQWg', '28', '1336532221', '221.209.11.150', 'wwwhhhxxx1111@163.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1313', '001', 'fzx1314520', 'UEG67G', '木马', '1336533393', '58.18.54.39', '1477998383@qq.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1314', 'liuxuejun', '198209150817', 'dqLd1d', '神彩飞扬', '1336544585', '218.10.181.137', 'lxj519282725@126.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1315', '洪梅', '740128', 'N63FMz', '421073682.@。com', '1336555582', '110.16.3.56', '420173682。@。QQcom', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1316', '108@0502', '600900', 'PP3HgJ', '十七中', '1336562503', '112.228.37.153', '909832790@qq.c0m', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1317', '107', '', 'tNBvZe', '地平线', '1336563185', '112.4.171.85', 'yhzaju-bo2@163.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1318', 'snxjhxx', 'snxjhxx', 'grtCr9', 'jh', '1336564788', '222.187.96.40', 'jhxx88@163.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1319', 'lyh', '123456', 'ynj5zC', '杨梅小学', '1336572325', '222.84.123.224', 'liangyuhuai@126.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1320', '杨梅小学', '123456', 'BPvsj1', '杨梅小学', '1336572739', '222.84.123.224', 'lctpymxx@123.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1321', '安徽太和双庙中心校', '8376027', 'cXmYrh', '', '1336617937', '220.180.161.26', 'wjx0385@163.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1322', '温尔518', 'cjm1230518', 'LVb8du', '温尔', '1336628330', '202.96.114.73', 'qtqzcjm@163.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1323', 'dblxx@0504.com', '600900', 'vS6u3D', '', '1336635318', '222.180.68.34', 'yanyongzcy793@sina.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1324', 'weiwencai', '123456abc', 'NJzWnn', 'bgxx', '1336636344', '124.226.48.254', 'bangongxiaoxue@163.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1325', 'zwb0000', '123456', '58q84P', '', '1336637991', '61.167.234.161', 'zz@11.112', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1326', '1234567', '23456', 'fTzGy4', '969', '1336646593', '219.144.129.39', '4155555', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1327', '123ass', '1234', '2xJVKN', '969', '1336646767', '219.144.129.39', 'www.1360349228@qq.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1328', '清水芙蓉', 'jilin19740305+8', 'Y4Iijf', '芙蓉', '1336656334', '27.224.245.150', '874598110', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1329', 'songqichen', 'songqichen', 'jpTlbb', '', '1336720368', '122.156.176.147', '635320300@qq.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1330', 'zhsxx', '6350766', '2YAfwG', '沾林四小', '1336720630', '122.156.176.147', '635320300@qq.com', '11', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1331', '望月听荷', '3136305', 'LPHcKX', '', '1336721482', '58.242.97.22', '', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1332', '1314', '1314', 'HthiAh', '1', '1336779986', '58.18.54.39', '1040581539@qq.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1333', 'Survivalee', '123456', 'V5uQ2w', 'SL', '1336798820', '180.170.99.113', 'Survivalee', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1334', 'jqzyzxj', 'jqzy711015', 'gZRDzR', '', '1336814654', '118.182.160.117', 'jqzyzxj@126.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1335', 'dzp2369239135', '940126DONGdzp', 'VWV3Tj', '', '1336814800', '58.18.54.39', '', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1336', 'liwei', '147258369', 'djyhXB', '', '1336877523', '112.230.28.88', 'y123liwei@163.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1337', 'sffxo@0320.com', '188666', 'SxXjWs', '', '1336909840', '219.153.153.145', 'czh814253@163.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1338', 'z慧j飞翔', 'zj012768937', 'gx1gDi', '', '1336923841', '110.232.60.19', '916636837@qq.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1339', 'hzxx', '6519659', 'iNNuPN', '', '1336973763', '123.129.147.135', 'nghzhxlgogo@163.com', '10', '20', '20.00', '', '1', '1', '', null, null);
INSERT INTO `v9_member_verify` VALUES ('1340', 'nghzhxl', 'hz-6519659', 'yVDhGv', 'hzxx', '1336974080', '123.129.147.135', 'nghzhxlgogo@163.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1341', '界首市第二小学', '3136305', 'bQfEcI', '界首市第二小学', '1337038943', '58.242.97.22', 'ahjsfx@163.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1342', 'TASSZ123', '123456789', 'SZEVdx', '123.com', '1337068542', '112.250.88.162', 'Wang@ 123.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1343', '109', '13946939517', 'gr7R8Y', '109', '1337070905', '122.158.16.157', 'xll@126.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1344', '2012', '333333', 'u8sLP8', 'OK', '1337071286', '122.158.16.157', 'zzg20042008@126.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1345', 'QGWX', '000000', 'ICyXP8', 'YUQING', '1337074142', '112.123.214.113', 'ADTHST003@163.COM', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1346', 'liuyongku', '', 'dvysqs', '', '1337096441', '113.116.160.252', '', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1347', 'stzxx@com', '188666', 'eS1SKP', 'FHJ236645', '1337121702', '112.122.209.15', 'FHJ236645', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1348', 'xjzx', '7216115.', 'RsUQGk', '海浪', '1337130208', '1.57.85.190', 'xjzxxxthj@163.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1349', 'xueyuan', '196911', 'kXtFw2', 'nick', '1337133063', '218.23.23.194', 'xueyuan248', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1350', 'dyzw', '123456', 'BMxHYm', '', '1337134082', '60.190.124.34', '15361017@qq.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1351', 'lwl361', 'gslxyd651', '6Ys2FN', 'lwl361', '1337146135', '60.165.219.55', 'lwl361@163.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1352', 'stzxx0510.com', '188666', 'H2wXFW', 'FHJ236645', '1337146673', '112.123.208.189', 'FHJ236645', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1353', 'stzxx@0510.com', '188666', 'GDwfk6', 'FHJ236645', '1337148593', '112.123.208.189', 'FHJ236645', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1354', '越秀山', 'qwertypo', 'cxWncH', '越秀山', '1337162978', '122.157.143.125', 'yuexiushan1972@163.com', '11', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1355', '张庆坤', 'qwertypo', 'd4C3Gh', 'qfzzx@0428.com', '1337163120', '122.157.143.125', 'zhangqingkun1976@163.com', '11', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1356', 'santang', '8464500', 'LJmYBa', 'adst', '1337177237', '112.123.214.113', 'adthst003@163.com', '11', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1357', 'pfzx', '57995439', '1kPmtd', '123', '1337240209', '113.4.56.72', 'hangtianh@163.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1358', 'cxl2012', '18932735517', 'H9KIBg', 'cxl', '1337259566', '222.38.223.191', 'changxianlin@126.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1359', 'dyscz@123.com', '5282698', 'q1frgc', '', '1337262150', '218.201.247.141', '', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1360', '满可心', '800304', '3D19SG', '', '1337305886', '1.63.123.81', 'glyzmkx@126.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1361', 'zzx1838675723', 'zzx5710', 'gZw9k6', 'caonima', '1337323685', '58.18.54.39', '1838675723@qq.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1362', '452886928', 'Lzl650422', 'pgjdTd', '321', '1337324743', '61.128.225.13', 'lizulie522491@163.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1363', '15866037146', 'LJ64BAN', 'IhjxzA', '', '1337412111', '123.128.18.50', '', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1364', '2495932507', 'LJ64BAN', 'D5WVS7', '', '1337413024', '123.128.18.50', '', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1365', 'zkf1461013283', '83744129', 'VvdFqy', 'wu', '1337430227', '218.56.248.27', '1461013283@qq.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1366', 'zkf.zl', '83744129', 'puK5Pb', '张开放', '1337430320', '218.56.248.27', '584923412@qq.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1367', 'zkf83744129', '13954176314', 'K4HIDi', '校视通', '1337430459', '218.56.248.27', '2668852911@qq.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1368', '邓锦宁', '13768023102', 'WYujvM', '宁静', '1337502892', '124.226.44.23', 'dengjining2005@126.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1369', '0910', '0910', 'vZG6xC', 'wu', '1337512374', '58.18.54.39', '522310204qq.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1370', 'wuzhxian1', '123wzx', 'tfqI9h', 'wuzhixian1', '1337580722', '218.7.204.112', '1254727493@qq.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1371', 'dwz@1208', '600888', 'kiDmB8', '', '1337581821', '218.56.160.8', 'chlgn@163.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1372', 'liyangfbi', '19830326.', '5LrpaQ', '小羊', '1337585275', '221.209.43.238', 'liuyangfbi@163.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1373', 'liuyangfbi', '19830326.', 'V7LwJ6', '小羊', '1337585543', '221.209.43.238', 'liuyangfbi@163.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1374', '继电高中', '999999', 'meV42g', '继高', '1337587073', '113.9.163.85', 'wz2005g@163.com', '11', '20', '20.00', '', '1', '1', '', null, null);
INSERT INTO `v9_member_verify` VALUES ('1375', 'JH14LILI', '199642', 'TsMaW5', '', '1337595506', '123.138.157.147', 'li1035@com.cn', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1376', 'woshimeinv01@126.com', '123456', 'VLrS6J', '李琪琪', '1337654071', '114.249.209.80', 'woshimeinv01@126.com', '10', '20', '20.00', '', '1', '1', '', null, null);
INSERT INTO `v9_member_verify` VALUES ('1377', '阳光明媚', '13093362381', 'esDunz', '阳光', '1337654298', '220.179.91.136', '269306521@qq.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1378', '凉月漫天', '1377566252', 'DYzQIc', '凉月漫天', '1337666577', '111.161.14.174', '1377566252@qq.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1379', '梁玉湘', 'dqlyx640703', 'PURbHh', '', '1337667631', '218.246.181.122', 'sszlzf!163.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1380', 'ie', '123456', 'abL1P5', 'ie', '1337678950', '60.14.63.14', 'dhzfcs@163.com', '11', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1381', 'linglong', 'ZHang19980405', 'nQ1tg5', 'll', '1337682139', '122.157.85.42', '493057058@qq.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1382', '幸运女神', '', 'DKd93j', 'qq.com', '1337687691', '113.7.188.228', 'www.1216360399qq.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1383', 'jqszym', '', 'L528SV', '独晓', '1337727326', '60.165.176.120', 'jqlszxym@163.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1384', 'zhuxufeng2003', '215461', '9Mcwmt', '', '1337731845', '221.209.111.146', 'zhuxufeng8017@sina.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1385', 'zzez@0920.com', '600900', '9shK1w', 'zzez@0920.com', '1337732912', '124.164.236.40', 'zzez@0920.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1386', 'xxcc963', 'yangjingpu', 'QauVCq', 'yang', '1337742041', '58.18.54.39', 'www.978158902@QQ.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1387', '段文菊', '6993633', 'NkTU4v', '', '1337742094', '221.181.14.94', '496900414@qq.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1388', 'qiuxueqiong', 'tpzx2007', 'qILeZL', 'qxqu1973', '1337747989', '222.84.121.187', 'qxqu1973@126.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1389', 'qiuxueqiong1996', 'tpzx2007', 'nTWske', 'qxqu', '1337748280', '222.84.121.187', 'qxqu1973@126.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1390', '1550742801', 'wzh680312', '4dcgsc', '', '1337758723', '221.181.14.94', '1550742801@qq.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1391', '射阳县长荡小学', '630918', 'kcm9Q1', '长小', '1337762275', '222.188.10.47', '13921865377@163.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1392', 'chenzhengxue', 'chencflove1314', 'yNtsSq', 'chenlove', '1337771478', '112.230.19.157', '774966807@qq.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1393', 'quchao', '357915716', 'QPX66Q', 'quchao', '1337774844', '221.206.178.89', 'quchao860811@163.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1394', '王玲', 'wangling', 'aJrza9', 'xuexiao234', '1337776408', '221.1.177.14', 'xuexiao234@126.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1395', 'zhaojinli', '99669966', 'X48gyy', '', '1337816793', '218.7.208.240', 'zhaojinli99@yahoo.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1396', '东坎镇三里小学', '220631', 'BnPiln', '', '1337818317', '112.82.31.8', 'bhhtc8@126.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1397', 'q573791264', 'Q11234', 'V3RbQN', '123', '1337819074', '58.18.54.39', '1531720786', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1398', 'slwzc', '123456', 'Y59ue4', 'zc', '1337839284', '113.6.54.205', 'slwzc_1972@163.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1399', 'ynsz', '123', 'AJY8NQ', '好', '1337841390', '123.132.224.26', '', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1400', 'bus222', '122296', 'x6fWeI', 'xiaofu', '1337843944', '61.186.183.47', 'sjgfuxianqin222@126.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1401', 'jolinliu', '198545', '8LPpP5', '小小刘', '1337905468', '218.108.109.114', 'jolinliu@163.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1402', 'ljci@0427.com', '188166', 'wEZtrg', '', '1337912362', '218.201.148.100', '', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1403', 'dfszy689', '135908', 's6hDp2', '新丰二小', '1337912940', '222.188.81.70', 'dfszy689@yahoo.com.cn', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1404', 'lczxxx@0526.com', '166188', 'csITLR', '', '1337917201', '60.214.146.162', '', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1405', '刘伟', '820219', 'U35P4k', 'lw', '1337919219', '220.169.58.10', '30340468@QQ。COM', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1406', 'Stzxx@.0510.com', '188666', 'rtdDV8', '', '1337954699', '218.23.29.225', '', '11', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1407', '1241729313', 'liuxiarong', 'jrdxpz', '广电中心举行', '1337990101', '60.221.178.112', '1241729313@qq.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1408', 'liuliu0', '123456789', 'z5pEmI', '发送者', '1337990375', '60.221.178.112', '1241729313@qq.com', '11', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1409', 'lpj142536', 'liu123456789', 'jpPMMj', 'lll', '1337990516', '60.221.178.112', 'lpj241@foxmail.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1410', '164003', '0123', 'anZBda', '', '1338001741', '112.114.2.118', '', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1411', '164033', '0123', 'JYsImR', '', '1338001816', '112.114.2.118', '', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1412', 'dtyzjcp', '123456789', 'QqsNGp', 'xingyunxing', '1338091141', '27.227.144.243', '416129548@qq.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1413', 'linda244', '244jun', 'dijaib', 'HLJ', '1338100396', '117.27.126.56', '904011990@qq.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1414', '137', '000123', 'hEHHka', '何', '1338110344', '14.210.71.94', '182186480662@139.COM', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1415', 'symbxx', 'symbxx', '4EKbzD', '高沟双语', '1338111874', '222.184.69.19', 'heijunma530@163.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1416', 'dlz6600391', '6600391', 'fKpJty', 'dl', '1338164179', '116.1.179.135', 'dlz6600391@163.com', '11', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1417', 'bldl6600391', '6600391', 'ghJFZ3', 'dl', '1338164804', '116.1.179.135', 'dlz6600391@163.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1418', 'wxgloselove', 'qazzaq', 'KqYLu1', '', '1338171131', '58.219.252.148', 'wxgloselove@163.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1419', '653lwx', '6413403', '6mbUDI', '', '1338181267', '123.133.185.126', '1366109206@qq.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1420', 'ldc2007', '858597123', 'vnkKjr', 'ldc', '1338188648', '222.216.226.18', 'liangdechun@126.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1421', 'jun04', '123456', 'MmLtXl', 'xdj', '1338194905', '14.107.254.61', 'jun04@126.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1422', '1191035315', '640705', 'iXLCVF', '大山', '1338206600', '118.122.204.45', '1191035315@qq.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1423', 'wgxlsw', '828369', 'Ed1HDz', '', '1338267251', '117.92.96.182', 'wgxlsw88@163.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1424', 'fusainan', '8103595', 'v9MXY1', 'nannan', '1338270106', '222.170.105.202', 'fusainan@163.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1425', '258258lcs', '5616239', 'CE6NS7', 'lcs', '1338270771', '113.135.193.101', '258258lcs@163.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1426', 'woyie', '882638', 'UDI4WW', 'woyie', '1338274596', '222.133.114.242', 'woyie@sina.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1427', '董义军', '123456', '7Xcvwj', 'dyj', '1338277894', '122.194.11.138', '254896207@qq.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1428', 'lbl27731', '771028', 'PRM8Kq', '旋怡', '1338279878', '58.59.177.54', '50538670@qq.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1429', '风云再起', '1359+08', 'xN4MBJ', '新丰二小', '1338335645', '222.188.81.70', 'dfszy689@yahoo.com.cn', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1430', '胡建平', 'mao13058678188', '6GAn6n', '静', '1338348468', '221.5.228.130', '564579518@QQ.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1431', '乐祥富', '123456789a', 'NGQaHD', '', '1338461042', '14.210.0.102', '', '11', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1432', 'yolanda', 'xw5201314cpw', 'rdd5F6', '', '1338518951', '222.188.81.70', 'yolanda88@sohu.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1433', 'yolandacpw', 'xw5201314cpw', '5fn53e', 'com', '1338519108', '222.188.81.70', 'yolanda88@sohu.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1434', 'zl775941157', '123456', 'AuNAFn', '123', '1338525941', '116.115.32.29', '775941157', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1435', 'ljz', '19790901', 'I8bgJ4', 'ljz', '1338555149', '58.18.54.39', 'hjhfgsyangqiang@163.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1436', 'lihuanshu', '165698', 'MKUC9q', '', '1338622485', '14.108.210.101', '247873832@qq.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1437', 'wuweijun2155569', 'wwj2155569', 'AEjJjv', 'dddddddd', '1338627044', '220.191.254.74', '284830637@qq.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1438', 'zkf1412925334', 'zkf83744129', 'PKbWuR', 'aini', '1338635658', '218.56.254.253', '1412925334@qq.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1439', '白逸辰', '950811', 'BknhuG', '小白', '1338638804', '60.31.160.92', '123456@com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1440', 'smy1070800187', 'smy0908', 'Pr7U1L', '1070800187', '1338638884', '110.102.169.218', '1070800187@qq.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1441', '0530', '000123', 'zSfQTP', '打大苏打', '1338644156', '118.120.124.199', '214377685@qq.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1442', 'qq0731637', '2424142', 'IsS6jJ', '高峰', '1338649476', '113.6.35.29', 'gaofeng1637@163.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1443', 'l3342578', '3342578', '4eshnW', '3z', '1338689511', '58.18.54.39', '729502664@QQ.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1444', 'lmczx1230@com', '600555', 'UUTZjJ', '云南永平县龙门中学', '1338701173', '180.130.202.196', '995787019', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1445', 'gzx', '5XHOmpj201314', 'c1uwd1', 'Jay', '1338792711', '58.18.54.39', 'gzx15648868664@163.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1446', 'lcd388688', '680922', 'LAhCKi', '', '1338796589', '218.65.242.38', 'lcd388688@163.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1447', 'hz7662420', '7662420', 'nUqFkt', '宏智初中', '1338796620', '180.142.88.77', 'hz7662420@163.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1448', '落英', 'lyh275220.', 'QzFZz5', 'fdzx@163.com', '1338799545', '58.18.54.39', '731343890@qq.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1449', '李先生', 'lyx123', 'xlUN21', '', '1338809979', '60.15.227.248', '413058008qq.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1450', '705746347', '15847474696', 'lZrMMN', '武', '1338860318', '110.16.251.165', '705746347@qq.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1451', '790760403', '15847474696', 'aDhyAm', 'wu', '1338860897', '110.16.251.165', '705746347@qq.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1452', '威志', '111222', 'tBA8Ve', 'John', '1338883630', '60.15.227.248', 'liyong5840817@163.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1453', '理想在跳舞', 'Splendid1999', 'C3c88Y', '努力ING', '1338887757', '123.129.101.202', '343682720@qq.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1454', '风铃', 'nulifendou', 'yzWWXm', 'yin', '1338905524', '116.1.179.52', 'xuqunying3556755@163.com.cn', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1455', 'mfm', '19741128', '5hBrQ6', '大家好', '1338940349', '124.226.47.146', 'mafuming1974', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1456', '翁武', 'ww19620930', '2F4IaA', '翁小虎', '1338942945', '218.65.242.101', '2677286679@qq.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1457', 'zhch3034', '43942422085', 'JvWWa5', '石中', '1338951278', '124.226.3.185', 'zhch3034@qq.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1458', '0531', '000123', 'gf4TYv', '', '1338970693', '116.252.247.61', 'blh5570@163.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1459', 'hero', '198684', 'JFIYuu', 'hero', '1338971511', '113.135.193.101', 'herosyf@163.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1460', 'chenfeiyao7', 'chuanliao7', 'exxqMm', '料老爷', '1339026629', '202.107.222.130', '84105516@qq.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1461', '1008', '138000', 'GRNFM8', 'hbr', '1339026708', '113.135.193.101', '584764266@qq.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1462', 'xjxpc', '6529598', 'jyIylC', 'xujie', '1339040027', '112.234.158.201', '522977485@qq.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1463', 'maxiaomei551', '650105514299', 'f7bkUc', '111', '1339041468', '221.181.14.94', '744574644@qq.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1464', 'lchq332', 'lchq3321', 'fMWdAZ', 'sdf', '1339121202', '113.242.195.1', 'lchq783@126.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1465', '淮安区苏嘴镇一心小学', '85312851', 'XKfEWL', '', '1339122770', '117.95.20.242', 'jy640128z@163.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1466', 'yanghongdi', '870304', '4fNBYu', 'DODO', '1339138939', '222.133.14.151', 'yanghongdi-521@163.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1467', '好像是盆菜', 'h110236', 'gbMRHn', '网易', '1339140776', '218.65.242.70', 'hmz1114@163.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1468', '12536', '1520892577', 'I1IEtw', '123', '1339157162', '117.136.9.140', '', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1469', '王', '1520892577', 'gP3SlQ', '', '1339157297', '117.136.9.140', '', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1470', '98chengqi', '98.chengqi', 'MA9GX2', '', '1339158749', '112.231.201.1', '1843564211@qq.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1471', 'mn664537220', 'mn1234567', 'w4UXx7', 'cjwzx', '1339163770', '113.135.193.101', 'cjwzx5931011@163.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1472', 'ourgo', '19800822', 'LprcJg', 'ytr', '1339165235', '113.138.105.226', 'ourgo@qq.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1473', '1425659706', '13688621122', 'fpp6En', '小宇', '1339222794', '124.133.68.242', '1425659706.@qq.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1474', 'zxzc@0531.com', '13688621122', '1s6ctC', '小宇', '1339223550', '124.133.68.242', '1425659706@qq.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1475', '安然小鱼', '', 'AA2PZP', '璨', '1339296176', '119.84.218.86', '862097219', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1476', 'fyj2lxh', 'zhufufyj198177', '1jvMPr', '3天56次', '1339382442', '218.201.62.3', '104536355@qq.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1477', 'ljy123456789', '123456789.', 'UDtAwe', 'bode', '1339386593', '112.228.28.52', '1397840677@qq.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1478', 'ljy19980425', '123456789.', 'qjCR7v', '博得', '1339386995', '112.228.28.52', 'lijiyi19980425@163.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1479', '牛伯爵', 'yc..314159265358', '9jNnRg', '诚一笑', '1339389108', '183.94.112.103', '2278985291@qq.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1480', '00100', '753951', 'vxCQe3', '九年制学校', '1339422106', '218.200.29.106', '286528548@qq.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1481', 'hubeichch123', '86410809', '9K78Nr', '陈成', '1339660234', '218.108.54.18', 'hubeichch@163.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1482', '金华', 'jinhua', 'uaKfK1', '', '1339721283', '222.184.10.194', 'jh8481277@sina.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1483', 'zyy45456', 'zyy12123', 'qkZmpx', '', '1339726698', '111.124.116.96', '592574788@qq.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1484', 'taotao', '123f456t', 'ibtIsk', '', '1339736770', '218.201.109.98', 'fantiehan2012@126.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1485', 'bkhpxx', '196910111511', 'sC12B5', '后坪镇小', '1339932430', '116.208.91.24', 'bkhpxx@126.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1486', 'dlez@0619.com', '168168', 'UMEv5d', 'dlez', '1340097725', '116.1.179.135', '1965099494@qq.com', '11', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1487', 'gangan0423@163.com', 'gangan04232163.com', '5gbL1v', '丹丹', '1340187359', '1.58.149.39', '726950092@qq.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1488', '陈福龙', '620908065', '8sRyaA', '', '1340241386', '120.195.61.116', '531681376@qq.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1489', ' 王君sansan', 'wj19970303', '3tK1FD', '三三', '1340262261', '58.242.109.89', '1148832991@qq.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1490', '王子lilian', 'wj19970303', '3wF8u7', '三三', '1340262455', '58.242.109.89', '114883291@qq.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1491', '刘健', 'LIUJIAN1997111', 'N3nhqR', '你~猜卟透·', '1340276689', '222.132.197.151', '1136235737@QQ.COM', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1492', 'cui2012', '123456789', 'DQFXzn', '崔', '1340297213', '111.14.58.156', '253998897@qq.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1493', 'jiangzhiwei', '123456', 'mxd98G', '姜志伟', '1340331445', '61.190.74.186', '419779314@qq.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1494', '大熊猫', 'sxx5916', 'cuWfsT', '大熊猫', '1340343079', '119.183.160.42', '605200790@qq.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1495', 'sfh', '1111', 'e85hjx', '', '1340354305', '60.165.132.206', '', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1496', '1156205574', '101020', '39W7EC', '1233', '1340414331', '119.176.175.166', '1156205574@qq.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1497', '娘子灼华胜桃夭', '1472583690d', 'bg2gGF', '璨', '1340447490', '14.108.240.190', '357218129', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1498', '利', '5211314', '2jWCzD', '', '1340450921', '220.180.167.63', '', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1499', 'xiehe_perfect', 'xiehewonderful', 'Kt1tMs', '千里独行', '1340595042', '124.119.61.34', 'xiehe_perfect@163.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1500', 'yaya', '849562', 'q1Jq7q', 'yaya', '1340604667', '60.213.44.44', 'yaya2103@yahoo.cn', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1501', '班华蔼', '760330', 'nPq7wx', '', '1340606298', '116.8.61.248', 'qiaoyinhuaai@163.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1502', '12363', '12363', 'dJh6Gd', '12363', '1340607508', '60.213.146.59', 'a13853841615@sohu.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1503', 'mhl_0623', '19700623', 'zg5KXB', 'mm', '1340635573', '125.122.196.102', 'mhl_0623@163.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1504', '123456798', '12345687', 'riHqrw', '272601148@qq.com', '1340701738', '110.73.186.57', '272601148@qq.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1505', '于卫华', '801186', 'tMPDQi', 'ycyvh', '1340711370', '112.242.114.109', 'ycyvh.398@163.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1506', 'tmzxhza', '19670903', 'U5bpUY', 'wangyi', '1340763994', '221.1.177.14', 'houzhaoan@163.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1507', 'ssq3295', '780215', 'gLj2xb', '海阔天空', '1340779258', '218.108.72.3', 'ssq3295@126.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1508', 'lijiayu', '663664', 'LlXleL', '李嘉', '1340792362', '58.18.54.39', '305096124@qq.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1509', 'chenshizhen', 'ch8561198', 'G1GcyY', 'chenshizhen', '1340939891', '114.233.175.46', '1172037880@qq.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1510', '谷瑞荣', '15331584011', 'P48b8B', 'GRR', '1340947841', '112.113.38.155', '958537643@qq.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1511', ' wxin', '233456a', '6X2CDY', '', '1340955554', '114.225.146.28', '', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1512', '774666946', '2334486', 'JiXVfr', 'dbbdbb2', '1341050311', '119.6.126.133', '695208049@qq.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1513', '8012353', '147258369', 'qreFw4', 'zhang', '1341114107', '112.250.88.162', '768873753@qq.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1514', 'fzf1975', 'xy5085530', 'amqFhl', '迪爱', '1341114728', '117.81.226.162', 'feizhengf@126.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1515', '78766', '857686', 'HnaPIJ', '', '1341314363', '115.49.146.252', '1443478766@qq.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1516', 'pcc197855', '197855', 'kxIIcw', 'pcc', '1341383511', '58.59.177.54', 'pcc197855@tom.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1517', '巧儿', '740921', 'bFpFt9', '', '1341396929', '113.248.227.23', '695285832@qq.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1518', 'junge111222', '111222junge', 'uKSqmg', '', '1341410000', '180.139.109.167', 'junge111222@163.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1519', 'baixiaoyan', '020907', 'nar8AZ', '小白', '1341478195', '180.138.184.38', 'bxy2002090057@163.com', '10', '20', '20.00', '', '1', '1', '', null, null);
INSERT INTO `v9_member_verify` VALUES ('1520', 'sdcsljy', '5281898', 'UhxABT', '简易', '1341631479', '112.228.63.20', 'lvjinyi0616@126.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1521', '1478963', '1478963', 'c25EUv', 'y123liwei', '1341632339', '112.230.25.107', 'y123liwei@163.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1522', 'sjs8888', '123456789', 'tfFumT', '孙荆生', '1341737249', '221.8.107.214', '522113518@qq.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1523', 'zlsz123', '123456789', '5dccGI', '孙荆生', '1341737451', '221.8.107.214', '522113518@qq.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1524', 'sjs666', '666666', '5QeFlc', '孙荆生', '1341737655', '221.8.107.214', '522113518@qq.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1525', 'aini', 'ah123', 'U6cJbL', 'ZH', '1341905933', '60.168.140.121', '1836061993', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1526', 'zh', '123456', 'JkF7WY', 'ZH', '1341907092', '60.168.140.121', '1936061993', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1527', 'lyd', '100200', 'wmZZD3', 'lyd', '1341926433', '60.165.133.21', '447143386@qq.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1528', 'tanghuangjin', '115326', 'Y8i5EL', '黄进', '1341970848', '58.45.139.85', '41653297@qq.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1529', 'y123liwei', 'y123liwei', 'tG4FM7', '123', '1341976064', '112.230.13.59', 'y123liwei@163.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1530', 'jtszgtl', '13884227413', 'vAzpmq', 'QQ', '1342062741', '60.165.133.21', '714392377@qq.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1531', 'zhjh', '85905698', 'UkFaLW', '', '1342069236', '118.182.109.92', '1131494845@qq.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1532', 'li', '13673316594', 'trtyS9', 'l', '1342071623', '110.198.129.70', '1729642102@qq.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1533', 'pcling', '253600', '7RjFeF', 'pcling', '1342080864', '116.116.229.37', '714426358@qq.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1534', 'telma0804', '081026', 'VGLjWV', '小石头', '1342083735', '1.63.219.165', 'telma0804@163.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1535', 'susu', '13737959507', 'ewQdsM', 'susu', '1342106069', '222.83.177.145', 'suliuhong_1976', '10', '20', '20.00', '', '5', '1', '', null, null);
INSERT INTO `v9_member_verify` VALUES ('1536', 'y123liyuqian', 'y123liwei', 'zJuUvg', '123', '1342267166', '112.230.13.169', 'y123liyuqian@163.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1537', 'jtszcx@0521.cn', '', 'WGI9Qt', 'jtsz', '1342339229', '60.165.133.21', '1064468695qq.@com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1538', 'bottle168', 'bottle', 'CrAFnp', 'bottle', '1342344916', '117.136.9.155', 'bottle.168@163.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1539', 'ddwmtt', 'tianli', '1WMrDK', '', '1342349556', '182.37.168.186', 'ddddwmtty@163.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1540', '1334471363', '1334471363', 'CBRAqC', '', '1342430586', '182.35.12.253', '1334471363@qq.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1541', '钊哥', '', 'afakVX', '钊', '1342511483', '121.22.4.180', '2499475788@qq.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1542', 'cjdxliyan@163.com', '242142', 'yh6qnP', '', '1342518535', '183.44.94.74', 'cjdxliyan@163.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1543', 'jin1hu', 'jin1259huwp', 'ASbr5M', 'Brothers', '1342520874', '112.250.147.132', 'jxa65312360163.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1544', 'LWY1996222', '3529090', 'Sq8sMx', '梁WY', '1342708383', '221.206.205.61', '825228767@qq.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1545', 'yangyan', '7565668', 'P688EK', '11', '1342745378', '110.245.193.102', '1340478727@qq.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1546', 'zwd@1314.com', 'jk.1314', 'ZruLUR', '好好学习', '1342770039', '60.216.188.50', '94298403@qq.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1547', 'wzx@2200.com', 'zxccxz', 'vyjmcp', '为孩子作辅导', '1342770226', '60.216.188.50', '914298403@qq.com', '11', '20', '20.00', '', '1', '1', '', null, null);
INSERT INTO `v9_member_verify` VALUES ('1548', '2531516450', '15663437819', 'WL3nY3', '周凤英', '1342771781', '1.189.16.37', '2531516450@qq.com', '11', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1549', 'kuokuo', '64536173', 'r9cfXe', 'mao', '1342785328', '1.61.91.243', '1163541756com.cn', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1550', '906701586', 'zhang1314wenxin6', 'igBbFl', '洋洋', '1342790632', '58.83.247.85', '906701586@qq.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1551', '956081099', 'zhangwenxin', 'ILngux', '喵喵', '1342791240', '58.83.247.85', '956081099@qq.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1552', '李中元', 'yuan021265', 'NQc2YA', '', '1342808863', '125.83.233.6', '735509148@qq.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1553', '331403222', '', 'WxVixQ', '好孩子', '1342929035', '124.133.73.186', '331403227', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1554', '331403221', '', 'eUZINw', '好孩子', '1342929523', '124.133.73.186', '331403227', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1555', 'xcfxx', '53672990', 'gXi41b', 'xcfxx', '1342968287', '125.58.170.3', 'xcfxx@163.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1556', 'ranxiuyun123', '', '8eJEMN', '千寻', '1343052318', '111.85.2.66', '626091753', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1557', 'lomica', 'lorilomi', 'MvCChZ', 'lomi', '1343134805', '60.188.117.225', 'lomica@tianya.cn', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1558', '1ulala', 'lorilomi', 'Jhl7jY', 'lulala', '1343135182', '60.188.117.225', 'lulala@tianya.cn', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1559', 'lisonghe', 'lsh671124OK', 'KFAgAk', '', '1343204978', '218.23.29.225', '708885290@qq.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1560', 'lihe', 'lsh671124q', 'NTSZGu', '', '1343313630', '218.23.29.225', '708885290@qq.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1561', '0324@126.com', '123456', 'KRpVmd', '一', '1343555309', '119.177.200.79', '1294931089@qq.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1562', 'lxqzzzy', '970707', 'PxY3Yx', '', '1343782190', '218.201.109.106', '', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1563', 'fxzx@.0925.com', '123', 'zbXzL2', 'fxzx@.0925.com', '1343869815', '120.0.224.170', 'fxzx@.0925.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1564', 'zhizhi900123', 'linlin900', 'UjKJpd', '林', '1343892512', '60.9.241.155', '3', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1565', 'byxjjhq', '750808', 'Qgr2fG', '一杯清茶', '1343964180', '61.155.66.222', 'jhq_yx037@163.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1566', '蓝天', '800517lxl', 'MlpDG8', '蓝天', '1344062830', '1.87.144.154', '269866988@qq.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1567', 'miaocunsheng', '252114', 'YimYGY', 'miaocunsheng', '1344154551', '182.39.3.171', 'miaocunsheng@sina.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1568', '1', '111111', '4IW4db', '1', '1344185178', '182.37.172.215', '1@126.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1569', '黄金峰112', 'alonehate112', 'cGhJnY', '爱', '1344514339', '122.157.125.137', '861400350@qq.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1570', 'xhzxa1020.com', '12369874', 'wEpyh2', 'xhzxa1020.com', '1344600949', '60.221.223.204', 'youmall@qq.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1571', '2433019', '13523125640', 'R6x29l', 'tom', '1344642668', '115.52.86.228', '2426214836@qq.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1572', '2426214836', '13523125640', 'QPyYXG', 'tom', '1344642786', '115.52.86.228', '2426214836@qq.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1573', 'zhengyao001', '3281662', '9jPfql', 'zhengyao001', '1344670727', '117.136.9.200', '921707177@qq.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1574', '小荷尖尖', '2165648', 'kYXrz2', '豆豆', '1344763390', '113.121.131.212', 'd1558858@163.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1575', 'lylijinhang', '731128', 'LglW2F', 'dabao', '1344836742', '221.2.68.14', 'lizhenqing814@126.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1576', '绝望绝望爱', 'alonehate112', '2nsmYy', '爱', '1344917298', '122.157.69.40', '861400350@qq.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1577', '0532', '123123', 'KzKGNn', 'fw', '1345277444', '182.129.10.120', '1063540835@qq.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1578', 'hyzx@0420.com.', '236400', 'KRdxyw', '', '1345340887', '112.122.213.191', '', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1579', 'moke6368@126.com', '236400', 'lfe2Qn', '李永', '1345428851', '58.243.10.118', 'moke6368@126.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1580', 'jysggzsy', '8661648', 'TYvBL9', '', '1345429131', '122.193.10.17', 'jysggzsy@126.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1581', 'sfb1020', '', 'UITkTe', 'sfb1020@yahoo.com.cn', '1345475184', '61.233.63.26', 'sfb1020@yahoo.com.cn', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1582', 'wxm819110', '819110', 'CWr3Jw', '奋斗', '1345475395', '1.24.113.123', '1225320119@qq.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1583', '123@123.com', '555555', '9CKrVf', '秦少123', '1345550966', '119.187.175.110', '1336980064@qq.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1584', '秦少123', '123456789', 'FMAEpi', '秦少123', '1345551080', '119.187.175.110', '1336980064@qq.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1585', '申一鸣', '8661648', 'GBDLiF', '', '1345597826', '122.193.10.17', 'sy690726@163.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1586', '王关平', '661011', 'xefDmD', '关平', '1345681678', '219.144.51.115', 'wang65959@163.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1587', '关平', '661011', 'rfK8d7', '关平', '1345682411', '219.144.51.115', 'wangping661011@126.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1588', 'lkwxzgk', '13845310568', 'yLCGbL', '大库', '1345708080', '113.3.235.99', 'lkwxzgk@163.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1589', '徐鹏', 'jgp7878789', 'QRDfQR', '徐鹏', '1345771647', '222.172.68.161', 'nenjiangshewu@163.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1590', '追风', '8024483', 'eJg21P', '追风', '1345859053', '218.92.193.130', 'wangweihua1659@126.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1591', 'bdxsz', '4512003', 'izHRgg', 'lsx', '1346057473', '58.52.200.130', '178089371@qq.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1592', 'sczz-68', 'sczz-68', 'xfkd5K', '', '1346140488', '118.228.151.240', 'yzc0309@yahoo.com.cn', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1595', 'wxb5968627', '666888', 'Ryh2K9', '', '1346228237', '36.6.3.5', 'wxb5763186@163.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1594', '1350149570', '1301821987', 'tSaMqA', '飞飞', '1346208847', '121.29.134.117', '1350149570', '10', '20', '20.00', '', '5', '1', '', null, null);
INSERT INTO `v9_member_verify` VALUES ('1596', 'xtw168', '070316', 'i3pxpF', '小天', '1346290160', '183.20.116.104', 'xtianwu@163.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1597', '高规范', '6620281', 'sWm5Yi', '', '1346316926', '58.18.54.39', '1634159284@QQ。COM', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1598', 'heijunma530', '112120569', 'TIvF6Z', '高沟双语学校', '1346322643', '222.184.69.52', 'heijunma530@163.com', '11', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1599', 'ztcc678', '781012', 'XFJcF9', '妄念', '1346327453', '60.160.3.184', '353032260@qq.com', '10', '20', '20.00', '', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1600', 'zxszlzd', '897216897216', 'rNZnBV', '', '1375171950', '60.223.237.182', 'zxszlzd@126.com', '10', '20', '20.00', 'array (\n  \'phones\' => \'\',\n)', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1601', 'lilyzll', '017132', 'jPH62d', 'lily', '1375373088', '163.204.32.235', '229018967@qq.com', '10', '20', '20.00', 'array (\n  \'phones\' => \'13433897523\',\n)', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1602', '聊城二中', '123456', 'uYLZyn', '太阳', '1375631717', '222.175.23.150', 'yangyu65108@163.com', '10', '20', '20.00', 'array (\n  \'phones\' => \'13563559359\',\n)', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1603', '无语013', '6405102', 'jRhxQA', '难得糊涂', '1375669929', '113.3.18.81', 'wantong200503@163.com', '10', '20', '20.00', 'array (\n  \'phones\' => \'\',\n)', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1620', 'PWW5632649', '5632649', '1vGJXL', '王文平', '1377915240', '112.53.71.82', 'wangwenping66@126.com', '10', '20', '20.00', '', '0', '1', null, '王文平', '15092608948');
INSERT INTO `v9_member_verify` VALUES ('1605', 'ada', '123456', 'WiCzlg', 'kk', '1375945613', '183.1.205.218', '1234562@126.com', '10', '20', '20.00', 'array (\n  \'phones\' => \'\',\n)', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1606', 'wx0469', '123456', 'L5x7qT', '冰凌花', '1375946491', '218.7.204.142', '50751024@qq.com', '10', '20', '20.00', 'array (\n  \'phones\' => \'\',\n)', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1607', 'hx123', 'bailinnanlu4hao', 'sPNZzD', '', '1376115992', '125.39.187.41', 'shuxuexinxiang@yeah.net', '10', '20', '20.00', 'array (\n  \'phones\' => \'\',\n)', '5', '1', '', null, null);
INSERT INTO `v9_member_verify` VALUES ('1608', '13233581189', '13233581189', 'SzIpF1', 'Y', '1376276907', '118.77.27.44', '1941136056@QQ.CON', '10', '20', '20.00', 'array (\n  \'phones\' => \'\',\n)', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1609', 'xst000079', '328497', 'CaZcB8', 'ydh', '1376723872', '1.61.157.71', 'yayz@163.com', '11', '20', '20.00', 'array (\n  \'phones\' => \'\',\n)', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1610', 'dzjxst', '955600', 'X3g6Un', 'dzj', '1376917301', '1.24.139.174', '303662524@qq.com', '10', '20', '20.00', 'array (\n  \'phones\' => \'\',\n)', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1611', '贾本利', '', '6Zdbxk', '天外神客', '1376995552', '117.23.66.6', '528217332@qq.com', '10', '20', '20.00', 'array (\n  \'phones\' => \'\',\n)', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1612', '徐刚', 'xg47060', 'Ev2rlY', '徐刚', '1377160426', '183.92.215.201', '1390069108@qq.com', '10', '20', '20.00', 'array (\n  \'phones\' => \'\',\n)', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1613', 'xg123', '4706055', 'ZsMn1y', '徐刚', '1377162130', '183.92.215.201', '1191344658@qq.com', '10', '20', '20.00', 'array (\n  \'phones\' => \'\',\n)', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1614', '木林听风', 'l2009i010y30andong', 'PebJP6', '木枫', '1377255913', '123.130.243.182', '1258420821@qq.com', '10', '20', '20.00', 'array (\n  \'phones\' => \'15269049661\',\n)', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1615', 'lishuhong', '', 'kKJRJb', 'nancy', '1377409662', '122.5.140.57', '1322892692@qq.com', '10', '20', '20.00', 'array (\n  \'phones\' => \'\',\n)', '0', '1', null, null, null);
INSERT INTO `v9_member_verify` VALUES ('1621', '853800584', 'ZGDAO123', 'McsJPm', '曾广道', '1377937497', '180.130.160.56', '853800584@qq.com', '10', '20', '20.00', '', '0', '1', null, '曾广道', '13769540762');
INSERT INTO `v9_member_verify` VALUES ('1619', '小童童', '19990806wm', 'ngHlxy', '张顺湘', '1377830615', '221.2.63.76', 'zhangshunxang@163.com', '10', '20', '20.00', '', '0', '1', null, '张顺湘', '15263305389');
INSERT INTO `v9_member_verify` VALUES ('1622', 't673000170', '13508754201', 'eCCClz', '谭飞', '1378019770', '112.113.166.193', '673000170@qq.com', '10', '20', '20.00', '', '0', '1', null, '谭飞', '13508754201');
INSERT INTO `v9_member_verify` VALUES ('1623', 'sdlysaw', 'lysaw870110', 'l363qh', 'Evan', '1378131596', '175.43.124.41', 'sdlysaw@126.com', '10', '20', '20.00', '', '0', '1', null, 'Evan', '15092869236');
INSERT INTO `v9_member_verify` VALUES ('1624', '无名', '665832', 'wmWGjn', '无名', '1378195323', '218.23.126.224', 'chanshi1979@yahoo.com.cn', '11', '20', '20.00', '', '0', '1', null, '无名', '18019972878');
INSERT INTO `v9_member_verify` VALUES ('1625', 'womenaiyou', '3362361', '46UvVh', '付忠友', '1378264315', '61.233.195.189', 'womenaiyou@126.com', '10', '20', '20.00', '', '0', '1', null, '付忠友', '18719870930');
INSERT INTO `v9_member_verify` VALUES ('1626', 'blchenjin', '123456', 'nVw5Ue', '陈进', '1378281183', '218.23.126.40', '406874195@qq.com', '10', '20', '20.00', '', '0', '1', null, '陈进', '18955134078');
INSERT INTO `v9_member_verify` VALUES ('1629', '宜宾市忠孝街小淡', 'yb143516', 'dCVK6k', '廖京科', '1378563586', '119.7.105.190', '153427617@qq.com', '10', '20', '20.00', '', '0', '1', null, '廖京科', '13550736006');
INSERT INTO `v9_member_verify` VALUES ('1630', '宜宾市忠孝街小学', 'yb143516', 'Yc5Rd1', '廖京科', '1378565248', '119.7.105.190', '2506382757@qq.com', '10', '20', '20.00', '', '0', '1', null, '廖京科', '18990992459');
INSERT INTO `v9_member_verify` VALUES ('1631', 'yuanfen', 'yuanfen99', 'NcILz4', '姜勇为', '1378719076', '42.48.201.226', '513616653@qq.com', '10', '20', '20.00', '', '0', '1', null, '姜勇为', '15007253420');
INSERT INTO `v9_member_verify` VALUES ('1648', '广东省云浮市云安中学', '352581652', 'Hq6UBW', '梁利', '1379765563', '221.4.142.70', '352581652@qq.com', '10', '20', '20.00', '', '0', '1', null, '梁利', '15819528672');
INSERT INTO `v9_member_verify` VALUES ('1633', '无锡市西漳中学', '698504', 'Z2miY3', '张泉', '1378825219', '112.25.210.81', '286197921@qq.com', '10', '20', '20.00', '', '1', '1', '', '张泉', '15861497170');
INSERT INTO `v9_member_verify` VALUES ('1634', '广州大学', 'a1234a', 'QMCt1j', '刘贤炬', '1378829699', '202.192.80.3', '301092826@qq.com', '10', '20', '20.00', '', '0', '1', null, '刘贤炬', '13699737371');
INSERT INTO `v9_member_verify` VALUES ('1649', '杨井学区', 'yzy520', 'd14zPE', '杨奋高', '1379939893', '124.115.105.48', 'y_zy520@163.com', '10', '20', '20.00', '', '0', '1', null, '杨奋高', '18391423735');
INSERT INTO `v9_member_verify` VALUES ('1650', '临沂十四中', 'wsx123', '3l915r', '某某', '1379998850', '112.228.145.108', '2581984835@qq.com', '10', '20', '20.00', '', '0', '1', null, '某某', '18315724846');
INSERT INTO `v9_member_verify` VALUES ('1638', '新华小学', '123321', 'SzXIzt', '张红', '1378967034', '123.182.138.85', 'machao3688@126.com', '10', '20', '20.00', '', '0', '1', null, '张红', '13513081339');
INSERT INTO `v9_member_verify` VALUES ('1639', '冀明中学', '510918', 'dnIQKN', '羡海龙', '1378976173', '61.182.86.23', 'xianhailong_1111@126.com', '10', '20', '20.00', '', '0', '1', null, '羡海龙', '13932195503');
INSERT INTO `v9_member_verify` VALUES ('1640', '崔江湾中学', '15594231882wsghyt186', 'J8USTC', '王生贵', '1379039421', '113.200.208.226', 'wsghyt186@163.com', '10', '20', '20.00', '', '0', '1', null, '王生贵', '13289489456');
INSERT INTO `v9_member_verify` VALUES ('1647', '泽林高中', 'wz34171772', 'Tz9p8b', '卫婉珍', '1379486853', '42.48.201.225', '540191585@qq.com', '10', '20', '20.00', '', '0', '1', null, '卫婉珍', '13995821339');
INSERT INTO `v9_member_verify` VALUES ('1642', '汇英中学', '524100', 'tLsKCU', '高静茹', '1379062283', '60.172.54.142', '273638399@qq.com', '10', '20', '20.00', '', '0', '1', null, '高静茹', '18133133012');
INSERT INTO `v9_member_verify` VALUES ('1643', '拉仁中学', '123613', 'V6I5yP', '韦林', '1379292369', '124.227.23.136', '392785698@qq.com', '10', '20', '20.00', '', '0', '1', null, '韦林', '18018785463');
INSERT INTO `v9_member_verify` VALUES ('1644', '孝感市英才外国语学校', '2510818', 'jayfYb', '徐高斌', '1379293975', '42.48.201.225', '1693981610@qq.com', '10', '20', '20.00', '', '0', '1', null, '徐高斌', '13797129298');
INSERT INTO `v9_member_verify` VALUES ('1645', '毛湖淌初级中学', '123456', 'Kuqihz', '郑吉元', '1379310804', '42.48.201.226', 'ydzhjy@126.com', '10', '20', '20.00', '', '0', '1', null, '郑吉元', '15872673754');
INSERT INTO `v9_member_verify` VALUES ('1651', '一百零二中', 'wsx123', 'sNKvrr', '我额', '1380001155', '112.228.145.108', '2856521067@qq.com', '10', '20', '20.00', '', '0', '1', null, '我额', '18315724846');
INSERT INTO `v9_member_verify` VALUES ('1652', '夏津县第六中学', 'liangchao', 'c2EWe5', '梁朝', '1380031588', '119.189.213.107', '894248186@qq.com', '10', '20', '20.00', '', '0', '1', null, '梁朝', '13056892563');
INSERT INTO `v9_member_verify` VALUES ('1653', '杨井中心小学', 'wxjMJN5201314', 'pBn4HP', '马英九', '1380117638', '124.115.105.48', '309982539@qq.com', '10', '20', '20.00', '', '0', '1', null, '马英九', '15929058786');
INSERT INTO `v9_member_verify` VALUES ('1654', '无棣县水湾镇中学', '188166', 'mHKrlb', '188166', '1380241293', '58.59.116.182', 'wdsshj@126.com', '11', '20', '20.00', '', '0', '1', null, '188166', '18354325828');
INSERT INTO `v9_member_verify` VALUES ('1655', 'qtzx', '123456A', 'UGcdxm', 'qtzx', '1380508199', '111.206.51.7', '406251491@QQ.COM', '10', '20', '20.00', '', '0', '1', null, 'qtzx', '18947609222');
INSERT INTO `v9_member_verify` VALUES ('1656', '乔木小学', '15971394079', '3hBgk6', '郭冬萌', '1380696962', '119.185.15.200', '715127249@qq.com', '10', '20', '20.00', '', '0', '1', null, '郭冬萌', '15865213922');
INSERT INTO `v9_member_verify` VALUES ('1657', '青阳镇醴泉小学', '15971394079', 'WTnQII', '郭冬萌', '1380697285', '119.185.15.200', '715127249@qq.com', '10', '20', '20.00', '', '0', '1', null, '郭冬萌', '15865213922');
INSERT INTO `v9_member_verify` VALUES ('1658', '翠峦区二中', '15246915235', 'k4PrHD', '刘佳媚', '1380887780', '112.98.173.187', '1289612409@qq.com', '10', '20', '20.00', '', '0', '1', null, '刘佳媚', '15246915235');
INSERT INTO `v9_member_verify` VALUES ('1659', '武城二中', '1989118', 'MNzGHt', '1989118', '1381217094', '222.133.22.38', 'lurenabcde@163.com', '10', '20', '20.00', '', '0', '1', null, '1989118', '15069288918');
INSERT INTO `v9_member_verify` VALUES ('1660', '第二中学', '15246915235', 'XPsSKl', '刘佳媚', '1381407269', '112.98.166.159', '12896412409@qq.com', '10', '20', '20.00', '', '0', '1', null, '刘佳媚', '15246915235');
INSERT INTO `v9_member_verify` VALUES ('1661', '陕西省定边县杨井学区', '04551bairan', 'zSQecH', '白苒', '1381460161', '124.115.105.48', '916657412@qq.com', '10', '20', '20.00', '', '0', '1', null, '白苒', '15877586165');
INSERT INTO `v9_member_verify` VALUES ('1662', '宁夏盐池县第五小学', '871015', 'StyLfr', '田银', '1381541562', '119.60.26.250', '497563068@qq.com', '10', '20', '20.00', '', '0', '1', null, '田银', '13895205070');
INSERT INTO `v9_member_verify` VALUES ('1663', '临沂郑旺中学', 'forget2013', 'UM2VCJ', '陶好雨', '1381673862', '221.204.199.107', 'xiaotao891@163.com', '10', '20', '20.00', '', '0', '1', null, '陶好雨', '13256529628');
INSERT INTO `v9_member_verify` VALUES ('1664', '成武县大田集镇中学', 'yqx58116', 'TL8n8Z', '于钦显', '1381715608', '120.192.74.46', 'tjzx821@126.com', '10', '20', '20.00', '', '0', '1', null, '于钦显', '15562018116');
INSERT INTO `v9_member_verify` VALUES ('1665', '郑旺中学', 'forget2013', 'vZtbgQ', '陶好雨', '1381721960', '120.192.73.59', 'xiaotao891@163.com', '10', '20', '20.00', '', '0', '1', null, '陶好雨', '13256529628');
INSERT INTO `v9_member_verify` VALUES ('1666', '宝石镇中心小学', 'bb666888nn', 'U1kRvl', '陈力', '1381728052', '222.74.176.102', 'rm00333@eyou.com', '10', '20', '20.00', '', '0', '1', null, '陈力', '15174752496');
INSERT INTO `v9_member_verify` VALUES ('1667', '胜利十三中学', 'bbmm#1012', 'JP1sC5', '吴欢欢', '1381737836', '218.59.184.233', '1251908698@qq.com', '10', '20', '20.00', '', '0', '1', null, '吴欢欢', '15318381700');
INSERT INTO `v9_member_verify` VALUES ('1668', '惠来粤东中学', 'WWS926LLQ', 'MD7ydP', '林理强', '1381888284', '120.83.117.30', '778109068@qq.com', '10', '20', '20.00', '', '1', '1', '', '林理强', '15766763206');
INSERT INTO `v9_member_verify` VALUES ('1669', '玉门油田小学', 'zhdp123?', 'IwJzNj', '张冬平', '1381916816', '221.7.42.197', 'zhdpabc@sina.com', '10', '20', '20.00', '', '0', '1', null, '张冬平', '13321377872');
INSERT INTO `v9_member_verify` VALUES ('1670', '讷河市拉哈一中', '3321106', 'Xpxrtx', '3321106', '1382226408', '124.68.12.132', '410366985@163.com', '10', '20', '20.00', '', '0', '1', null, '3321106', '15214433601');
INSERT INTO `v9_member_verify` VALUES ('1671', '玉门油田一中', '000123', 'sz7fmC', '白而立', '1382496393', '221.7.42.205', '929159942@qq.com', '10', '20', '20.00', '', '0', '1', null, '白而立', '18919191093');
INSERT INTO `v9_member_verify` VALUES ('1672', '通许县下洼学校', 'a19971018', '8wcyjP', '孙技能', '1382548861', '202.110.67.134', '630406324@qq.com', '10', '20', '20.00', '', '0', '1', null, '孙技能', '15037857607');
INSERT INTO `v9_member_verify` VALUES ('1673', '伊旗第二中学', '13593045720', 'W72a3Y', '刘雁', '1382684963', '110.17.104.138', 'leizhumjz@163.com', '10', '20', '20.00', '', '0', '1', null, '刘雁', '15248410900');
INSERT INTO `v9_member_verify` VALUES ('1674', '盐场中心小学', '200810', 'e1gwck', '姜兰', '1383053840', '219.144.129.53', '442988286@qq.com', '10', '20', '20.00', '', '0', '1', null, '姜兰', '13630269587');
INSERT INTO `v9_member_verify` VALUES ('1675', '船营一园', '123456', 'dVzRB4', '朱玉晶', '1383228056', '175.30.167.245', '1099176277@qq.com', '10', '20', '20.00', '', '0', '1', null, '朱玉晶', '15943222789');
INSERT INTO `v9_member_verify` VALUES ('1676', '山东省莒县长岭初中', 'abcde12345', 'SXlSEs', '耿春竹', '1383290141', '221.2.63.73', '13181191469@qq.com', '10', '20', '20.00', '', '0', '1', null, '耿春竹', '13191191469');
INSERT INTO `v9_member_verify` VALUES ('1677', '临漳县第一小学', '186018', 'TtEryg', '严令', '1383476651', '106.115.221.238', '675155088@qq.com', '10', '20', '20.00', '', '0', '1', null, '严令', '18803007692');
INSERT INTO `v9_member_verify` VALUES ('1678', '盐场小学', '200810', '4tzelJ', '姜兰', '1383482939', '219.144.129.53', '442988286@qq.com', '10', '20', '20.00', '', '0', '1', null, '姜兰', '13630269587');
INSERT INTO `v9_member_verify` VALUES ('1679', '镇巴县盐场镇中心小学', '6911311', '311jMT', '王绍锋', '1383540133', '219.144.129.53', '838916842@qq.com', '11', '20', '20.00', '', '0', '1', null, '王绍锋', '13571632090');
INSERT INTO `v9_member_verify` VALUES ('1680', '七星农场第二中学', '5714586', 'FJiVPB', '黄文春', '1383643736', '123.164.84.17', 'qxezhwc@126.com', '10', '20', '20.00', '', '0', '1', null, '黄文春', '13199105686');
INSERT INTO `v9_member_verify` VALUES ('1681', '杨木中学', '1966lxyqx', 'SErrcj', '王远文', '1383651410', '113.2.187.14', 'qyf2009988@sina.com', '10', '20', '20.00', '', '0', '1', null, '王远文', '13846002162');
INSERT INTO `v9_member_verify` VALUES ('1682', '木瓜九年制学校', 'ai19897327', 'qs97q4', '张敏', '1383729906', '117.36.195.200', '757825939@qq.com', '10', '20', '20.00', '', '0', '1', null, '张敏', '18392290771');
INSERT INTO `v9_member_verify` VALUES ('1683', '肥城市龙山中学', '698250', 'dfuZG9', '孙呈序', '1383816593', '60.213.146.59', 'sun730825@163.com', '10', '20', '20.00', '', '0', '1', null, '孙呈序', '13854888256');
INSERT INTO `v9_member_verify` VALUES ('1684', '曹成办中学', '600900', 'YlWHJq', '张书刚', '1383995034', '114.245.167.196', 'shu1127@126.com', '10', '20', '20.00', '', '0', '1', null, '张书刚', '15653488288');
INSERT INTO `v9_member_verify` VALUES ('1685', '遵义市天义学校', 'zystyxx', '5plCzi', '程华南', '1384406510', '222.87.206.82', '279080539@qq.com', '10', '20', '20.00', '', '0', '1', null, '程华南', '13648520578');
INSERT INTO `v9_member_verify` VALUES ('1686', '奋斗中学', '1528241994', 'F5pIYZ', '刘洋', '1384602438', '58.18.54.39', '308064955@qq.com', '10', '20', '20.00', '', '0', '1', null, '刘洋', '15134993706');
INSERT INTO `v9_member_verify` VALUES ('1687', '清水九年制学校', 'qsjnzxx', 'NixXDL', '刘彩霞', '1385083306', '117.36.195.200', 'qsjnzxx@0926.com', '11', '20', '20.00', '', '0', '1', null, '刘彩霞', '18629229360');
INSERT INTO `v9_member_verify` VALUES ('1688', '崇礼一中', '123456', 'rtQjT1', '赵万兵', '1385623990', '60.8.153.226', '936005541@qq.com', '10', '20', '20.00', '', '0', '1', null, '赵万兵', '13831303571');
INSERT INTO `v9_member_verify` VALUES ('1689', '莒县长岭镇中心初中', '600999', 'mNTHQ5', '耿春竹', '1385627899', '221.2.63.73', '13181191469@qq.com', '10', '20', '20.00', '', '0', '1', null, '耿春竹', '13181191469');
INSERT INTO `v9_member_verify` VALUES ('1690', '莒县长岭初中', '600999', 'MA3AK5', '耿春竹', '1385628686', '221.2.63.73', '1715925987@qq.com', '10', '20', '20.00', '', '0', '1', null, '耿春竹', '13181191469');
INSERT INTO `v9_member_verify` VALUES ('1691', 'cxdszx', '123456', 'MRUbmh', '123456', '1385629451', '110.172.211.90', 'lingzhi92@163.com', '10', '20', '20.00', '', '0', '1', null, '123456', '13685407138');
INSERT INTO `v9_member_verify` VALUES ('1692', '内蒙古交通职业技术', '84028937123', '6kUxsv', '贾然', '1385630431', '116.116.234.208', '398650846@qq.com', '10', '20', '20.00', '', '0', '1', null, '贾然', '15849817334');
INSERT INTO `v9_member_verify` VALUES ('1693', 'sdfgkjfsdkfg', '389315665', 'yggMNf', 'dhggdqaz', '1385703113', '60.213.146.182', '1124163631@qq.com', '10', '20', '20.00', '', '0', '1', null, 'dhggdqaz', '13583813901');
INSERT INTO `v9_member_verify` VALUES ('1694', '泾洋中学', 'dzy2172', 'QBiCLg', '杜泽禹', '1385899829', '113.137.93.110', '2497836277@qq.com', '10', '20', '20.00', '', '0', '1', null, '杜泽禹', '11111111111');
INSERT INTO `v9_member_verify` VALUES ('1695', '长岭中心初级中学', '600999', 'lwcQCy', '潘月振', '1385945124', '221.2.63.76', '13276338518@163.com', '10', '20', '20.00', '', '0', '1', null, '潘月振', '13276338518');
INSERT INTO `v9_member_verify` VALUES ('1696', '府谷县清水九年制学校', '8864662', 'tUFfTK', '魏艳艳', '1385983926', '117.36.195.200', '1069089000@qq.com', '10', '20', '20.00', '', '0', '1', null, '魏艳艳', '13259355028');
INSERT INTO `v9_member_verify` VALUES ('1697', 'muyibjut', '111111', 'tUYQeT', '111111', '1386047716', '118.195.65.33', 'lipengle@emails.bjpu.edu.cn', '10', '20', '20.00', '', '0', '1', null, '111111', '13146260917');
INSERT INTO `v9_member_verify` VALUES ('1698', '德州九中', '123456', '6LqCSL', '张东', '1386127077', '219.146.165.62', 'phinx1998@163.com', '10', '20', '20.00', '', '0', '1', null, '张东', '13853410127');
INSERT INTO `v9_member_verify` VALUES ('1699', '沂河实验学校', '123456', 'J5u32q', '小妞', '1386306667', '60.213.43.30', '113373372@qq.com', '10', '20', '20.00', '', '0', '1', null, '小妞', '13665491593');
INSERT INTO `v9_member_verify` VALUES ('1700', '山东临邑理合王寨小学', 'wangzhaixiaoxue', 'EZmT6m', '李梅', '1386571982', '27.207.138.249', 'wangzhaixiaoxue123@163.com', '10', '20', '20.00', '', '0', '1', null, '李梅', '15069295178');
INSERT INTO `v9_member_verify` VALUES ('1701', '乡宁县东街小学', '301415926', 'LjYlxq', '王鹏飞', '1386642872', '183.203.189.230', 'dongjiexiaoxue123@163.com', '10', '20', '20.00', '', '0', '1', null, '王鹏飞', '15903472360');
INSERT INTO `v9_member_verify` VALUES ('1702', '保康县寺坪镇中心学校', '5715123', '4U9KYM', '易桄赋', '1386664942', '58.51.40.226', 'yigf999@163.com', '10', '20', '20.00', '', '0', '1', null, '易桄赋', '13697229098');
INSERT INTO `v9_member_verify` VALUES ('1703', '伊春市一中', '335200', 'wKb6wX', '张老师', '1386754676', '1.60.170.167', 'michaelhei@163.com', '10', '20', '20.00', '', '0', '1', null, '张老师', '15245861967');
INSERT INTO `v9_member_verify` VALUES ('1704', 'jyyizhong', '123456', 'fiZWNZ', '胡吉祥', '1386756750', '218.58.219.166', 'jyyizhong@163.com', '10', '20', '20.00', '', '0', '1', null, '胡吉祥', '13905309886');
INSERT INTO `v9_member_verify` VALUES ('1705', '汪营镇石坝初级中学', '661113', 'Ik3FQ2', '李良忠', '1387252211', '116.209.240.170', '506615513@qq.com', '10', '20', '20.00', '', '0', '1', null, '李良忠', '15971771322');
INSERT INTO `v9_member_verify` VALUES ('1706', '寿县方兴中学', '4766096', 'nlzXiJ', '张友亭', '1387334410', '60.173.160.94', '1184410906@qq.com', '10', '20', '20.00', '', '0', '1', null, '张友亭', '18919765088');
INSERT INTO `v9_member_verify` VALUES ('1707', '乌鲁木齐市第110中学', '123123', 'WejWX3', '张孟来', '1388287960', '49.118.223.126', '634517184@qq.com', '10', '20', '20.00', '', '0', '1', null, '张孟来', '15099600315');
INSERT INTO `v9_member_verify` VALUES ('1708', '围场玉林学校', '811217nfh', 'z7edyf', '那福辉', '1388394408', '221.204.173.102', '798455090@qq.com', '10', '20', '20.00', '', '0', '1', null, '那福辉', '13463488550');
INSERT INTO `v9_member_verify` VALUES ('1709', '丽城幼儿园', '409149325', 'XlcNtD', '陈小姐', '1389926373', '121.15.130.218', 'sy409149325@qq.com', '10', '20', '20.00', '', '0', '1', null, '陈小姐', '13360520117');
INSERT INTO `v9_member_verify` VALUES ('1710', '翠峦区第三中学', 'asd123', '4ta1ez', '刘敏', '1390269914', '1.60.172.202', 'ycsz@0458.com', '10', '20', '20.00', '', '0', '1', null, '刘敏', '15145824447');
INSERT INTO `v9_member_verify` VALUES ('1711', '涿州中学', '123456', 'gxDXwU', '赵毅伟', '1390569472', '61.134.129.45', 'www.1962954914@qq.com', '10', '20', '20.00', '', '0', '1', null, '赵毅伟', '15631228601');
INSERT INTO `v9_member_verify` VALUES ('1712', '黄石教育科学研究院', '243857', 'cegUNv', '243857', '1390799194', '111.178.163.50', '896026394@qq.com', '10', '20', '20.00', '', '0', '1', null, '243857', '13872070909');
INSERT INTO `v9_member_verify` VALUES ('1713', 'hsncxx66', '123456', 'aKwcy7', 'naza', '1391314608', '120.71.233.69', 'naza9099@163.com', '10', '20', '20.00', '', '0', '1', null, 'naza', '13677596453');
INSERT INTO `v9_member_verify` VALUES ('1714', '鲁西中学', 'luxizhongxue', 'RLRdX6', '小时', '1392692468', '218.56.160.30', 'smj850794838@163.com', '10', '20', '20.00', '', '0', '1', null, '小时', '13563471230');
INSERT INTO `v9_member_verify` VALUES ('1715', '长丰县埠里中学', '31415926789', 'eqS6EV', '杨义武', '1392898137', '60.168.223.53', '914911228@qq.com', '10', '20', '20.00', '', '0', '1', null, '杨义武', '18955131613');
INSERT INTO `v9_member_verify` VALUES ('1716', '襄阳市第三十九中学', '123456', 'vnqy3h', '马东海', '1393148401', '116.208.3.53', '945724538@qq.com', '10', '20', '20.00', '', '1', '1', '', '马东海', '13697210358');
INSERT INTO `v9_member_verify` VALUES ('1717', '重庆工商大学', 'manutd200', 'Qgzl6T', '渣差', '1393168320', '106.80.41.176', '1102382953@qq.com', '10', '20', '20.00', '', '0', '1', null, '渣差', '15210649723');
INSERT INTO `v9_member_verify` VALUES ('1718', '知道', 'yan19891113', 'Kb6A3n', '知道', '1393385787', '117.36.195.200', '814565209@qq.com', '10', '20', '20.00', '', '0', '1', null, '知道', '15389124645');
INSERT INTO `v9_member_verify` VALUES ('1719', '市三十九中', '123456', 'CDfQuR', '马东海', '1393411370', '116.208.3.53', 'xf39school@126.com', '10', '20', '20.00', '', '0', '1', null, '马东海', '13697210358');
INSERT INTO `v9_member_verify` VALUES ('1720', '启东市汇龙中学', 'qdshlzx', 'EsmAab', '陈黎荣', '1393468588', '58.221.175.89', 'qdclr@163.com', '10', '20', '20.00', '', '1', '1', '', '陈黎荣', '18906286799');
INSERT INTO `v9_member_verify` VALUES ('1721', '海丰县梅陇中学', '111111', 'mpJjCX', '林一', '1393485345', '14.30.131.23', 'YY3722014@163.com', '10', '20', '20.00', '', '0', '1', null, '林一', '13680951385');
INSERT INTO `v9_member_verify` VALUES ('1722', '滨州市第一中学', '33338888', 'AFnTeN', '吴波', '1393522317', '60.215.25.242', 'wubo80120@126.com', '10', '20', '20.00', '', '0', '1', null, '吴波', '13954379065');
INSERT INTO `v9_member_verify` VALUES ('1723', '河北定兴先于镇小学', '1q2w3e4r', 'Z9B5Yj', '金泰', '1393582853', '111.161.79.233', '1607513538@qq.com', '10', '20', '20.00', '', '0', '1', null, '金泰', '18201025944');
INSERT INTO `v9_member_verify` VALUES ('1724', '岸堤小学', 'jjaiyy2011', 'LIMasc', '代老师', '1393761185', '39.67.78.18', 'zhongxin929@sina.com', '10', '20', '20.00', '', '0', '1', null, '代老师', '15206816007');
INSERT INTO `v9_member_verify` VALUES ('1725', '雷家坪中学', '4562308', 'iGM1ZM', '廖庆祝', '1394076248', '125.39.169.155', '168712988@qq.com', '11', '20', '20.00', '', '0', '1', null, '廖庆祝', '13872738586');
INSERT INTO `v9_member_verify` VALUES ('1726', 'xnll', '123456', 'A5uvy4', '钟老师', '1394150881', '114.113.135.255', '664188948@qq.com', '10', '20', '20.00', '', '0', '1', null, '钟老师', '13934577141');
INSERT INTO `v9_member_verify` VALUES ('1727', '田家寨学校', '09128983003', 'SLFPwA', '王二永', '1394361289', '117.36.195.200', 'fgtjzxx@163.com', '10', '20', '20.00', '', '0', '1', null, '王二永', '15291278297');
INSERT INTO `v9_member_verify` VALUES ('1728', '同仁九年制学校', '132268', 'dHtuRE', '申晓斌', '1394705951', '222.161.199.121', 'sxb-112@163.com', '10', '20', '20.00', '', '0', '1', null, '申晓斌', '18220962765');
INSERT INTO `v9_member_verify` VALUES ('1729', '九华中学', '666888', 'Q8JpLK', '按键', '1394900186', '183.167.136.49', 'wxcfza@163.com', '10', '20', '20.00', '', '0', '1', null, '按键', '13866666666');
INSERT INTO `v9_member_verify` VALUES ('1730', '木瓜九年制学校郝巧琴', 'haoqiaoqq@0124', '9ga9N8', '郝巧琴', '1395034545', '117.36.195.200', '625369582@qq.com', '10', '20', '20.00', '', '0', '1', null, '郝巧琴', '15291219553');
INSERT INTO `v9_member_verify` VALUES ('1731', '中国信息大学', '7424514', '7HDCxd', '方先生', '1395634108', '124.205.216.226', 'fangkanglong@163.com', '10', '20', '20.00', '', '0', '1', null, '方先生', '13126690418');
INSERT INTO `v9_member_verify` VALUES ('1732', '山阳城区一中', '123456', 'XQqNJ9', '一湾湖水', '1395648407', '117.23.72.245', '1034120895@qq.com', '10', '20', '20.00', '', '0', '1', null, '一湾湖水', '18049148620');
INSERT INTO `v9_member_verify` VALUES ('1733', 'qazwsx', 'qazwsx', 'm8ksb7', 'qazwsx', '1396093928', '112.250.88.162', 'qwe123@163.com', '10', '20', '20.00', '', '0', '1', null, 'qazwsx', '13858171234');
INSERT INTO `v9_member_verify` VALUES ('1734', '乡宁县职业中学', 'xnzz68500', 'CFKeBY', '常有', '1396190749', '223.13.119.95', 'fengshuxian1122@163.com', '10', '20', '20.00', '', '0', '1', null, '常有', '13994758717');
INSERT INTO `v9_member_verify` VALUES ('1735', '安徽省淮北市西园中学', 'sunning', 'z74yAB', '孙宁', '1396447990', '117.40.51.128', '1364671063@qq.com', '10', '20', '20.00', '', '0', '1', null, '孙宁', '13345615210');
INSERT INTO `v9_member_verify` VALUES ('1736', '临沂八湖小学', 'qaz74123', 'REGYcc', '赵连生', '1396538478', '121.18.213.21', 'yuyeear@163.com', '10', '20', '20.00', '', '0', '1', null, '赵连生', '15953983280');
INSERT INTO `v9_member_verify` VALUES ('1737', '武城四中', 'yphjiazu321', 'd3EjKt', '杂的文', '1397210556', '114.244.252.226', '704264264@qq.com', '10', '20', '20.00', '', '0', '1', null, '杂的文', '15628626031');
INSERT INTO `v9_member_verify` VALUES ('1738', '黔西四中', '408077349', 'qV3unZ', '金杨', '1397738616', '111.85.57.164', 'jinyang408077349@qq.com', '10', '20', '20.00', '', '0', '1', null, '金杨', '15286270067');
INSERT INTO `v9_member_verify` VALUES ('1739', '平顶完小', '52659.73', 'ALDzka', '徐克英', '1397795671', '14.110.76.72', '463294528@qq.com', '10', '20', '20.00', '', '0', '1', null, '徐克英', '13996508041');
INSERT INTO `v9_member_verify` VALUES ('1740', '初头郎中学', 'yang05160311', 'mycjjR', '杨俊岭', '1397803636', '1.29.108.104', '1743057600@qq.com', '10', '20', '20.00', '', '0', '1', null, '杨俊岭', '15174848687');
INSERT INTO `v9_member_verify` VALUES ('1741', '山西省晋城四中', 'jcsz66', 'yNjtxi', '翟维屹', '1398042200', '124.164.235.72', 'jcsz@1266.com', '10', '20', '20.00', '', '0', '1', null, '翟维屹', '13593353721');
INSERT INTO `v9_member_verify` VALUES ('1742', '放到的的', '123456789', 'eDCDi9', '123456789', '1398236741', '110.249.12.12', '123456789@qq.com', '10', '20', '20.00', '', '0', '1', null, '123456789', '12345678952');
INSERT INTO `v9_member_verify` VALUES ('1743', '东村中学', '181666', 'ZlAjQg', '纪雪琼', '1398758489', '183.224.74.40', 'jxq19851230@126.com', '10', '20', '20.00', '', '0', '1', null, '纪雪琼', '13678775104');
INSERT INTO `v9_member_verify` VALUES ('1744', '新拨中学', '860822', 'MqTEVZ', '赵淑君', '1399675404', '120.13.68.36', '1151734667@qq.com', '10', '20', '20.00', '', '0', '1', null, '赵淑君', '18232266569');
INSERT INTO `v9_member_verify` VALUES ('1745', '河北省围场县新拨中学', '985DAxue1688!@', '24tJWt', '周国庆', '1399681304', '211.143.142.54', 'zhouguoqing1688@126.com', '11', '20', '20.00', '', '0', '1', null, '周国庆', '13833420962');
INSERT INTO `v9_member_verify` VALUES ('1746', 'zhouguoqingabc', '985DAxue1688!@', 'Z4q4sa', '周国庆', '1399711111', '211.143.142.54', 'zhouguoqing1688@126.com', '10', '20', '20.00', '', '0', '1', null, '周国庆', '13833420962');
INSERT INTO `v9_member_verify` VALUES ('1747', '魏县神童第二幼儿园', '3517883', 'F4pXDa', '3517883', '1400232996', '120.8.118.187', '277079159@qq.com', '10', '20', '20.00', '', '0', '1', null, '3517883', '15133077377');
INSERT INTO `v9_member_verify` VALUES ('1748', '浠水实验高中', '18186039398', 'ZNsRIc', '詹兵兵', '1401063591', '61.184.142.166', '27331052@qq.com', '10', '20', '20.00', '', '0', '1', null, '詹兵兵', '18186039398');
INSERT INTO `v9_member_verify` VALUES ('1749', '平泉台头山中学', '196961', '6ZrkRp', '王兴华', '1401766893', '121.26.250.190', 'jcl197099@163.com', '10', '20', '20.00', '', '0', '1', null, '王兴华', '13831435411');
INSERT INTO `v9_member_verify` VALUES ('1750', '四中', '147258369in', 'sTVXiD', '刘博', '1401880753', '218.203.185.182', '1356911971@qq.com', '10', '20', '20.00', '', '0', '1', null, '刘博', '13893850486');
INSERT INTO `v9_member_verify` VALUES ('1751', '西溪中心小学', '6438206', 'lXianY', '钟九生', '1402472959', '115.148.5.158', '1057266117@qq.com', '10', '20', '20.00', '', '0', '1', null, '钟九生', '18979642656');
INSERT INTO `v9_member_verify` VALUES ('1752', '山东泰山中学', '1551543926', '3Fyfp3', '马龙飞', '1402573244', '123.135.68.0', '9480247@qq.com', '10', '20', '20.00', '', '0', '1', null, '马龙飞', '15953855845');
INSERT INTO `v9_member_verify` VALUES ('1753', '山东省泰山中学', '1551543926', '3xrqwm', '马龙飞', '1402574269', '123.135.68.0', '9480247@qq.com', '10', '20', '20.00', '', '0', '1', null, '马龙飞', '15953855845');
INSERT INTO `v9_member_verify` VALUES ('1754', '泰山中学', '874254849', 'XldxrK', '世界和平', '1402633328', '182.35.30.56', '874254849@qq.com', '10', '20', '20.00', '', '0', '1', null, '世界和平', '13678688583');
INSERT INTO `v9_member_verify` VALUES ('1755', '赤峰市元矿小', 'k48630624', 'nwDuaL', '康志燕', '1403092360', '110.7.21.106', '1093189309@qq.com', '11', '20', '20.00', '', '0', '1', null, '康志燕', '13948630624');
INSERT INTO `v9_member_verify` VALUES ('1756', '衡水十四中学', '123654', 'kajzjF', '王红', '1403509914', '121.17.24.14', 'fhj150@sina.com', '10', '20', '20.00', '', '0', '1', null, '王红', '15369908363');
INSERT INTO `v9_member_verify` VALUES ('1757', '开远市第一中学', '767325', 'QirDWB', '金泓宇', '1403528247', '180.130.151.177', '923622837@qq.com', '10', '20', '20.00', '', '0', '1', null, '金泓宇', '15198767325');
INSERT INTO `v9_member_verify` VALUES ('1758', '衡水第十四中学', '654321', '3zyFr5', '冯婷', '1403570017', '121.17.24.14', 'fhjjj_150@126.com', '10', '20', '20.00', '', '1', '1', '', '冯婷', '15369908363');
INSERT INTO `v9_member_verify` VALUES ('1759', '池北一中', '198612900', 'S136Ua', '荣生华', '1404204548', '222.162.70.204', '625483595@qq.com', '10', '20', '20.00', '', '0', '1', null, '荣生华', '13843329632');
INSERT INTO `v9_member_verify` VALUES ('1760', '吃池北一中', '123456', 'pC1txC', '123456', '1404375631', '222.162.70.204', '625483595@qq.com', '10', '20', '20.00', '', '0', '1', null, '123456', '13843329632');
INSERT INTO `v9_member_verify` VALUES ('1761', '凤池中学', '091522', 'XWTDsG', '091522', '1404719691', '221.3.134.42', '710811898@qq.com', '10', '20', '20.00', '', '0', '1', null, '091522', '13508704371');
INSERT INTO `v9_member_verify` VALUES ('1762', '太原市三十六中学', 'ziqiangbuxi851', '3ncEgQ', '谭逸枫', '1404910201', '223.11.5.36', '52906099@qq.com', '10', '20', '20.00', '', '0', '1', null, '谭逸枫', '13834535314');
INSERT INTO `v9_member_verify` VALUES ('1763', '会宁第二中学', '123456', '9C6Aks', '赵祯', '1405477790', '60.165.132.206', '1844864885@qq.com', '10', '20', '20.00', '', '0', '1', null, '赵祯', '13099272513');
INSERT INTO `v9_member_verify` VALUES ('1764', '翠峦区第二中学', 'wocaonima', 'KZArBM', '张兆华', '1405742713', '1.60.173.25', '2215720270@qq.com', '10', '20', '20.00', '', '0', '1', null, '张兆华', '15145824447');
INSERT INTO `v9_member_verify` VALUES ('1765', '安徽省利辛一中', '720810', 'xPBkmr', '何通', '1406260979', '117.67.127.76', '870600389@qq.com', '10', '20', '20.00', '', '0', '1', null, '何通', '13856794918');
INSERT INTO `v9_member_verify` VALUES ('1766', '测试学校', 'j08lhy', 'gdnmln', '刘红业', '1406637778', '112.232.191.91', '1978l@163.com', '10', '20', '20.00', '', '0', '1', null, '刘红业', '15854138479');
INSERT INTO `v9_member_verify` VALUES ('1767', '西安铁一中', '19870927', 'fHQMcL', '柳燕', '1407245012', '113.138.228.11', '879995536@qq.com', '10', '20', '20.00', '', '0', '1', null, '柳燕', '18010159817');
INSERT INTO `v9_member_verify` VALUES ('1768', '泰安第十四中', '12341234', 'xdH9Pu', '贾富斌', '1407812698', '112.245.105.124', '1458258095@qq.com', '10', '20', '20.00', '', '0', '1', null, '贾富斌', '15564841841');
INSERT INTO `v9_member_verify` VALUES ('1769', '胜利十三中', 'ssz2014', 'YdwAle', '张新然', '1408177822', '218.59.184.233', 'zxrxinran@126.com', '10', '20', '20.00', '', '0', '1', null, '张新然', '15263882292');
INSERT INTO `v9_member_verify` VALUES ('1770', '新村中心园', 'xczxy112920', '4hh9ZF', '黄语义', '1408502727', '111.206.120.12', 'hmily.hua@163.com', '10', '20', '20.00', '', '0', '1', null, '黄语义', '15244392883');
INSERT INTO `v9_member_verify` VALUES ('1771', '东京城林业局第三中学', '20110719', 'FqArPa', '栾艳凤', '1409119544', '221.206.209.168', 'lyf_3@126.com', '11', '20', '20.00', '', '0', '1', null, '栾艳凤', '15904539366');
INSERT INTO `v9_member_verify` VALUES ('1772', '漫学教育', '123456', 'KLYsgF', '李可成', '1409320170', '59.55.159.169', 'snakeli77@hotmail.com', '10', '20', '20.00', '', '0', '1', null, '李可成', '18979108377');
INSERT INTO `v9_member_verify` VALUES ('1773', '万丰二中', '123...', 'Rdjbdl', '李京', '1409998418', '27.206.169.232', '1766005980@qq.com', '10', '20', '20.00', '', '0', '1', null, '李京', '15558764954');
INSERT INTO `v9_member_verify` VALUES ('1774', '马王庙小学', '301415926', '9iLFVk', '王鹏飞', '1410144805', '111.206.50.5', 'mumu-wpf@163.com', '10', '20', '20.00', '', '0', '1', null, '王鹏飞', '15903472360');
INSERT INTO `v9_member_verify` VALUES ('1775', '靖宇县第七中学', '000123', 'XYBC6C', '李宗岳', '1410403704', '222.162.54.114', '1738885645@qq.com', '10', '20', '20.00', '', '0', '1', null, '李宗岳', '13894071295');
INSERT INTO `v9_member_verify` VALUES ('1776', '枝阳中学', '321229', 'b8yMke', '宋校长', '1410505347', '60.165.132.206', 'songhanyi@163.com', '10', '20', '20.00', '', '0', '1', null, '宋校长', '18194489881');
INSERT INTO `v9_member_verify` VALUES ('1777', '靖宇县那尔轰学校', 'qwe7918420', 'yKWpdJ', '林颖', '1410768359', '222.163.237.162', '252729579@qq.com', '10', '20', '20.00', '', '0', '1', null, '林颖', '13644395002');
INSERT INTO `v9_member_verify` VALUES ('1778', '南镇中学', '123457', 'xR5bPH', '南镇中学', '1411030763', '61.133.116.27', 'gtnzzx@126.com', '10', '20', '20.00', '', '0', '1', null, '南镇中学', '15966293521');
INSERT INTO `v9_member_verify` VALUES ('1779', '靖宇七中', '13159795799', 'KCCQNX', '李宗岳', '1411178191', '222.163.236.59', '1738885645@qq.com', '11', '20', '20.00', '', '5', '1', '', '李宗岳', '13894071295');
INSERT INTO `v9_member_verify` VALUES ('1780', '刘岭小学', 'llxx1377', '7KqGNZ', '师绕枝', '1411434739', '60.223.238.149', '1739032982@qq.com', '10', '20', '20.00', '', '0', '1', null, '师绕枝', '15235763678');
INSERT INTO `v9_member_verify` VALUES ('1781', '酒泉第四中学', '123456', 'WXDH9d', '张德海', '1411523119', '60.165.176.120', '405888693@qq.com', '10', '20', '20.00', '', '0', '1', null, '张德海', '13321297236');
INSERT INTO `v9_member_verify` VALUES ('1782', '金塔县古城小学', '041122', 'csZFLN', '王丽琴', '1411645180', '60.164.175.142', '393058861@qq.com', '10', '20', '20.00', '', '0', '1', null, '王丽琴', '18193747719');
INSERT INTO `v9_member_verify` VALUES ('1783', '大王镇中心初中', 'gl19751975', 'LQQi33', '郭丽', '1411813869', '218.56.181.3', '397499045@qq.com', '10', '20', '20.00', '', '0', '1', null, '郭丽', '13678612512');
INSERT INTO `v9_member_verify` VALUES ('1784', '靖宇县龙泉中心校', '15943963588', '3f17X2', '好德', '1412909792', '122.138.135.230', '459675279@qq.com', '10', '20', '20.00', '', '0', '1', null, '好德', '15943963588');
INSERT INTO `v9_member_verify` VALUES ('1785', '达州铁路中学', '15882939897', '8MFccr', '青本金', '1413543199', '119.6.206.100', 'qingbenjin@163.com', '10', '20', '20.00', '', '0', '1', null, '青本金', '15882939897');
INSERT INTO `v9_member_verify` VALUES ('1786', '无锡市长安南胡巷小学', '83769967', 'iqgdN8', '张正华', '1413968294', '222.59.188.150', '1137559451@qq.com', '10', '20', '20.00', '', '5', '1', '', '张正华', '13771508958');
INSERT INTO `v9_member_verify` VALUES ('1787', '胜坨中学', '1811201', 'ntSaaM', '王环环', '1414491192', '218.56.181.6', '229283905@qq.com', '10', '20', '20.00', '', '0', '1', null, '王环环', '15066011807');
INSERT INTO `v9_member_verify` VALUES ('1788', '大昌汗学校', 'wohenni.', 'uddQIF', '开心的鱼', '1414634103', '117.36.195.200', '649558213@qq.com', '10', '20', '20.00', '', '0', '1', null, '开心的鱼', '15991929497');
INSERT INTO `v9_member_verify` VALUES ('1789', '哈拉黑中学', '8984023', 'BRkSiC', '李二', '1415092251', '60.31.123.77', '1141351346@qq.com', '10', '20', '20.00', '', '0', '1', null, '李二', '13624501234');
INSERT INTO `v9_member_verify` VALUES ('1790', '昌平二中', '123456', 'YAz18p', '李伟', '1415165129', '60.10.97.189', '12580@163.com', '10', '20', '20.00', '', '5', '1', '', '李伟', '13522990790');
INSERT INTO `v9_member_verify` VALUES ('1791', '12345666', '123456', '8htVek', '123456', '1415175835', '113.12.132.117', '13256@qq.com', '10', '20', '20.00', '', '5', '1', '', '123456', '13649136683');
INSERT INTO `v9_member_verify` VALUES ('1792', '南宁露露小学', '123456', 'DYgZrc', '露露', '1416361082', '180.140.145.196', '1006971781@qq.com', '10', '20', '20.00', '', '5', '1', '', '露露', '15077608200');
INSERT INTO `v9_member_verify` VALUES ('1793', '你好啊', '123456', 'de8z4p', '你好啊', '1444488593', '113.16.160.59', '1@qq.com', '10', '20', '20.00', '', '0', '1', null, '你好啊', '15077608200');
INSERT INTO `v9_member_verify` VALUES ('1794', '宜阳县红旗实验学校', 'fjh0227', '6aFSWy', '樊嘉豪', '1448101717', '1.193.164.155', '2497174178@qq.com', '10', '20', '20.00', '', '0', '1', null, '樊嘉豪', '15136349567');
INSERT INTO `v9_member_verify` VALUES ('1795', '卞桥镇第二初级中学', '1234567890', 'XhAmDd', '翟贵萍', '1448114749', '119.177.142.21', '706813638@qq.com', '10', '20', '20.00', '', '0', '1', null, '翟贵萍', '15065998535');
INSERT INTO `v9_member_verify` VALUES ('1796', '眉山淑曦幼儿园', 'yangxiaolin', 'ZLXpD5', '杨小林', '1450239062', '182.132.198.252', 'yxl197816@163.com', '10', '20', '20.00', '', '0', '1', null, '杨小林', '13548237161');
INSERT INTO `v9_member_verify` VALUES ('1797', '南李村镇第一初级中学', '67119049', 'eB39ag', '张建喜', '1450275468', '61.136.81.32', 'licunchuzhong@163.com', '10', '20', '20.00', '', '0', '1', null, '张建喜', '13693805053');
INSERT INTO `v9_member_verify` VALUES ('1798', '北冶镇第一初级中学', '573834', 'lp1Jge', '张红', '1450398562', '61.136.81.32', 'hongxizh@126.com', '10', '20', '20.00', '', '0', '1', null, '张红', '13526986254');
INSERT INTO `v9_member_verify` VALUES ('1799', '北冶一中', '573834', 'rJAbHE', '张红喜', '1450398826', '61.136.81.32', 'hongxizh@126.com', '10', '20', '20.00', '', '0', '1', null, '张红喜', '13526986254');
INSERT INTO `v9_member_verify` VALUES ('1800', '小店一中', '16526991283', '1SVHrs', '孙要龙', '1450410027', '115.53.255.29', 'qq1097944401@163.com', '10', '20', '20.00', '', '0', '1', null, '孙要龙', '15036398024');
INSERT INTO `v9_member_verify` VALUES ('1801', '北京第十九中学', '111111', 'r1gGvq', '于老师', '1450701082', '211.157.149.218', '1770246085@qq.com', '10', '20', '20.00', '', '0', '1', null, '于老师', '15210976187');
INSERT INTO `v9_member_verify` VALUES ('1802', '小学', '123456', 'S7bds1', '小郑', '1452607242', '117.69.154.172', '513220972@qq.com', '10', '20', '20.00', '', '0', '1', null, '小郑', '13705597289');

-- ----------------------------
-- Table structure for `v9_news`
-- ----------------------------
DROP TABLE IF EXISTS `v9_news`;
CREATE TABLE `v9_news` (
  `type` varchar(10) DEFAULT NULL COMMENT '分类{教研、管理、综合、海外}',
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned DEFAULT '0',
  `typeid` smallint(5) unsigned DEFAULT NULL,
  `title` varchar(80) DEFAULT '',
  `style` char(24) DEFAULT '',
  `thumb` varchar(100) DEFAULT '',
  `keywords` char(40) DEFAULT '',
  `description` mediumtext,
  `posids` tinyint(1) unsigned DEFAULT '0',
  `url` char(100) DEFAULT NULL,
  `listorder` tinyint(3) unsigned DEFAULT '0',
  `status` tinyint(2) unsigned DEFAULT '1',
  `sysadd` tinyint(1) unsigned DEFAULT '0',
  `islink` tinyint(1) unsigned DEFAULT '0',
  `username` char(20) DEFAULT NULL,
  `inputtime` int(10) unsigned DEFAULT '0',
  `updatetime` int(10) unsigned DEFAULT '0',
  `arr_group_id` varchar(255) DEFAULT NULL,
  `content` mediumtext,
  `createname` varchar(10) DEFAULT NULL COMMENT '资讯创建的用户名',
  PRIMARY KEY (`id`),
  KEY `status` (`status`,`listorder`,`id`),
  KEY `listorder` (`catid`,`status`,`listorder`,`id`),
  KEY `catid` (`catid`,`status`,`id`)
) ENGINE=MyISAM AUTO_INCREMENT=86 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of v9_news
-- ----------------------------
INSERT INTO `v9_news` VALUES ('教研', '2', '1585', '0', '河北高考改革2018启动：文理不分科', '', 'http://e.36krcnd.com/nil_class/bfbdbaca-8213-48e5-ad13-9aea66c50b10/QQ20160301-12.png', '', '从教语文四年来，时间确实极其短暂，让我侃侃而谈怎样上一堂好课，确实是班门弄斧。“什么样的课才是好课？”众说纷纭。', '0', '', '1', '1', '0', '0', 'admin', '1463139270', '1463139270', ',1,', '<p style=\"text-align:justify\"><img alt=\"河北高考改革2018启动：文理不分科\" src=\"http://e.36krcnd.com/nil_class/bfbdbaca-8213-48e5-ad13-9aea66c50b10/QQ20160301-12.png!slider\" style=\"height:480px; width:720px\" /></p>\r\n\r\n<p style=\"text-align:justify\">从教语文四年来，时间确实极其短暂，让我侃侃而谈怎样上一堂好课，确实是班门弄斧。&ldquo;什么样的课才是好课？&rdquo;众说纷纭。</p>\r\n\r\n<p style=\"text-align:justify\">其实作为一名一线教师，一堂课的好坏，在下课铃声响起时，就能感受得到。</p>\r\n\r\n<p style=\"text-align:justify\">有时候下课铃声响起时，心情比较沮丧，回到办公室不断的埋怨这埋怨那，把&ldquo;朽木不可雕也&rdquo;一句怪罪给学生，这样的情形之下我们都知道这堂课是压抑的，糟糕的，学生不仅没有学好也影响了老师的心情。</p>\r\n\r\n<p style=\"text-align:justify\">上完三年级语文《小摄影师》这堂课时，我的心情是愉快的，学生们也在欢声笑语中跟我道再见。看着窗外的红叶李散发着淡淡的红晕，想写的冲动使我一回到办公室变认真写起了教学反思。</p>\r\n\r\n<p style=\"text-align:justify\"><strong>受学生欢迎的课就是好课</strong></p>\r\n\r\n<p style=\"text-align:justify\">《小摄影师》这课是通过人物的对话、语言、动作、表情来反映人物的高尚情操、道德品质。对于三年级的学生来说感知能力还达不到要求，我让孩子们一人扮演&ldquo;高尔基&rdquo;一人扮演&ldquo;小小摄影师&rdquo;。演出之前，指导学生读出情感，再给孩子们3分钟时间准备。演出时。学生们都十分兴奋，几个活泼开朗的女生上台来表演，令我惊诧的是，孩子们惊人的记忆力使得他们不需要课本了。其它的学生则翘首企盼的观看着台前的表演，&ldquo;小摄影师&rdquo;坐在地上假装哇哇大哭的情形引得全班学生捧腹大笑。这个时候我欣喜的看着&quot;乱糟糟&quot;的课堂.随孩子们的欢笑而欢笑.一番表演之后教室的氛围立马变得和谐、活跃。我再次指导学生再读小男孩因为忘记带交卷而哭起来的句子时，学生们个个握着拳头在眼边转动，这哪里是哭啊，分明开心得不得了，我则假装一本正经的训斥道，有你们这么开心的吗？孩子们此刻哪会怕你的严肃呀。</p>\r\n\r\n<p style=\"text-align:justify\">原来<strong>课堂没有你想像的那么糟糕，只要善于启发、诱导总会激发出智慧的火花</strong>。接下来分析课文中，我让孩子们初步领会&ldquo;高尔基&rdquo;的形象。有同学告诉我高尔基很关心、很爱护这个小男孩。我再一次追问从课文那些地方体现出高尔基对小男孩的关心和爱护。这时候平常一向寂静的课堂上举起来一双双小手，孩子们不放过课文中的每一个细节，一一发表自己的观点。付津琪这样告诉我：&ldquo;我从最后一段高尔基盼望着小男孩回来看出高尔基心里很担心他，也很关心他。&rdquo;</p>\r\n\r\n<p style=\"text-align:justify\">在最后的小练笔中。我给出更多的时间让学生说，让孩子们续写课文。周亮同学这样回答道&ldquo;我猜想高尔基天天等那个小男孩回来，可是等了好几天都没有看到那个小男孩，于是高尔基自己派人去找。终于找到了他，并让他重新照&rdquo;。多美好的结局啊，我不禁赞叹道。这样的回答激起了课堂的高潮，瞬间我有了一种喜悦感，满足感。毫无疑问<strong>孩子们在这样的轻松的氛围中得到了充实的延展</strong>。后来还有学生补充道&ldquo;高尔基派出去的人也没有找到那个小男孩，后来高尔基自己亲自去寻找了&rdquo;这样的回答不正体现了伟人高大的形象吗？多引人深思啊，因为有爱才会使得日理万机的高尔基亲身寻找。</p>\r\n\r\n<p style=\"text-align:justify\">最后我再次询问孩子们，&ldquo;高尔基只仅仅喜爱这一个小男孩吗？如果让你去给他拍照，发生了和小男孩同样的事，高尔基也会这样对你吗？&rdquo;孩子们异口同声的告诉我&ldquo;不会&rdquo;&ldquo;高尔基爱所有的小学生&rdquo;就这样体会高尔基同志关心下一代的主旨已经不需要我再去啰嗦了。</p>\r\n\r\n<p style=\"text-align:justify\">同学在课堂尾生举起来小手回答道&ldquo;如果我是那个小男孩，我不会这样粗心，忘记带交卷&rdquo;。这样的回答打破课堂了局限性，让学生从中感悟到文本以外的正能量。我很欣慰！</p>\r\n\r\n<p style=\"text-align:justify\">一番反思，让我明白学生没你想象的那么沉闷，其实孩子们都不笨，教师要善于创设活跃的氛围，打开孩子们心里紧闭的那扇窗，给课堂创设形式多样的学习形式，激发学生主动参与，合作、交流，便会碰撞收获一路智慧。</p>\r\n\r\n<p style=\"text-align:justify\">一堂好课，教师应不急不燥，耐得住学生的沉默便会有思考后各种回答。</p>\r\n\r\n<p style=\"text-align:justify\">相信学生，相信自己。相信历经：山重水复， 柳暗花明。</p>\r\n\r\n<p style=\"text-align:justify\">感谢您关注校视通--教师身边的学习专家！</p>\r\n<!--内容关联投票-->\r\n\r\n<p>&quot;&gt;</p>\r\n\r\n<p>&quot;&gt;</p>\r\n\r\n<p>&quot;&gt;</p>\r\n', null);
INSERT INTO `v9_news` VALUES ('教研', '85', null, null, '习近平主持召开中央全面深化改革领导小组第三十次会议', null, '', null, '习近平', null, null, '1', null, null, null, 'test', '1481006539', '1481006539', ',1,', '<p><strong>央视网消息(新闻联播)：</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>中共中央总书记、国家主席、中央军委主席、中央全面深化改革领导小组组长习近平12月5日下午主持召开中央全面深化改革领导小组第三十次会议并发表重要讲话。他强调，总结谋划好改革工作，对做好明年和今后改革工作具有重要意义，要总结经验、完善思路、突出重点，提高改革整体效能，扩大改革受益面，发挥好改革先导性作用，多推有利于增添经济发展动力的改革，多推有利于促进社会公平正义的改革，多推有利于增强人民群众获得感的改革，多推有利于调动广大干部群众积极性的改革。</p>\r\n\r\n<p>中共中央政治局常委、中央全面深化改革领导小组副组长李克强、刘云山、张高丽出席会议。</p>\r\n\r\n<p>会议审议通过了《关于深化国有企业和国有资本审计监督的若干意见》《国务院国资委以管资本为主推进职能转变方案》《关于健全国家自然资源资产管理体制试点方案》《关于开展知识产权综合管理改革试点总体方案》《关于加强乡镇政府服务能力建设的意见》《关于制定和实施老年人照顾服务项目的意见》《中央国有资本经营预算支出管理暂行办法》《关于加强耕地保护和改进占补平衡的意见》《大熊猫国家公园体制试点方案》《东北虎豹国家公园体制试点方案》《围填海管控办法》《关于加强&ldquo;一带一路&rdquo;软力量建设的指导意见》和《关于农村集体资产股份权能改革试点情况的报告》。</p>\r\n\r\n<p>会议指出，深化国有企业和国有资本审计监督，要围绕国有企业、国有资本、境外投资以及企业领导人履行经济责任情况，做到应审尽审、有审必严。要健全完善相关审计制度，让制度管企业、管干部、管资本。国企国资走到哪里，审计监督就要跟进到哪里，不能留死角。审计机关要依法独立履行审计监督职责。</p>\r\n\r\n<p>会议强调，要按照以管资本为主加强国有资产监管的要求，依法依规建立和完善出资人监管权力和责任清单，重点管好国有资本布局、规范资本运作、提高资本回报、维护资本安全。要加强国有资产监督，把强化出资人监管同落实管党治党责任结合起来，把精简监管事项同完善企业法人治理结构结合起来。要改进监管方式手段，更多采用市场化、法治化、信息化监管方式。</p>\r\n\r\n<p>会议指出，健全国家自然资源资产管理体制，要按照所有者和管理者分开和一件事由一个部门管理的原则，将所有者职责从自然资源管理部门分离出来，集中统一行使，负责各类全民所有自然资源资产的管理和保护。要坚持资源公有和精简统一效能的原则，重点在整合全民所有自然资源资产所有者职责，探索中央、地方分级代理行使资产所有权，整合设置国有自然资源资产管理机构等方面积极探索尝试，形成可复制可推广的管理模式。</p>\r\n\r\n<p>会议强调，开展知识产权综合管理改革试点，要紧扣创新发展需求，发挥专利、商标、版权等知识产权的引领作用，打通知识产权创造、运用、保护、管理、服务全链条，建立高效的知识产权综合管理体制，构建便民利民的知识产权公共服务体系，探索支撑创新发展的知识产权运行机制，推动形成权界清晰、分工合理、责权一致、运转高效的体制机制。</p>\r\n\r\n<p>会议指出，加强乡镇政府服务能力建设，要坚持基本公共服务均等化的发展方向，强化服务功能，优化基本公共服务资源配置，创新公共服务供给方式，有效提升乡镇政府服务水平。乡镇党委要发挥领导作用，支持乡镇政府依法行政。要重视乡镇干部队伍建设，关心乡镇干部工作生活。</p>\r\n', null);
INSERT INTO `v9_news` VALUES ('教研', '14', '0', '0', '蹲点美国高中：学生每天只睡4小时 灌4罐咖啡\n蹲点美国高中：学生每天只睡4小时 灌4罐咖啡\n', '', 'http://img1.gtimg.com/edu/pics/hv1/47/108/1994/129687437.jpg', '', '美国教育很“美”？那是误读！美国中学到底是什么样？我们真的有太多误解。一批早期的中国移民家庭开始在网上抨击那些短期到访者和交换生构建的美好中学图景，并斥之为“不负责任，哗众取宠”。', '0', '', '1', '1', '0', '0', '', '0', '0', ',2,', '<div id=\"entryContainer\">\r\n	<div class=\"entry\">\r\n		<p>\r\n			教师应该建设怎样的课堂</p>\r\n		<p>\r\n			山中看雨/文&nbsp;</p>\r\n		<p>\r\n			&nbsp;&nbsp;&nbsp; 美国教育家杜威曾经说过：给孩子一个什么样的课堂，就意味着给孩子一个什么样的生活！那么，在教学中，教师应该给孩子建设一个什么样的课堂呢？</p>\r\n		<p>\r\n			&nbsp;&nbsp;&nbsp; <strong>应该建设真实的课堂。</strong>这应该是课堂的本质。这也是教师建设课堂最首要的问题和关键的问题。在有教师观摩的课堂上，我们看到的课堂，一般是按照教师精心的预设，由老师抛出一个个问题，学生跟随着老师思路做出一次次思考，并在老师的引导下加以总结和归纳，40分钟的课堂解决了所有的问题。学生沿着这样的路线走完了一堂课，老师欣喜，学生轻松，&ldquo;观众们&rdquo;长舒一口气。这样的课堂是作秀的课堂，甚至说是&ldquo;假课&rdquo;。我们建设的课堂应该是思考、有质疑、有碰撞、有生成的课堂，课堂上不追求轰轰烈烈的热闹场面，不追求手臂林立的踊跃发言，不追求花团锦簇的华美陈词，追求学生实实在在的发展和提高，追求学生真正困惑、学习、实践和提高，追求真实的课堂。</p>\r\n		<p>\r\n			<strong>&nbsp;&nbsp;&nbsp; 应该建设生活的课堂。</strong>生活即教育。课堂教学必须要联系生活，源于生活，根植生活，从生活中来到生活中去。学生的知识、思维力求贴近学生的现实生活，让学生的理性思维和抽象思维建立在感性材料的基础上。当丰富多彩的现实生活成为学生的兴趣之源时，教师就能将理论与实际结合起来，更好的便于学生掌握。</p>\r\n		<p>\r\n			&nbsp;&nbsp;&nbsp; <strong>应该建设自主的课堂。</strong>自主的课堂是一种具有灵动的课堂，学生主动参与、乐于探究、勤于动手，学生搜集处理信息的能力和解决问题的能力得以培养。众所周知，教学过程是教师通过一定的方法手段，组织、引导、激励和推动学生进行自主学习的过程，是学生自己在原有知识的基础上进行自我建构的过程，这是任何外在的技术手段无法替代的，所以优秀的课堂应该是学生自主学习的课堂。</p>\r\n		<p>\r\n			&nbsp;&nbsp;&nbsp; <strong>应该建设合作的课堂。</strong>学生们分成小组围坐在一起，时而讨论，时而发言，还有同学当起小老师轮番上讲台指着板书讲解，而老师在整堂课上的讲话时间只有10分钟左右&mdash;&mdash;这就是&ldquo;合作课堂&rdquo;。在合作中，学生时而讨论、时而发问、时而主讲、时而思考，学生在合作交流中去经历，去探索，去发现，在合作中体验成功的喜悦和创造的快乐。一个个生动的情景，一张张自信的脸庞，让我们坚信学生才是课堂上真正的主人。</p>\r\n		<p>\r\n			&nbsp;&nbsp;&nbsp; <strong>应该建设和谐的课堂。</strong>教育艺术的本质不在于传授，而在于激励、唤醒和鼓舞。课堂上，老师和学生应该是同一主体，围绕着同一个目标而开展学习活动。老师弯下腰与学生平等地对话，鼓励学生开口提问，培养学生质疑的勇气，尊重并关注学生的每一个问题。课堂上，学生敢于提出发自内心的问题，这些问题有的幼稚了些，有的可爱了些，有的偏颇了些，有的执拗了些，但这些问题却是学生们真正困惑的问题。课堂氛围宁静而宽松，自由而惬意，这正是我们追求的和谐课堂。</p>\r\n<!--内容关联投票-->	</div>\r\n</div>\r\n', null);
INSERT INTO `v9_news` VALUES ('教研', '11', '0', '0', '武书连大学排行榜公布 清华浙大北大居前三', '', '', '', '浙江大学、北京大学分列二三位；新生入学质量排名清华北大复旦蝉联前三名。', '0', '', '0', '1', '0', '0', '', '0', '0', ',3,4,5,', '<div id=\"entryContainer\">\r\n	<div class=\"entry\">\r\n		<p>\r\n			<strong>别培养&ldquo;盆景&rdquo;孩子</strong></p>\r\n		<p>\r\n			安徽巢湖市柘皋中学唐金龙</p>\r\n		<p>\r\n			&nbsp;　　这次去扬州瘦西湖游玩是从&ldquo;盆景园&rdquo;进去的。那天，《教育文汇》笔会与会者一行在淅沥细雨中游览了&ldquo;盆景园&rdquo;。据导游介绍说，扬州盆景是我国优秀的传统艺术之一。它始于唐代，盛于明清，为我国树桩盆景的五大流派之一。扬派盆景受扬州明清时期画风的熏陶，并受古城造园、养花传统的影响，形成了自己独特的风格，被誉为&ldquo;无声的诗，立体的画&rdquo;。它仿效名山大川，借鉴山水名画，方寸之间，意境阔大。造型严谨而富有变化，清秀而不失壮观，最大的特点就在于&ldquo;一寸三弯，功在剪扎&rdquo;。</p>\r\n		<p>\r\n			　　我放眼望去，偌大的园子里，到处都是被&ldquo;剪扎&rdquo;的盆景，它们的身上布满了铁丝、棕绳什么的，硬是使它们弯来绕去的，从而体现出所谓的艺术标准。我在一株盆景下面的底座上看到一行稚嫩的文字，是用小石子写在长有青苔的暗灰色的石板上，&ldquo;可怜的盆景，不知它痛不痛？&rdquo;说真的，看到这行文字我的心里一阵酸楚，已无心欣赏园中美景了。我不知道写这行字的孩子是因了怎样的心情而发出了这样悲悯的感慨。</p>\r\n		<p>\r\n			　　而作为教师，我还是想起了龚自珍的《病梅馆记》。&ldquo;斫其正，删其密，锄其直&rdquo;仅是作为盆景制作的手法倒是可以理解的，而将这样艺术手法泛化到一种思想认识的层面，就有问题了。而我们眼下的教育，多多少少就存在一点如此的&ldquo;病态&rdquo;。什么都必须统一到高考成绩的硬指标下面来呢，除此你什么也不别说。就在刚刚，游览&ldquo;教育在线&rdquo;看到2008某省名校高考喜报汇总贴，看到那上面都是什么省市状元呀，什么成绩突破呀，多少人录取清华北大呀，高分段人数自己的学校占有多少比例呀什么的。</p>\r\n		<p>\r\n			　　看着各路名校的&ldquo;光荣&rdquo;自然是高兴的事。但却也真切反映出整个时代对教育的评价标准，就是&ldquo;分数&rdquo;第一。而在这样扭曲的思维下，你能真正倡导素质教育吗？不埋头于书山题海，要出高分是困难的。而把孩子只局限于书山题海之中，势必会影响孩子的全面发展。就其结合素质而言，当若干年后就会显现出来的。</p>\r\n		<p>\r\n			　　也许有人会认为我是危言耸听，那也不要紧。再过几个月，每年一度的诺贝尔奖就会揭晓，到时就会有人反思。而反思的根本肯定还会集中在我们的教育模式上。因为我们重视的是死的知识，而真正的人才需要的能力，是实实在在的科学素养。</p>\r\n		<p>\r\n			　　古人云，&ldquo;后人哀之而不鉴之，亦使后人而复哀后人也&rdquo;。那么，现在也该到了我们认真反思的时候了。我们要让孩子长成参天大树，要让他们成材，而不能&ldquo;剪扎&rdquo;他们使其成为病态的盆景。</p>\r\n		<p>\r\n			　　那么，什么时候能够&ldquo;纵之顺之，毁其盆，悉埋于地，解其棕缚&rdquo;呢？高考在改革，新课程在实施，应该说能够看到一点希望。重要的是我们审视的人才的标准一定要变，否则还不会从根本上解决问题。</p>\r\n		<p>\r\n			　　最为关键的就是要转变观念。近日看报看到一则教育故事。著名作家龙应台的儿子直截了当地告诉自己的父母，自己将不会达到父母的人生高度，就是一个&ldquo;平庸&rdquo;的人。这要是在我们这儿，这位儿子会面临父母怎样的责备呢？那肯定会被认为是没有出息，是属于典型的不成材不成器的家伙呀。</p>\r\n		<p>\r\n			　　而作为母亲龙应台在后来写信主动和儿子进行交流，她告诉儿子最重要的，不是你有否成就，而是你是否快乐。她引导儿子思考，在现代生活架构里，什么样的工作比较可能给你快乐？第一，它给你意义；第二，它给你时间。她告诉孩子，你的工作是你觉得有意义的，你的工作不绑架你而使你成为工作的俘虏，容许你去充分体验生活，你就比较可能是快乐的。作家进一步假定说，当横在你眼前的选择是到华尔街做银行经理或者到动物园做照顾狮子、河马的管理员，会怎样选择呢？这就要看你自己的兴趣爱好了。如果你是一个喜欢动物研究的人，就完全不认为银行经理比较有成就，或者狮子、河马的管理员&ldquo;平庸&rdquo;。因为真心喜欢，你就会感觉与其每天为钱的数字起伏而紧张而斗争，很可能不如每天给大象洗澡，给河马刷牙。</p>\r\n		<p>\r\n			　　作家的智慧真的让我们醍醐灌顶。为什么一定要做&ldquo;盆景&rdquo;呢，一块石子，一朵小花，不都是自然界独一无二的风景吗？只要是快乐的，做自己喜欢的事情，人生自然也就是精彩的。</p>\r\n<!--内容关联投票-->	</div>\r\n</div>\r\n', null);
INSERT INTO `v9_news` VALUES ('教研', '12', '0', '0', '清华大学自强计划面向农村生 最高降60分录取', '', 'http://inews.gtimg.com/newsapp_ls/0/238592642_11282/0', '', '', '0', '', '1', '1', '0', '0', '', '0', '0', ',3,', '<h1 class=\"meta-tit\" style=\"text-align: justify\">\r\n	我的教学风格和教学经验总结</h1>\r\n<div class=\"share-nav\">\r\n	<div class=\"share-to clearfix\">\r\n		<div class=\"bshare-custom fr\">\r\n			从教16年来，虽然在教学中也取得了一些成绩，却从来没敢想过自己的教学已形成什么风格，因为我觉得那是教育专家才达得到的层次。只是，在教学中我一直追求：以人为本、严谨、高效、和谐的课堂教学，这也是我以后不断追求的方向。</div>\r\n	</div>\r\n</div>\r\n<div id=\"entryContainer\">\r\n	<div class=\"entry\">\r\n		<p>\r\n			从教16年来，虽然在教学中也取得了一些成绩，却从来没敢想过自己的教学已形成什么风格，因为我觉得那是教育专家才达得到的层次。只是，在教学中我一直追求：以人为本、严谨、高效、和谐的课堂教学，这也是我以后不断追求的方向。</p>\r\n		<p align=\"left\">\r\n			一、以人为本&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>\r\n		<p align=\"left\">\r\n			以人为本涉及人的心灵，具有情感关怀的使命，关注人的自然发展、生命的健康成长。</p>\r\n		<p align=\"left\">\r\n			以人为本，师生之间主动交往、平等交流、双向互动、平等对话、共同分享，无论是空间上还是心理上，它都应该是一种&ldquo;零&rdquo;距离交往。为此，一要摆脱讲台，走下讲台，走进学生，共同活动，寻找融通师生感情的结合点和调节课堂教学气氛的切入口，使课堂效益得到提高。二要学会倾听。通过倾听，捕获学生言语背后的思维过程；在情感上走进学生，达到思维共振和心灵的敞亮。三要促进生-生交往。不仅要做信息的发布者，还要做课堂生成信息的&ldquo;重组者&rdquo;，要体现信息交流的平台价值。学生动起来了，应有一种&ldquo;功成身退&rdquo;的精神境界，不妨做一名忠实的听众，让学生之间进行直接的&ldquo;交谈&rdquo;与&ldquo;交锋&rdquo;，从而使信息能够实现&ldquo;零距离&rdquo;的交互。</p>\r\n		<p>\r\n			二、严谨</p>\r\n		<p>\r\n			科学课是一门追求严谨的学科，虽然还只是小学阶段，学生的语言表达、逻辑思维等能力还不够完善，尤其是对三年级小学生来说，他们很难做到严谨。但我要求自己要时时有这方面的意识，并且影响学生。无论是观察描述、实验操作、汇报交流、还是书写研究报告，都要尽量做到严谨，形成一种严谨的科学学习习惯。</p>\r\n		<p>\r\n			1.语言表述要严谨：三年级观察蚂蚁时，学生会说&ldquo;蚂蚁有六只脚&rdquo;，我就提醒学生科学上一般描述为&ldquo;三对足&rdquo;。六年级学习杠杆作用规律时，有的学生说&ldquo;左边是用力点，右边是阻力点&rdquo;，而应该是&ldquo;用力点在左边，阻力点在右边&rdquo;；不是&ldquo;盐化了&rdquo;而是&ldquo;食盐溶解了&rdquo;。 用药匙取几粒高锰酸钾就不要说用小勺挖点；能准确表述的不要模糊描述，如等一至二分钟就不要说等一会儿。</p>\r\n		<p>\r\n			2．使用科学器材要严谨：如正确使用温度计、测力计、酒精灯、放大镜、显微镜等；多年来，我每次上课都会把本节课中的实验提前做一遍，对于使用的仪器，都认真地查阅相关的资料，掌握它的正确使用方法，务必使自己和学生在课堂上的操作做到规范准确。</p>\r\n		<p>\r\n			3.选择实验材料要严谨：比如沉浮实验中大小相同、轻重不同的物体，轻重相同、大小不同的物体；即使选择不同材料代替时，也要从多方面进行考虑后才决定是否采用。</p>\r\n		<p>\r\n			4.设计实验要严谨：严谨地遵守对比实验中的相同条件和不同条件。让学生有一种严谨的科学探究习惯，比如要特别注重假设、猜测、理由、证据等，还有的实验需要经过多次进行，才能得出结论，任何一次性的实验都是不够严谨的，不具有说服力的。</p>\r\n		<p>\r\n			三、高效</p>\r\n		<p>\r\n			对于教学效率来说，没有最高，只有更高。除了课堂上努力做到以人为本、严谨外，促进学生高效率地学习，应切实发挥评价的激励、发展功能。课堂上，有效的评价是学生充满信心、主动地进行高效率学习的助推剂。</p>\r\n		<p>\r\n			1.有针对性实施评价</p>\r\n		<p>\r\n			课堂上，我十分注重通过有针对性的评价引领学生的发展。根据学生的课堂表现，我主要从学习方法、学习能力、学习态度等三个方面来对学生的课堂表现来展开评价。如&ldquo;你真会学习，不但认真观察蚯蚓，还深入思考蚯蚓与前几节课认识的蜗牛之间的联系与区别&rdquo;（学习方法）、&ldquo;你的概括能力真强，融合了刚才几个同学的发言&rdquo;（学习能力）、&ldquo;你看，他听讲多认真呀&rdquo;（学习态度）&hellip;&hellip;评价的针对性极大地提高了评价的实效性，通过有针对性的评价学生，我发现学生在在课堂上变得更为积极，他们从教师有针对性的评价语中获得激励，得到启示，并在仿效中获得了进步与发展。</p>\r\n		<p>\r\n			2.活用评价语言</p>\r\n		<p>\r\n			（1）多用赏识性的语言赞美学生。课堂上，对于学生良好的表现和点滴进步，我们会及时给与表扬，用充满赞赏的语言来肯定学生的优点，使他们受到鼓舞。如：&ldquo;这个问题很有价值，你真会动脑筋！&rdquo;、&ldquo;你的理解与众不同，真是让人耳目一新!&rdquo;&hellip;&hellip;赏识学生是信任学生的表现，用赏识性的语言来评价学生，往往能在瞬间激发出学生求知的欲望和探索的热情。</p>\r\n		<p>\r\n			（2）善用希望性的语言激励学生。对于大多数小学生来说，其心智的发展、独立意识能力及思维水平都是有限的，一味的赏识、赞美会使学生不能全面地认识自己，不利于他们获得进步与发展。因此，在让学生认识到优点的同时，我还及时针对他们表现出来的不足之处，用充满希望的语言给他们提出建议，给他们指明努力的方向。如：&ldquo;你的表现很出色，要是能说得全面些就更好了！&rdquo;、&ldquo;要是你能抓住学习的重点来谈感悟，一定会理解得更透彻!收获会更多！&rdquo;&hellip;&hellip;充满希望的语言渗透了老师的关爱，传递着老师的期望，使学生更易于接受。</p>\r\n		<p>\r\n			（3）巧用暗示性的批评点化学生。学生作为发展的个体，在学习的过程中往往会有这样或那样的问题。针对这种现象，我常用暗示性的批评点化学生，使他们在善意的提醒中认识并及时改正缺点，积极地投入到学习活动中。如我们在课堂上时常会碰到这样的情况，尽管老师在台上声情并茂，循循善诱，可有些同学依然在下面做小动作或开小差。批评他们吧，会中断课堂，影响其他同学的学习，也会刺伤他们的自尊心，可坐视不管吧，又违背了教育的宗旨。这时，我就通过表扬个别同学坐姿端正使全班同学得到了暗示，或者通过表扬大多数同学认真听讲使少数听讲不认真地学生得到点化。</p>\r\n		<p>\r\n			四、和谐</p>\r\n		<p>\r\n			和谐是一种能让人身心愉悦的平衡状态，和谐的课堂能最大限度地激发学生的兴趣和主观能动性，也有助于教师创造性的发挥，从而水到渠成地达到各项教学目标。&ldquo;温和、微笑、宽容、认同&rdquo;是我实现和谐课堂的八字法宝。每次走进课堂，我都会要求自己必须热情饱满，以良好的情绪和真诚的微笑面对每个学生，让学生感受到教师平易近人，和蔼可亲，从而缩短师生之间的心理距离，让学生在认知满足的同时，获得情感的满足。在课堂上，我还要求自己必须认真倾听每一位学生的发言，学生发言时我会一直面带微笑的看着他，用赞许的目光鼓励他充分表达自己的想法，即使他回答错误或者表达得不够清楚，我也不轻易打断他的发言。努力让自己的课堂成为一个师生知识共享、情感交流、心灵沟通的过程，那么这样的课堂将是一首和谐动听的&ldquo;乐曲&rdquo;。</p>\r\n		<p align=\"left\">\r\n			这么多年以来，我一直坚持从这四个方面引领课堂，争取让自己形成以人为本、严谨、高效、和谐的教学风格，进而影响学生，让他们也形成这样的学习风格和学习习惯，让这一良好习惯不但影响学生的学习，还要影响他们的生活，让他们的生活也变得高效、整洁、有条理，提高每个学生的学习效率。</p>\r\n		<p>\r\n			我相信在教学过程中不断地反思，不断地改进，我们的汗水必定会浇灌出祖国一代又一代的栋梁之才！</p>\r\n<!--内容关联投票-->	</div>\r\n</div>', null);
INSERT INTO `v9_news` VALUES ('海外', '13', '0', '0', '上海国际高中深剖：什么才是真正优质国际高中', '', 'http://img1.gtimg.com/edu/pics/hv1/94/39/2032/132140839.jpg', '', '在家长为孩子们选择国际学校的过程中，哪些因素应该主导选择的过程?经过国际高中专家们的深度分析，专家将从三方面为家长和学生选择国际学校献计献策。', '0', '', '1', '1', '0', '0', '', '0', '0', ',4,', '<p style=\"text-align: justify\">\r\n	<span>　　 &mdash;&mdash;老班心语之一</span></p>\r\n<p style=\"text-align: justify\">\r\n	<span>　　（236700安徽省利辛县利辛中学沈智宏）</span></p>\r\n<p style=\"text-align: justify\">\r\n	<span>孩子们：</span></p>\r\n<p style=\"text-align: justify\">\r\n	<span>两周之前，老班以一种虔诚等待着你们的到来。盼望着，盼望着，你们来了，63个精灵飞到了老班周围。经过两周的相处，老班特别欣喜，欣喜你们的可爱，欣喜你们的懂事，欣喜你们的进取，同时，老班也充满期待，期待你们能够茁壮成长，期待你们能够全面发展，期待雏鹰们能够飞得更高。</span></p>\r\n<p style=\"text-align: justify\">\r\n	<span>新学段，新起点。人生就是这样，有无数个起点。在初中这个新的起点上，老班希望大家能够迅速适应新生活，调整心态，展示最好的自我。当然，一娘生九子，十人各不同，每个人都有自己的优缺点。或许，小学的你非常优秀，不要骄傲，重新开始，在新的舞台上舞出最炫的自己；或许，小学的你表现平平，没事，初中的你会日趋优秀；或许，小学时你总爱挨批评、受处罚，也不要气馁，找到自己的不足，努力改正，你还是最棒的。</span></p>\r\n<p style=\"text-align: justify\">\r\n	<span>虽然初中生活刚刚开始两周，对你而言，是短暂而漫长的。两周的观察，两周的相处，让老师感觉有些同学存在着一些不好的倾向，那就是&ldquo;一曝十寒&rdquo;，通俗的说，刚开始的几天，都非常好，三分钟热度一过，初中生活的新鲜感不复存在后，一些不太好的习惯就表现了出来。上课走神的有吧，拖拉作业的有吧，说脏话的有吧，这些都需要改正。当然，改正缺点最需要的就是&ldquo;恒&rdquo;，有恒心，有毅力，坚持做下去。</span></p>\r\n<p style=\"text-align: justify\">\r\n	<span>老师这儿有两个故事，说给大家听听，苏格拉底知道吗？世界著名哲学家，他有一个学生，也非常了不得，叫做柏拉图，也是哲学家。</span></p>\r\n<p style=\"text-align: justify\">\r\n	<span>一次苏格拉底对学生说：&ldquo;今天我们只学一件最简单也是最容易的事，每个人都把胳膊尽量往前甩，然后再尽量往后甩。&rdquo;苏格拉底示范了一遍，说：&ldquo;从今天起，每天做300下，大家能做到吗？&rdquo;学生们都笑了，这么简单的事有什么做不到的？</span></p>\r\n<p style=\"text-align: justify\">\r\n	<span>第二天，苏格拉底问学生：&ldquo;谁昨天甩胳膊三百下？做到的人请举手！&rdquo;几十名学生的手都哗哗地举了起来，一个不落。苏格拉底点头。一周后，苏格拉底如前所问，有一大半的学生举手。过了一个月后，苏格拉底问学生：&ldquo;哪些学生坚持了？&rdquo;有九成的学生骄傲地举起了手。</span></p>\r\n<p style=\"text-align: justify\">\r\n	<span>一年后，苏格拉底再一次问大家：&ldquo;请告诉我，最简单的甩手动作还有哪几位同学坚持了？&rdquo;这时，整个教室里，只有一个学生举起了手，这个学生就是柏拉图。他继承了苏格拉底的哲学并创建了自己的哲学体系，培养出了堪称西方孔夫子的大哲学家亚里士多德。</span></p>\r\n<p style=\"text-align: justify\">\r\n	<span>柏拉图能够成功的奥秘在于，他不管干什么事，都非常有恒心。我们也应该向他学习，学习上、生活中。老班知道，我们每一个人都有自己的理想，而在实现理想的过程中会遇到挫折、遇到干扰。就像在课堂上，每一节课开始时，大家都有个想法：这节课我一定好好学习。可忽然一只蝴蝶飞进了教室，你有毅力做到不分神吗？如果能够做到，而且能够坚持做到，我们离理想就会越来越近了。</span></p>\r\n<p style=\"text-align: justify\">\r\n	<span>另一个故事也是关于柏拉图的。一天，在课堂上，哲学家苏格拉底拿出一个苹果，站在讲台前说：&ldquo;请大家闻闻空气中的味道！&rdquo;一位学生举手回答：&ldquo;我闻到了，是苹果的香味！&rdquo;苏格拉底走下讲台，举着苹果慢慢地从每一个同学的面前走过，并叮嘱道：&ldquo;大家再仔细闻一闻，空气中有没有苹果的香味？&rdquo;这时已有半数的学生举起了手。苏格拉底回到讲台上，又重复了刚才的问题。这一次，除了一名学生没有举手外，其他人全都举起了手。苏格拉底走到这名学生面前问：&ldquo;难道你真的什么气味也没闻到吗？&rdquo;那个学生肯定地说：&ldquo;我真的什么也没有闻到！&rdquo;这时，苏格拉底对大家宣布：&ldquo;他是对的，因为这是一只假苹果。&rdquo;</span></p>\r\n<p style=\"text-align: justify\">\r\n	<span>这儿要说的是柏拉图的另外一个品质，非常值得我们学习，那就是敢于说真话。求真是人取得成功的另一法宝，我们在生活中也应该说真话、办真事，真情对人、真心做事，实实在在的努力，实实在在的进取，我们也能成功。</span></p>\r\n<p style=\"text-align: justify\">\r\n	<span>孩子们，初中阶段，老班会尽力帮助，给大家一双双翅膀，让大家飞得更高的。相信自己，好好表现呦！</span></p>\r\n<p style=\"text-align: justify\">\r\n	<span>　　老班亲笔</span></p>\r\n<p style=\"text-align: justify\">\r\n	<span>　　2013年9月14日</span></p>\r\n', null);
INSERT INTO `v9_news` VALUES ('海外', '17', '0', '0', '教师资格注册试点扩至28省 将打破职业终身制', '', 'http://img1.gtimg.com/edu/pics/hv1/254/212/1893/123146639.jpg', '', '根据教育部网站发布的通知，今年将进一步扩大中小学教师资格考试和定期注册改革试点范围，在浙江、湖北等15个省（区、市）试点基础上，新增13个省（区、市）为试点省份。', '0', '', '1', '1', '0', '0', '', '0', '0', ',2,4,', '<h1 class=\"meta-tit\">\r\n	没有教不会的学生，只有不会教的老师。这句话是我参加工作当班主任以来所信奉的一句格言。看了郭老师的案例，我感觉我们之间有很多相似之处，这在很大程度上给我的教育风格打了一针兴奋剂，更进一步增强了我的信心。</h1>\r\n<div id=\"entryContainer\">\r\n	<div class=\"entry\">\r\n		<p>\r\n			&nbsp; &nbsp; 没有教不会的学生，只有不会教的老师。这句话是我参加工作当班主任以来所信奉的一句格言。看了郭老师的案例，我感觉我们之间有很多相似之处，这在很大程度上给我的教育风格打了一针兴奋剂，更进一步增强了我的信心。<br />\r\n			首先，我认为郭老师能够成功的一个最大的法宝就是对学生的关爱，换句话说，就是要对学生进行赏识教育。道理很简单，我们大人在单位都希望得到领导表扬，更何况学生呢？所以，适当的表扬学生&mdash;&mdash;无论好学生还是所谓的&ldquo;差生&rdquo;&mdash;&mdash;对学生都是一个很大的触动。如果你对学生充满爱心，充满信心，充满激情的话，你是能够感染学生的。这就需要教师有很高的人文修养和道德修养，达不到这一点，你是无法成为一名优秀教师的。我想郭老师之所以能够成功，那是因为他用他的人格魅力感染了学生。这个年龄段的学生活泼好动，这是孩子的天性，怎么去引导孩子才是我们老师尤其是班主任所要重点注意的地方。孩子就像一张白纸，你在纸上留下什么痕迹，孩子就会按照你的痕迹走下去。由此，我想到了刚刚参加工作时就当班主任的我与学生发生的一些&ldquo;故事&rdquo;。因为我刚刚大学毕业，所以和学生年龄差距不大，做事情总是从他们的角度去考虑问题，有时候也总回忆我上高中时的情景，所以，我能和学生走得更近一些。通过学校组织的几次活动可以看出来学生也都挺喜欢我的，高一开学仅四个月，我们班级大大小小的奖状就得了七个，位居学年榜首，师生关系相处得也很融洽。但最近一段时间我发现有些同学开始&ldquo;原形毕露&rdquo;了，女生开始在我的眼皮底下带耳钉，自习课也有串坐的现象。于是，我对学生进行了严格的要求，自认为处理得很不错，可谁知我在批改学生语文周记的时候看到了这样一篇文章，题目是&ldquo;谈我对姜老师的看法&rdquo;（文章的内容这里就不做过多的叙述了）。这篇周记我给了个&ldquo;特优&rdquo;，不为别的，只为了这份真诚。看完之后，我颇受震撼！仔细分析一下原因，我认为主要还是家庭因素！周记题目虽然是&ldquo;谈我对姜老师的看法&rdquo;，但后半部分大多数都是在说她的母亲对她如何如何，可见，在这个学生的内心深处有一种对母亲的怨恨之情，而且，这种情感对她影响很大。于是，我从家庭入手进行心理攻击战，打入了孩子的心灵深处，最后通过家长会和家长的沟通，帮助她解决了问题，直到现在，这名学生没到节假日都不忘发一条短信问候我。<br />\r\n			我想，只要你对学生付出真诚，学生也会回报你一份真诚。这可能是郭老师成功的一个原因吧。<br />\r\n			其次，我认为郭老师的成功还在于自己本身的文化修养。这种修养是多方面的，这里只谈一点，就是教师要有能调动学生的激情。<br />\r\n			看完案例，我感觉郭老师的煽动性很强，他在第一次班会上的讲话一定很激情澎湃，而且善于抓住学生的心理。采用激将法对学生进行攻心战。现在的学生都是很有思想很有头脑的孩子，他们不服输的精神还是很强的，换句话说，现在的孩子自尊心都很强。抓住这一要害，更能点燃学生激情的烈火。我想到了我在学生校庆时主题班会上的一次演讲。2008年7月25日，是我的母校&mdash;&mdash;也是我现在工作的单位&mdash;&mdash;林口四中建校30周年的日子。学校为了迎接校庆，在统一时间进行了一次全校性的大规模主题班会活动，主题为：我能为校庆做些什么？这是一次很好的教育机会，为了不让学生在班会上流于形式，我专门写了一篇文章与学生共勉。文中的一些个别细节是专门针对我班的实际情况而写进去的，目的就是为了教育学生，让他们学会从身边的小事做起，从一点一滴做起。我充分发挥了我作为语文教师所专有的特长，用演讲这种激情澎湃的方式来感染学生，让学生真正懂得了自己到底能为校庆做些什么。<br />\r\n			真正的从内心去挖掘感化学生，你才能达到事半功倍的效果。<br />\r\n			第三，我认为郭老师的管理体制是他成功的关键。制定一定的体制或者说&ldquo;班规&rdquo;，对学生的行为能做到很好的约束，同时，也让学生懂得遵守纪律。这里面班规的制定也是很有讲究的，不能一味的死定规矩，否则会适得其反。郭老师的规定是有针对性的，结合了自己班级的特点，并抓住学生的心理对学生进行疏导性的管制，学生会很愿意接受。为了调动班级的积极性，迎接期中考试，我在班级制定了PK制度，每个人选一个你要挑战的对象，期中考试挑战成功者用班费给予一定的物质奖励，这能从另一个侧面激发学生的战斗性。每个学生其实都是不服输的，只是我们平时忽略了对学生的心理教育而已。<br />\r\n			总之，看完郭老师的成功案例，我受益匪浅，我从中学到了许多方法和经验，同时，也给我现在的班主任管理带来了很大的帮助。天行键，君子以自强不息；地势坤，君子以厚德载物。我会用我的激情托起明天的太阳！<br />\r\n			郭老师转变&ldquo;差班&rdquo; 成功原因之我见<br />\r\n			一、了解班状况，以静制动，用心观察，用心期待。<br />\r\n			二、巧抓第一次班会的契机，抓住时机和场合，为他们分析引导，不言弃，不放弃，进行全班同学的动员大会，激起蕴藏在学生内心深处的能量，有了心灵的碰撞与交流，用师爱的阳光照亮他们的心，真心关爱，使其敞开心灵，增强学生自信心。<br />\r\n			三、制定班规----约法定调，双向赢得互信，为班级工作打下坚实的基调。激活内心，重言传身教，师生同心，同行。做学生言行的风向标。<br />\r\n			俯身花中------闻花香，听花开的声音</p>\r\n<!--内容关联投票-->	</div>\r\n</div>\r\n<div class=\"text-c\" id=\"pages\">\r\n	&nbsp;</div>\r\n<div class=\"bdlikebutton\">\r\n	&nbsp;<!-- Duoshuo Comment BEGIN --></div>\r\n', null);
INSERT INTO `v9_news` VALUES ('教研', '68', null, null, '用思考和写作行走的青年教师', null, '', null, '用思考和写作行走的青年教师', null, null, '1', null, null, null, 'test', '1463067754', '1463067754', ',1,', '', null);
INSERT INTO `v9_news` VALUES ('综合', '69', null, null, '红色教育,奉献社会', null, 'http://localhost:8080/xst/assets/images/01.jpg', null, ' 红色场馆教育功能·绵阳共识', null, null, '1', null, null, null, 'test', '1463135979', '1463135979', ',8,', '<p><img alt=\"http://localhost:8080/xst/assets/images/01.jpg\" class=\"shrinkToFit\" src=\"http://localhost:8080/xst/assets/images/01.jpg\" style=\"height:479px; width:1000px\" /></p>\r\n\r\n<p>（原标题：红色场馆教育功能&middot;绵阳共识）</p>\r\n\r\n<p>5月7日至8日，由5&middot;12汶川特大地震纪念馆发起的红色场馆社会教育理论与实践座谈会在绵阳市举行。来自全国各地的33名专家学者和30个场馆负责人，围绕社会教育功能发挥进行了深入研讨，达成以下共识。</p>\r\n\r\n<p>红色场馆是传承中华民族精神的物态载体</p>\r\n\r\n<p>红色场馆传承的精神深深植根于祖国优秀文化，成为推动中华民族进步的强大精神动力。井冈山精神、苏区精神、长征精神、延安精神、红岩精神是革命时期 中华民族精神的突出反映；雷锋精神、焦裕禄精神、兰辉精神、大庆精神、&ldquo;两弹一星&rdquo;精神、抗洪精神、抗震救灾精神是建设时期中华民族精神的崭新表现。这些 精神不断强化和提升了中华民族的精神品格。</p>\r\n\r\n<p>红色场馆是建设社会主义核心价值体系的重要平台</p>\r\n\r\n<p>红色场馆所诠释的精神属于中国特色社会主义意识形态范畴，具有丰富的文化内涵。弘扬红色文化，能够增强民族自信心与自豪感，不断丰富社会主义核心价值观的内涵。</p>\r\n\r\n<p>红色场馆是世界认识中国的特有文化品牌</p>\r\n\r\n<p>当今世界正发生着复杂而深刻的变化，挖掘和传承本土文化，维护文化的差异性和民族性，对建设中国特色社会主义具有重要意义。今天，红色场馆已成为展示中国发展模式、发展理念、发展道路勃勃生机的窗口，成为世界人民认识中国特色社会主义的文化品牌。</p>\r\n\r\n<p>红色场馆是开展爱国主义教育的重要基地</p>\r\n\r\n<p>红色场馆的陈列展示内容，凝固了革命精神，见证了中国共产党的历史，是超越时空、感知史实的客观载体，诠释着革命先辈和当代共产党人的理想信念、爱国情怀、革命精神和道德诉求。所以，红色场馆要在新形势下，更加有效地开展社会教育活动，为爱国主义教育提供生动的历史教材。</p>\r\n\r\n<p>当今中国社会进入了变革转折的关键时期，更加需要培育和践行社会主义核心价值观，向社会传递正能量。会议达成共识，成立红色场馆社会教育联动机制，共同承担起历史使命，做好社会主义核心价值观的倡导者、宣传者和践行者！</p>\r\n\r\n<p>(2016年5月8日于四川绵阳)</p>\r\n\r\n<p>红色场馆社会教育理论与实践座谈会代表发言集萃</p>\r\n\r\n<p>李后强（四川省社科院党委书记教授）：</p>\r\n\r\n<p>红色场馆要大力培养创意、研发和营销推广人才，加强文化资源与创意的设计，旅游发展的跨界融合，吸引民间资本和社会力量参与产品研发生产和经营，让 场馆资源活起来、动起来，变成发展的动力、发展的优势。可以利用大数据、物联网、云计算、互联网等技术，制作一些微电影、小动漫进入手机屏幕，讲述中国故 事，展示中国力量。</p>\r\n\r\n<p>颜晓峰（国防大学马克思主义研究所研究员、博士生导师、少将）：</p>\r\n\r\n<p>要充分发挥红色场馆作为增强国家文化软实力的独特功能。要将红色场馆建设纳入国家记忆工程的总体规划之中，使之在国家记忆中永存。要将红色场馆建设 纳入现代公共文化服务体系的体制机制中，坚持以人民为中心的服务方向，本着政治性、公益性、教育性的目的，更好进入广大群众的文化生活。在建设&ldquo;内容+平 台+终端&rdquo;的新型传播体系中创新红色场馆建设。红色场馆要在加强实体建设的基础上，从实景空间进入网络空间，从线下走进线上。</p>\r\n\r\n<p>陶文昭（中国人民大学马克思主义学院教授、博士生导师）：</p>\r\n\r\n<p>让地震纪念馆更好地发挥作用，要让抗震精神&ldquo;活&rdquo;起来。如何&ldquo;活&rdquo;起来？要与实现中华民族伟大复兴的 &ldquo;中国梦&rdquo;相结合，与协调推进&ldquo;四个全面&rdquo;的战略布局结合起来，与新的发展理念结合起来，与培养和践行社会主义核心价值观结合起来，与我们治国理政的新理 念、新思想、新战略相结合，全面激活我们的精神。</p>\r\n\r\n<p>沈传亮 （中央党校党史部三室主任、教授）：</p>\r\n\r\n<p>红色场馆是留存红色记忆的重要载体，是开展红色教育的重要形式，是弘扬中国精神的重要渠道。遍布神州大地的红色场馆，是中华民族精神地图上的一道道 亮丽的风景线。红色场馆建设要特点鲜明，要资源共享。建议成立一个红色场馆联盟，实现资源共享共通。要办好红色场馆，不仅靠资金投入、技术设计，更需要靠 人力资本的研究投入，建议成立一个国家级的红色场馆研究中心。</p>\r\n\r\n<p>史吉祥 （吉林大学文学院博物馆系教授、中国博物馆学专业委员会副主任）：</p>\r\n\r\n<p>红色场馆要科学搜集文物和科学展陈，让观众能够更真切地去感受红色文化、红色精神。红色场馆讲解员要擅长讲解，将介绍的内容内化于心，做到讲解游刃有余，挥洒自如。</p>\r\n\r\n<p>高中伟（四川大学党委常委、宣传部部长、教授）：</p>\r\n\r\n<p>要加强理论研究，国家应该从立项、人才培养、推广等方面加大对党史研究的支持力度，要加强系统研究，不断将红色资源转化为教育资源。要大力推进红色 文化事业和红色文化产业的发展，建设一批红色文化教育爱国主义基地。要大力推动红色旅游，着力打造红色旅游精品线路。要开展红色文化进社区、进乡村普及工 程，将红色文化日常化、大众化、具体化。要充分用好新媒体，实施红色文化全媒体传播功能。</p>\r\n\r\n<p>杨先农（四川省社会科学院毛泽东思想研究所所长、博士生导师）：</p>\r\n\r\n<p>红色场馆具有大众化的教育功能和作用，要以红色文化、基因、精神和丰厚的营养来滋养人民群众的智慧、情感、道德、人格。红色场馆应充分发挥地域文 化、民族文化、乡土文化的优势，在弘扬优秀传统文化与马克思主义大众化实现契合上下功夫，以此提升马克思主义大众化的文化影响力。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div class=\"ep-source cDGray\"><a href=\"http://news.163.com/\"><img alt=\"netease\" class=\"icon\" src=\"http://img1.cache.netease.com/cnews/css13/img/end_news.png\" style=\"height:12px; width:13px\" /></a> 本文来源：四川在线-四川日报 责任编辑：王晓易_NE0011</div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&quot;&gt;</p>\r\n\r\n<p>&quot;&gt;</p>\r\n', null);
INSERT INTO `v9_news` VALUES ('综合', '70', null, null, '青海农信社考试金领制胜方案', null, 'http://localhost:8080/xst/assets/images/03.jpg', null, '    授课老师：槐俊升、刘占双、贾文博、郜爽     班次类型：特色课程系列     课程状态：已经上线  随时看课程，随时练习题', null, null, '1', null, null, null, 'test', '1463136044', '1463136044', ',6,', '<p><img alt=\"http://localhost:8080/xst/assets/images/03.jpg\" src=\"http://localhost:8080/xst/assets/images/03.jpg\" /> <span style=\"font-family:times new roman,times,serif\"><span style=\"font-size:20px\">&nbsp; &nbsp;</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-family:times new roman,times,serif\"><span style=\"font-size:20px\">本方案包含青海农信社考试涉及到的行测、经济、金融、财会等核心考点。</span></span></p>\r\n\r\n<h4>课程介绍</h4>\r\n\r\n<div class=\"plr10\">\r\n<p><span style=\"font-family:times new roman,times,serif\"><span style=\"font-size:20px\">1、顶尖师资-权威</span></span></p>\r\n\r\n<p><span style=\"font-family:times new roman,times,serif\"><span style=\"font-size:20px\">&nbsp; &nbsp; &nbsp; 本课程由华图教育金融培训顶级名师，专为农信社备考精心打造！授课老师具有十多年经济金融教学及备考经验、深受各地学员喜爱。</span></span></p>\r\n\r\n<p><span style=\"font-family:times new roman,times,serif\"><span style=\"font-size:20px\">2、核心考点-全面</span></span></p>\r\n\r\n<p><span style=\"font-family:times new roman,times,serif\"><span style=\"font-size:20px\">&nbsp; &nbsp; &nbsp; 通过对近十年各地农信社考试真题的深入研究，精心设计涵盖知识点全面的全新课程。</span></span></p>\r\n\r\n<p><span style=\"font-family:times new roman,times,serif\"><span style=\"font-size:20px\">3、通过率-高</span></span></p>\r\n\r\n<p><span style=\"font-family:times new roman,times,serif\"><span style=\"font-size:20px\">&nbsp; &nbsp; &nbsp; 知识点讲解细腻、主次分明，学员可轻松听懂并掌握核心考点，考试通过率非常高。</span></span></p>\r\n</div>\r\n\r\n<h4>学习目标</h4>\r\n\r\n<div class=\"plr10\">\r\n<p><span style=\"font-family:times new roman,times,serif\"><span style=\"font-size:20px\">帮助学员快速理清并掌握核心考点，顺利通过青海农信社笔试！</span></span></p>\r\n</div>\r\n\r\n<h4>适用人群</h4>\r\n\r\n<div class=\"plr10\">\r\n<p><span style=\"font-family:times new roman,times,serif\"><span style=\"font-size:20px\">1、基础知识薄弱，想短时间内快速掌握核心考点的学员</span></span></p>\r\n\r\n<p><span style=\"font-family:times new roman,times,serif\"><span style=\"font-size:20px\">2、学习时间充足的学员</span></span></p>\r\n</div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&quot;&gt;</p>\r\n', null);
INSERT INTO `v9_news` VALUES ('教研', '71', null, null, '国务院：建立大中小学体育课程衔接体系', null, 'http://localhost:8080/xst/assets/images/02.jpg', null, '教育部召开新闻发布会介绍《关于强化学校体育促进学生身心健康全面发展的意见》有关情况', null, null, '1', null, null, null, 'admin', '1463139291', '1463139291', ',8,', '<p><img alt=\"http://localhost:8080/xst/assets/images/02.jpg\" class=\"shrinkToFit\" src=\"http://localhost:8080/xst/assets/images/02.jpg\" style=\"height:420px; width:1000px\" /></p>\r\n\r\n<div class=\"info\">&nbsp;</div>\r\n\r\n<div class=\"info\">&nbsp;</div>\r\n\r\n<div class=\"info\">发布时间： 2016-05-09 15:05:16 | 来源： 中国网 | 作者： 马凌 李忠诚 | 责任编辑： 段留芳</div>\r\n\r\n<div style=\"clear:both; padding:10px 0; text-align:center\"><iframe frameborder=\"0\" height=\"156\" id=\"rdzt11\" scrolling=\"no\" src=\"http://www.china.com.cn/education/node_7216179.htm\" width=\"600\"></iframe></div>\r\n\r\n<div id=\"vf\">&nbsp;</div>\r\n\r\n<div class=\"artCon\" id=\"artbody\">\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"国务院：建立大中小学相衔接的体育课程体系\" id=\"1125872794\" src=\"http://images.china.cn/attachement/jpg/site1000/20160509/b8aeed99050d189a7d5a19.JPG\" style=\"border-bottom:#000000 0px solid; border-left:#000000 0px solid; border-right:#000000 0px solid; border-top:#000000 0px solid; height:378px; width:567px\" title=\"国务院：建立大中小学相衔接的体育课程体系\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style=\"text-align:center\">教育部召开新闻发布会介绍《关于强化学校体育促进学生身心健康全面发展的意见》有关情况（摄影/中国网 曾瑞鑫）</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>中国网5月9日讯（记者 曾瑞鑫）近日，国务院下发了《关于强化学校体育促进学生身心健康全面发展的意见》（以下简称《意见》）。笔者认为《意见》的出台是贯彻落实党的十八届三中 全会精神的必然要求；是补齐素质教育发展短板应有之举；是对学生体质健康状况做出的积极回应，非常必要和及时。《意见》对今后一个时期我国学校体育工作的 发展进行了全面的规划和部署，指出了工作重点和具体路径；再一次凸显了党和国家对学生身心健康的高度重视。因此，精准把握《意见》精神和要求，抓好各项工 作落实，是未来一个时期学校体育工作的主要任务。《意见》具有以下特点、亮点。</p>\r\n\r\n<p><strong>一、突出顶层设计，着眼贯彻落实</strong></p>\r\n\r\n<p>《意见》分为6个部分，主要有两个问题：一是加强学校体育工作的总体要求，二是加强学校体育工作的具体举措。</p>\r\n\r\n<p>第一部分，从指导思想、基本原则和工作目标3 个方面提出原则性要求。指导思想特别强调以&ldquo;天天锻炼、健康成长、终身受益&rdquo;为目标，体现了以人为本的发展理念，强调了学校体育工作以促进学生的发展为出 发点和落脚点，同时，也将&ldquo;手段&mdash;&mdash;天天锻炼、过程&mdash;&mdash;健康成长、目标&mdash;&mdash;终身受益&rdquo;有机地结合在一起。基本原则明确了学校体育工作发展中的4对关键关系 及处理办法：一是课内、课外相衔接，解决锻炼时间问题；二是兴趣、技能相促进，解决锻炼的可持续性；三是群体与竞赛相协调，着眼于普及与提高；四是全面与 分类相结合，坚守基本要求和区别对待。这些工作原则和处理办法为地方政府和基层学校创造性地开展体育工作指明了方向。</p>\r\n\r\n<p>第二部分，从体育课程、体育教学、课外锻炼等16个具体方面提出了明确、可操作的要求。例如，明确提出&ldquo;有条件的地方可为中小学增加体育课时&rdquo;等，要求明确、具体，可以很快地落实到学校的具体工作中。</p>\r\n\r\n<p><strong>二、举措体现纵横结合、整体推进的工作思路</strong></p>\r\n\r\n<p>一是在<strong>体育课程体系建设方面，明确提出建立大中小学相衔接的课程体系</strong>。这一体系的建立，将从一定程度上解决教学内容低级重复的问题，提高不同年龄学生的学习兴趣。</p>\r\n\r\n<p>二是在课外锻炼方面，对幼儿园、中小学和高校均提出了相应的要求。并首次专门对幼儿园的体育工作提出要求。</p>\r\n\r\n<p>三是在加强体育师资队伍建设方面，首次将高等学校体育教育专业的学生培养，高考招生测试办法纳入其中。</p>\r\n\r\n<p>同时，《意见》还提出了课内、课外的结合；家庭、学校和社区的联动；各方资源整合；评价监测与组织实施并重等，这些举措的提出，都体现了从整体上推进学校体育工作发展的思路。</p>\r\n\r\n<p><strong>三、抓住了学校体育工作的&ldquo;牛鼻子&rdquo;</strong></p>\r\n\r\n<p>评价监测和考核督导是推进学校体育工作发展的 关键因素。评价和监测主要着眼于学校体育工作的质量，关注最后一公里的效果；考核和督导则重点强调政府的责任，要求建立专项督查、抽查、公告制度和行政问 责机制。同时，还要求建立约谈有关主管负责人的机制。这样就抓住了学校体育工作的牛鼻子，可以为学校体育的发展提供良好的发展环境。</p>\r\n\r\n<p><strong>四、落实《意见》要注意的几个问题</strong></p>\r\n\r\n<p><ins><iframe frameborder=\"0\" height=\"250\" name=\"inline_ads\" scrolling=\"no\" src=\"http://edu.china.com.cn/ads/20150121.html\" width=\"300\"></iframe></ins>一 是树立法制意识，增强法制观念，坚持法制思维，做到依法行政、依法治教、依法办学。党的十八届三中全会提出&ldquo;推进法治中国建设&rdquo;，十八届四中全会指出&ldquo;深 入推进依法行政，加快建设法治政府&rdquo;。党领导人民制定宪法和法律，也要领导人民执行宪法和法律，并在宪法和法律规定的范围内行使权力，履行职责。我国的 《宪法》、《教育法》、《义务教育法》、《未成年人保护法》和《体育法》中，都对青少年儿童参加体育锻炼的权利进行了规定；国务院颁布的有关条例也对相关 问题进行了描述。这些法律条文明确无误地告诉我们：加强青少年体育，增强青少年体质，既是青少年自身的义务，更是青少年的权利。全社会都必须意识到，学生 的体育锻炼权益，必须不折不扣地予以保障。《意见》的贯彻落实必须改变以往的惯性思维和做法，要狠抓落实，做到有法必依，执法必严，杜绝不执行、选择性执 行国家法律法规和有关规定的做法。</p>\r\n\r\n<p>二是牵住学校体育工作的牛鼻子，引领学校体育 工作快速发展。在学校教育工作中，存在着重视智育、轻视体育的现象；在学校体育工作中，重竞技、轻教学、重少数、丢多数的现象也相当普遍。管理不到位是其 中一个重要原因。《意见》要求建立行政问责制度、专项督导制度和考核机制，就是要改变学校体育工作&ldquo;说起来重要、做起来次要、忙起来不要&rdquo;的状况，改变无 人问责，无从问责的局面，已经牵住了学校体育工作发展的牛鼻子。在具体落实过程中，要坚持分层管理，层层负责，一级问一级，一级抓一级，切实抓紧、抓好。 对&ldquo;有法不依，执法不严，违法不纠&rdquo;的情况，坚决追究责任，通过问责，确保各项政策措施落到实处，引领学校体育工作快速发展。</p>\r\n\r\n<p>三是做好教育内部的统筹协调，确保学校体育工 作不掉队。学校体育是学校教育的一部分，是党的教育方针的重要方面。学校体育工作之所以成为教育工作发展中的短板，与教育内部的统筹协调不够有一定的关 系。例如，体育师资的缺编、学生体育锻炼时间和场地得不到保障等，这些矛盾通过教育内部统筹协调，在一定程度上是可以缓和的，但是，长期的积累使部分矛盾 却越来越突出。这种现象不能继续存在下去，也不允许继续存在下去，否则，2020年基本实现教育现代化的目标将无法达成，没有学校体育的现代化，教育现代 化是不完整的。因此，在《意见》贯彻落实过程中，教育系统内部必须统一思想，并加强内部协调，通过多种手段，加大对学校体育工作的支持，补齐短板。完善人 格，首在体育。在建设健康中国和人力资源强国的道路上，体育不能缺席，更不能缺位。加强学校体育工作，促进学生身心健康、体魄强健，是每一位教育工作者的 神圣职责，需要大家主动履行职责，我们应以贯彻《意见》为契机，做好学校体育工作，切实把每一位学生的健康成长作为教育工作的出发点和归宿点。</p>\r\n\r\n<div style=\"clear: both;\">&nbsp;</div>\r\n</div>\r\n\r\n<div style=\"text-align:center; clear:both; width:100%; padding-bottom:10px;\"><img src=\"http://images.china.cn/images1/ch/14jy/jy_ewm.gif\" style=\"height:100px; width:100px\" /></div>\r\n\r\n<div class=\"zxc\" style=\"float:left; color:#999;\">文章来源： 中国网</div>\r\n\r\n<div style=\"float:right; color:#999;\"><a href=\"http://forum.china.com.cn/forum.php\">发表评论&gt;&gt;</a></div>\r\n\r\n<div style=\"padding:0 20px;\">\r\n<div class=\"clear\">&nbsp;</div>\r\n</div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&quot;&gt;</p>\r\n\r\n<p>&quot;&gt;</p>\r\n', null);

-- ----------------------------
-- Table structure for `v9_resources`
-- ----------------------------
DROP TABLE IF EXISTS `v9_resources`;
CREATE TABLE `v9_resources` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) DEFAULT NULL COMMENT '标题',
  `creatime` varchar(11) DEFAULT NULL COMMENT '创建时间',
  `url` text COMMENT '视频地址',
  `category_1` varchar(100) DEFAULT NULL COMMENT '一级分类',
  `category_2` varchar(100) DEFAULT NULL COMMENT '二级分类',
  `category_3` varchar(100) DEFAULT NULL COMMENT '三级分类',
  `rgroup` varchar(10) DEFAULT NULL COMMENT '分组',
  `rstatus` int(2) DEFAULT '0' COMMENT '状态',
  `category_1_id` int(5) DEFAULT NULL,
  `category_2_id` int(5) DEFAULT NULL,
  `category_3_id` int(5) DEFAULT NULL,
  `category_4_id` int(5) DEFAULT NULL,
  `category_5_id` int(5) DEFAULT NULL,
  `category_4` varchar(100) DEFAULT NULL,
  `category_5` varchar(100) DEFAULT NULL,
  `thumb` varchar(500) DEFAULT NULL COMMENT '资源缩略图',
  `hits` int(5) DEFAULT '0' COMMENT '资源播放量',
  `arr_group_id` varchar(255) DEFAULT NULL,
  `description` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of v9_resources
-- ----------------------------
INSERT INTO `v9_resources` VALUES ('4', '语言文字规范标准的相关政策-张浩明001', '1459945611', 'http://7xsohn.com1.z0.glb.clouddn.com/1%E8%AF%AD%E8%A8%80%E6%96%87%E5%AD%97%E8%A7%84%E8%8C%83%E6%A0%87%E5%87%86%E7%9A%84%E7%9B%B8%E5%85%B3%E6%94%BF%E7%AD%96-%E5%BC%A0%E6%B5%A9%E6%98%8E001.flv', '高中资源汇总', '语文学科', '0', null, '0', '1', '6', '0', '0', '0', '0', '0', 'http://7xsohn.com1.z0.glb.clouddn.com/1%E8%AF%AD%E8%A8%80%E6%96%87%E5%AD%97%E8%A7%84%E8%8C%83%E6%A0%87%E5%87%86%E7%9A%84%E7%9B%B8%E5%85%B3%E6%94%BF%E7%AD%96-%E5%BC%A0%E6%B5%A9%E6%98%8E001.flv.jpg', '33', ',2,3', null);
INSERT INTO `v9_resources` VALUES ('5', '语言文字规范标准的相关政策-张浩明002', '1459945919', 'http://7xsohn.com1.z0.glb.clouddn.com/1%E8%AF%AD%E8%A8%80%E6%96%87%E5%AD%97%E8%A7%84%E8%8C%83%E6%A0%87%E5%87%86%E7%9A%84%E7%9B%B8%E5%85%B3%E6%94%BF%E7%AD%96-%E5%BC%A0%E6%B5%A9%E6%98%8E002.flv', '高中资源汇总', '语文学科', '0', null, '0', '1', '6', '0', '0', '0', '0', '0', 'http://7xsohn.com1.z0.glb.clouddn.com/1%E8%AF%AD%E8%A8%80%E6%96%87%E5%AD%97%E8%A7%84%E8%8C%83%E6%A0%87%E5%87%86%E7%9A%84%E7%9B%B8%E5%85%B3%E6%94%BF%E7%AD%96-%E5%BC%A0%E6%B5%A9%E6%98%8E002.flv.jpg', '28', ',2,', null);
INSERT INTO `v9_resources` VALUES ('6', '推广和规范使用国家通用语言文字-张世平002', '1459946206', 'http://7xsohn.com1.z0.glb.clouddn.com/2%E6%8E%A8%E5%B9%BF%E5%92%8C%E8%A7%84%E8%8C%83%E4%BD%BF%E7%94%A8%E5%9B%BD%E5%AE%B6%E9%80%9A%E7%94%A8%E8%AF%AD%E8%A8%80%E6%96%87%E5%AD%97-%E5%BC%A0%E4%B8%96%E5%B9%B3002.flv', '高中资源汇总', '语文学科', '0', null, '0', '1', '6', '0', '0', '0', '0', '0', 'http://7xsohn.com1.z0.glb.clouddn.com/2%E6%8E%A8%E5%B9%BF%E5%92%8C%E8%A7%84%E8%8C%83%E4%BD%BF%E7%94%A8%E5%9B%BD%E5%AE%B6%E9%80%9A%E7%94%A8%E8%AF%AD%E8%A8%80%E6%96%87%E5%AD%97-%E5%BC%A0%E4%B8%96%E5%B9%B3002.flv.jpg', '12', ',3,', null);
INSERT INTO `v9_resources` VALUES ('7', '推广和规范使用国家通用语言文字-张世平001', '1459945919', 'http://7xsohn.com1.z0.glb.clouddn.com/2%E6%8E%A8%E5%B9%BF%E5%92%8C%E8%A7%84%E8%8C%83%E4%BD%BF%E7%94%A8%E5%9B%BD%E5%AE%B6%E9%80%9A%E7%94%A8%E8%AF%AD%E8%A8%80%E6%96%87%E5%AD%97-%E5%BC%A0%E4%B8%96%E5%B9%B3001.flv', '高中资源汇总', '语文学科', '0', null, '0', '1', '6', '0', '0', '0', '0', '0', 'http://7xsohn.com1.z0.glb.clouddn.com/2%E6%8E%A8%E5%B9%BF%E5%92%8C%E8%A7%84%E8%8C%83%E4%BD%BF%E7%94%A8%E5%9B%BD%E5%AE%B6%E9%80%9A%E7%94%A8%E8%AF%AD%E8%A8%80%E6%96%87%E5%AD%97-%E5%BC%A0%E4%B8%96%E5%B9%B3001.flv.jpg', '19', ',3,', null);
INSERT INTO `v9_resources` VALUES ('8', '推广和规范使用国家通用语言文字-张世平003', '1459946503', 'http://7xsohn.com1.z0.glb.clouddn.com/2%E6%8E%A8%E5%B9%BF%E5%92%8C%E8%A7%84%E8%8C%83%E4%BD%BF%E7%94%A8%E5%9B%BD%E5%AE%B6%E9%80%9A%E7%94%A8%E8%AF%AD%E8%A8%80%E6%96%87%E5%AD%97-%E5%BC%A0%E4%B8%96%E5%B9%B3003.flv', '高中资源汇总', '英语学科', '0', null, '0', '1', '4', '10', '0', '0', '0', '0', 'http://7xsohn.com1.z0.glb.clouddn.com/2%E6%8E%A8%E5%B9%BF%E5%92%8C%E8%A7%84%E8%8C%83%E4%BD%BF%E7%94%A8%E5%9B%BD%E5%AE%B6%E9%80%9A%E7%94%A8%E8%AF%AD%E8%A8%80%E6%96%87%E5%AD%97-%E5%BC%A0%E4%B8%96%E5%B9%B3003.flv.jpg', '11', ',3,4', null);
INSERT INTO `v9_resources` VALUES ('9', '汉语拼音正词法及其修订-董琨001', '1459946503', 'http://7xsohn.com1.z0.glb.clouddn.com/3%E6%B1%89%E8%AF%AD%E6%8B%BC%E9%9F%B3%E6%AD%A3%E8%AF%8D%E6%B3%95%E5%8F%8A%E5%85%B6%E4%BF%AE%E8%AE%A2-%E8%91%A3%E7%90%A8001.flv', '高中资源汇总', '英语学科', '0', null, '0', '1', '4', '10', '0', '0', '0', '0', 'http://7xsohn.com1.z0.glb.clouddn.com/3%E6%B1%89%E8%AF%AD%E6%8B%BC%E9%9F%B3%E6%AD%A3%E8%AF%8D%E6%B3%95%E5%8F%8A%E5%85%B6%E4%BF%AE%E8%AE%A2-%E8%91%A3%E7%90%A8001.flv.jpg', '8', ',3,', null);
INSERT INTO `v9_resources` VALUES ('10', '汉语拼音正词法及其修订-董琨002', '1459946503', 'http://7xsohn.com1.z0.glb.clouddn.com/3%E6%B1%89%E8%AF%AD%E6%8B%BC%E9%9F%B3%E6%AD%A3%E8%AF%8D%E6%B3%95%E5%8F%8A%E5%85%B6%E4%BF%AE%E8%AE%A2-%E8%91%A3%E7%90%A8002.flv', '高中资源汇总', '英语学科', '0', null, '0', '1', '4', '11', '0', '0', '0', '0', 'http://7xsohn.com1.z0.glb.clouddn.com/3%E6%B1%89%E8%AF%AD%E6%8B%BC%E9%9F%B3%E6%AD%A3%E8%AF%8D%E6%B3%95%E5%8F%8A%E5%85%B6%E4%BF%AE%E8%AE%A2-%E8%91%A3%E7%90%A8002.flv.jpg', '7', ',5,', null);
INSERT INTO `v9_resources` VALUES ('11', '汉语拼音正词法基本规则-李志江001', '1459946503', 'http://7xsohn.com1.z0.glb.clouddn.com/4%E6%B1%89%E8%AF%AD%E6%8B%BC%E9%9F%B3%E6%AD%A3%E8%AF%8D%E6%B3%95%E5%9F%BA%E6%9C%AC%E8%A7%84%E5%88%99-%E6%9D%8E%E5%BF%97%E6%B1%9F001.flv', '高中资源汇总', '英语学科', '0', null, '0', '1', '4', '11', '0', '0', '0', '0', 'http://7xsohn.com1.z0.glb.clouddn.com/4%E6%B1%89%E8%AF%AD%E6%8B%BC%E9%9F%B3%E6%AD%A3%E8%AF%8D%E6%B3%95%E5%9F%BA%E6%9C%AC%E8%A7%84%E5%88%99-%E6%9D%8E%E5%BF%97%E6%B1%9F001.flv.jpg', '11', ',4,', null);
INSERT INTO `v9_resources` VALUES ('12', '汉语拼音正词法基本规则-李志江002', '1459946503', 'http://7xsohn.com1.z0.glb.clouddn.com/4%E6%B1%89%E8%AF%AD%E6%8B%BC%E9%9F%B3%E6%AD%A3%E8%AF%8D%E6%B3%95%E5%9F%BA%E6%9C%AC%E8%A7%84%E5%88%99-%E6%9D%8E%E5%BF%97%E6%B1%9F002.flv', '高中资源汇总', '历史学科', '0', null, '0', '1', '5', '14', '0', '0', '0', '0', 'http://7xsohn.com1.z0.glb.clouddn.com/4%E6%B1%89%E8%AF%AD%E6%8B%BC%E9%9F%B3%E6%AD%A3%E8%AF%8D%E6%B3%95%E5%9F%BA%E6%9C%AC%E8%A7%84%E5%88%99-%E6%9D%8E%E5%BF%97%E6%B1%9F002.flv.jpg', '7', ',4,3,', null);
INSERT INTO `v9_resources` VALUES ('13', '语言文字规范标准的相关政策-张浩明001', '1459945611', 'http://7xsohn.com1.z0.glb.clouddn.com/1%E8%AF%AD%E8%A8%80%E6%96%87%E5%AD%97%E8%A7%84%E8%8C%83%E6%A0%87%E5%87%86%E7%9A%84%E7%9B%B8%E5%85%B3%E6%94%BF%E7%AD%96-%E5%BC%A0%E6%B5%A9%E6%98%8E001.flv', '高中资源汇总', '语文学科', '0', null, '0', '1', '6', '16', '0', '0', '0', '0', 'http://7xsohn.com1.z0.glb.clouddn.com/1%E8%AF%AD%E8%A8%80%E6%96%87%E5%AD%97%E8%A7%84%E8%8C%83%E6%A0%87%E5%87%86%E7%9A%84%E7%9B%B8%E5%85%B3%E6%94%BF%E7%AD%96-%E5%BC%A0%E6%B5%A9%E6%98%8E001.flv.jpg', '33', ',2,3', null);
INSERT INTO `v9_resources` VALUES ('14', '语言文字规范标准的相关政策-张浩明002', '1459945919', 'http://7xsohn.com1.z0.glb.clouddn.com/1%E8%AF%AD%E8%A8%80%E6%96%87%E5%AD%97%E8%A7%84%E8%8C%83%E6%A0%87%E5%87%86%E7%9A%84%E7%9B%B8%E5%85%B3%E6%94%BF%E7%AD%96-%E5%BC%A0%E6%B5%A9%E6%98%8E002.flv', '高中资源汇总', '语文学科', '0', null, '0', '1', '5', '15', '0', '0', '0', '0', 'http://7xsohn.com1.z0.glb.clouddn.com/1%E8%AF%AD%E8%A8%80%E6%96%87%E5%AD%97%E8%A7%84%E8%8C%83%E6%A0%87%E5%87%86%E7%9A%84%E7%9B%B8%E5%85%B3%E6%94%BF%E7%AD%96-%E5%BC%A0%E6%B5%A9%E6%98%8E002.flv.jpg', '28', ',2,', null);
INSERT INTO `v9_resources` VALUES ('15', '推广和规范使用国家通用语言文字-张世平002', '1459946206', 'http://7xsohn.com1.z0.glb.clouddn.com/2%E6%8E%A8%E5%B9%BF%E5%92%8C%E8%A7%84%E8%8C%83%E4%BD%BF%E7%94%A8%E5%9B%BD%E5%AE%B6%E9%80%9A%E7%94%A8%E8%AF%AD%E8%A8%80%E6%96%87%E5%AD%97-%E5%BC%A0%E4%B8%96%E5%B9%B3002.flv', '高中资源汇总', '语文学科', '0', null, '0', '1', '5', '14', '0', '0', '0', '0', 'http://7xsohn.com1.z0.glb.clouddn.com/2%E6%8E%A8%E5%B9%BF%E5%92%8C%E8%A7%84%E8%8C%83%E4%BD%BF%E7%94%A8%E5%9B%BD%E5%AE%B6%E9%80%9A%E7%94%A8%E8%AF%AD%E8%A8%80%E6%96%87%E5%AD%97-%E5%BC%A0%E4%B8%96%E5%B9%B3002.flv.jpg', '12', ',3,', null);
INSERT INTO `v9_resources` VALUES ('16', '推广和规范使用国家通用语言文字-张世平001', '1459945919', 'http://7xsohn.com1.z0.glb.clouddn.com/2%E6%8E%A8%E5%B9%BF%E5%92%8C%E8%A7%84%E8%8C%83%E4%BD%BF%E7%94%A8%E5%9B%BD%E5%AE%B6%E9%80%9A%E7%94%A8%E8%AF%AD%E8%A8%80%E6%96%87%E5%AD%97-%E5%BC%A0%E4%B8%96%E5%B9%B3001.flv', '高中资源汇总', '语文学科', '0', null, '0', '1', '5', '15', '0', '0', '0', '0', 'http://7xsohn.com1.z0.glb.clouddn.com/2%E6%8E%A8%E5%B9%BF%E5%92%8C%E8%A7%84%E8%8C%83%E4%BD%BF%E7%94%A8%E5%9B%BD%E5%AE%B6%E9%80%9A%E7%94%A8%E8%AF%AD%E8%A8%80%E6%96%87%E5%AD%97-%E5%BC%A0%E4%B8%96%E5%B9%B3001.flv.jpg', '19', ',3,', null);
INSERT INTO `v9_resources` VALUES ('17', '推广和规范使用国家通用语言文字-张世平003', '1459946503', 'http://7xsohn.com1.z0.glb.clouddn.com/2%E6%8E%A8%E5%B9%BF%E5%92%8C%E8%A7%84%E8%8C%83%E4%BD%BF%E7%94%A8%E5%9B%BD%E5%AE%B6%E9%80%9A%E7%94%A8%E8%AF%AD%E8%A8%80%E6%96%87%E5%AD%97-%E5%BC%A0%E4%B8%96%E5%B9%B3003.flv', '高中资源汇总', '英语学科', '0', null, '0', '1', '4', '12', '0', '0', '0', '0', 'http://7xsohn.com1.z0.glb.clouddn.com/2%E6%8E%A8%E5%B9%BF%E5%92%8C%E8%A7%84%E8%8C%83%E4%BD%BF%E7%94%A8%E5%9B%BD%E5%AE%B6%E9%80%9A%E7%94%A8%E8%AF%AD%E8%A8%80%E6%96%87%E5%AD%97-%E5%BC%A0%E4%B8%96%E5%B9%B3003.flv.jpg', '11', ',3,4', null);
INSERT INTO `v9_resources` VALUES ('18', '汉语拼音正词法及其修订-董琨001', '1459946503', 'http://7xsohn.com1.z0.glb.clouddn.com/3%E6%B1%89%E8%AF%AD%E6%8B%BC%E9%9F%B3%E6%AD%A3%E8%AF%8D%E6%B3%95%E5%8F%8A%E5%85%B6%E4%BF%AE%E8%AE%A2-%E8%91%A3%E7%90%A8001.flv', '高中资源汇总', '英语学科', '0', null, '0', '1', '4', '12', '0', '0', '0', '0', 'http://7xsohn.com1.z0.glb.clouddn.com/3%E6%B1%89%E8%AF%AD%E6%8B%BC%E9%9F%B3%E6%AD%A3%E8%AF%8D%E6%B3%95%E5%8F%8A%E5%85%B6%E4%BF%AE%E8%AE%A2-%E8%91%A3%E7%90%A8001.flv.jpg', '8', ',3,', null);
INSERT INTO `v9_resources` VALUES ('19', '汉语拼音正词法及其修订-董琨002', '1459946503', 'http://7xsohn.com1.z0.glb.clouddn.com/3%E6%B1%89%E8%AF%AD%E6%8B%BC%E9%9F%B3%E6%AD%A3%E8%AF%8D%E6%B3%95%E5%8F%8A%E5%85%B6%E4%BF%AE%E8%AE%A2-%E8%91%A3%E7%90%A8002.flv', '高中资源汇总', '英语学科', '0', null, '0', '1', '4', '12', '0', '0', '0', '0', 'http://7xsohn.com1.z0.glb.clouddn.com/3%E6%B1%89%E8%AF%AD%E6%8B%BC%E9%9F%B3%E6%AD%A3%E8%AF%8D%E6%B3%95%E5%8F%8A%E5%85%B6%E4%BF%AE%E8%AE%A2-%E8%91%A3%E7%90%A8002.flv.jpg', '7', ',5,', null);
INSERT INTO `v9_resources` VALUES ('20', '汉语拼音正词法基本规则-李志江001', '1459946503', 'http://7xsohn.com1.z0.glb.clouddn.com/4%E6%B1%89%E8%AF%AD%E6%8B%BC%E9%9F%B3%E6%AD%A3%E8%AF%8D%E6%B3%95%E5%9F%BA%E6%9C%AC%E8%A7%84%E5%88%99-%E6%9D%8E%E5%BF%97%E6%B1%9F001.flv', '高中资源汇总', '英语学科', '0', null, '0', '1', '3', '13', '0', '0', '0', '0', 'http://7xsohn.com1.z0.glb.clouddn.com/4%E6%B1%89%E8%AF%AD%E6%8B%BC%E9%9F%B3%E6%AD%A3%E8%AF%8D%E6%B3%95%E5%9F%BA%E6%9C%AC%E8%A7%84%E5%88%99-%E6%9D%8E%E5%BF%97%E6%B1%9F001.flv.jpg', '11', ',4,', null);
INSERT INTO `v9_resources` VALUES ('21', '汉语拼音正词法基本规则-李志江002', '1459946503', 'http://7xsohn.com1.z0.glb.clouddn.com/4%E6%B1%89%E8%AF%AD%E6%8B%BC%E9%9F%B3%E6%AD%A3%E8%AF%8D%E6%B3%95%E5%9F%BA%E6%9C%AC%E8%A7%84%E5%88%99-%E6%9D%8E%E5%BF%97%E6%B1%9F002.flv', '高中资源汇总', '历史学科', '0', null, '0', '1', '3', '13', '0', '0', '0', '0', 'http://7xsohn.com1.z0.glb.clouddn.com/4%E6%B1%89%E8%AF%AD%E6%8B%BC%E9%9F%B3%E6%AD%A3%E8%AF%8D%E6%B3%95%E5%9F%BA%E6%9C%AC%E8%A7%84%E5%88%99-%E6%9D%8E%E5%BF%97%E6%B1%9F002.flv.jpg', '7', ',4,3,', null);
INSERT INTO `v9_resources` VALUES ('22', '语言文字规范标准的相关政策-张浩明001', '1459945611', 'http://7xsohn.com1.z0.glb.clouddn.com/1%E8%AF%AD%E8%A8%80%E6%96%87%E5%AD%97%E8%A7%84%E8%8C%83%E6%A0%87%E5%87%86%E7%9A%84%E7%9B%B8%E5%85%B3%E6%94%BF%E7%AD%96-%E5%BC%A0%E6%B5%A9%E6%98%8E001.flv', '高中资源汇总', '语文学科', '0', null, '0', '1', '5', '15', '0', '0', '0', '0', 'http://7xsohn.com1.z0.glb.clouddn.com/1%E8%AF%AD%E8%A8%80%E6%96%87%E5%AD%97%E8%A7%84%E8%8C%83%E6%A0%87%E5%87%86%E7%9A%84%E7%9B%B8%E5%85%B3%E6%94%BF%E7%AD%96-%E5%BC%A0%E6%B5%A9%E6%98%8E001.flv.jpg', '33', ',2,3', null);
INSERT INTO `v9_resources` VALUES ('23', '语言文字规范标准的相关政策-张浩明002', '1459945919', 'http://7xsohn.com1.z0.glb.clouddn.com/1%E8%AF%AD%E8%A8%80%E6%96%87%E5%AD%97%E8%A7%84%E8%8C%83%E6%A0%87%E5%87%86%E7%9A%84%E7%9B%B8%E5%85%B3%E6%94%BF%E7%AD%96-%E5%BC%A0%E6%B5%A9%E6%98%8E002.flv', '高中资源汇总', '语文学科', '0', null, '0', '1', '5', '15', '0', '0', '0', '0', 'http://7xsohn.com1.z0.glb.clouddn.com/1%E8%AF%AD%E8%A8%80%E6%96%87%E5%AD%97%E8%A7%84%E8%8C%83%E6%A0%87%E5%87%86%E7%9A%84%E7%9B%B8%E5%85%B3%E6%94%BF%E7%AD%96-%E5%BC%A0%E6%B5%A9%E6%98%8E002.flv.jpg', '28', ',2,', null);
INSERT INTO `v9_resources` VALUES ('24', '推广和规范使用国家通用语言文字-张世平002', '1459946206', 'http://7xsohn.com1.z0.glb.clouddn.com/2%E6%8E%A8%E5%B9%BF%E5%92%8C%E8%A7%84%E8%8C%83%E4%BD%BF%E7%94%A8%E5%9B%BD%E5%AE%B6%E9%80%9A%E7%94%A8%E8%AF%AD%E8%A8%80%E6%96%87%E5%AD%97-%E5%BC%A0%E4%B8%96%E5%B9%B3002.flv', '高中资源汇总', '语文学科', '0', null, '0', '1', '6', '16', '0', '0', '0', '0', 'http://7xsohn.com1.z0.glb.clouddn.com/2%E6%8E%A8%E5%B9%BF%E5%92%8C%E8%A7%84%E8%8C%83%E4%BD%BF%E7%94%A8%E5%9B%BD%E5%AE%B6%E9%80%9A%E7%94%A8%E8%AF%AD%E8%A8%80%E6%96%87%E5%AD%97-%E5%BC%A0%E4%B8%96%E5%B9%B3002.flv.jpg', '12', ',3,', null);
INSERT INTO `v9_resources` VALUES ('25', '推广和规范使用国家通用语言文字-张世平001', '1459945919', 'http://7xsohn.com1.z0.glb.clouddn.com/2%E6%8E%A8%E5%B9%BF%E5%92%8C%E8%A7%84%E8%8C%83%E4%BD%BF%E7%94%A8%E5%9B%BD%E5%AE%B6%E9%80%9A%E7%94%A8%E8%AF%AD%E8%A8%80%E6%96%87%E5%AD%97-%E5%BC%A0%E4%B8%96%E5%B9%B3001.flv', '高中资源汇总', '语文学科', '0', null, '0', '1', '6', '16', '0', '0', '0', '0', 'http://7xsohn.com1.z0.glb.clouddn.com/2%E6%8E%A8%E5%B9%BF%E5%92%8C%E8%A7%84%E8%8C%83%E4%BD%BF%E7%94%A8%E5%9B%BD%E5%AE%B6%E9%80%9A%E7%94%A8%E8%AF%AD%E8%A8%80%E6%96%87%E5%AD%97-%E5%BC%A0%E4%B8%96%E5%B9%B3001.flv.jpg', '19', ',3,', null);
INSERT INTO `v9_resources` VALUES ('26', '推广和规范使用国家通用语言文字-张世平003', '1459946503', 'http://7xsohn.com1.z0.glb.clouddn.com/2%E6%8E%A8%E5%B9%BF%E5%92%8C%E8%A7%84%E8%8C%83%E4%BD%BF%E7%94%A8%E5%9B%BD%E5%AE%B6%E9%80%9A%E7%94%A8%E8%AF%AD%E8%A8%80%E6%96%87%E5%AD%97-%E5%BC%A0%E4%B8%96%E5%B9%B3003.flv', '高中资源汇总', '英语学科', '0', null, '0', '7', '0', '0', '0', '0', '0', '0', 'http://7xsohn.com1.z0.glb.clouddn.com/2%E6%8E%A8%E5%B9%BF%E5%92%8C%E8%A7%84%E8%8C%83%E4%BD%BF%E7%94%A8%E5%9B%BD%E5%AE%B6%E9%80%9A%E7%94%A8%E8%AF%AD%E8%A8%80%E6%96%87%E5%AD%97-%E5%BC%A0%E4%B8%96%E5%B9%B3003.flv.jpg', '11', ',3,4', null);
INSERT INTO `v9_resources` VALUES ('27', '汉语拼音正词法及其修订-董琨001', '1459946503', 'http://7xsohn.com1.z0.glb.clouddn.com/3%E6%B1%89%E8%AF%AD%E6%8B%BC%E9%9F%B3%E6%AD%A3%E8%AF%8D%E6%B3%95%E5%8F%8A%E5%85%B6%E4%BF%AE%E8%AE%A2-%E8%91%A3%E7%90%A8001.flv', '高中资源汇总', '英语学科', '0', null, '0', '7', '0', '0', '0', '0', '0', '0', 'http://7xsohn.com1.z0.glb.clouddn.com/3%E6%B1%89%E8%AF%AD%E6%8B%BC%E9%9F%B3%E6%AD%A3%E8%AF%8D%E6%B3%95%E5%8F%8A%E5%85%B6%E4%BF%AE%E8%AE%A2-%E8%91%A3%E7%90%A8001.flv.jpg', '8', ',3,', null);
INSERT INTO `v9_resources` VALUES ('28', '汉语拼音正词法及其修订-董琨002', '1459946503', 'http://7xsohn.com1.z0.glb.clouddn.com/3%E6%B1%89%E8%AF%AD%E6%8B%BC%E9%9F%B3%E6%AD%A3%E8%AF%8D%E6%B3%95%E5%8F%8A%E5%85%B6%E4%BF%AE%E8%AE%A2-%E8%91%A3%E7%90%A8002.flv', '高中资源汇总', '英语学科', '0', null, '0', '8', '0', '0', '0', '0', '0', '0', 'http://7xsohn.com1.z0.glb.clouddn.com/3%E6%B1%89%E8%AF%AD%E6%8B%BC%E9%9F%B3%E6%AD%A3%E8%AF%8D%E6%B3%95%E5%8F%8A%E5%85%B6%E4%BF%AE%E8%AE%A2-%E8%91%A3%E7%90%A8002.flv.jpg', '7', ',5,', null);
INSERT INTO `v9_resources` VALUES ('29', '汉语拼音正词法基本规则-李志江001', '1459946503', 'http://7xsohn.com1.z0.glb.clouddn.com/4%E6%B1%89%E8%AF%AD%E6%8B%BC%E9%9F%B3%E6%AD%A3%E8%AF%8D%E6%B3%95%E5%9F%BA%E6%9C%AC%E8%A7%84%E5%88%99-%E6%9D%8E%E5%BF%97%E6%B1%9F001.flv', '高中资源汇总', '英语学科', '0', null, '0', '1', '4', '0', '0', '0', '0', '0', 'http://7xsohn.com1.z0.glb.clouddn.com/4%E6%B1%89%E8%AF%AD%E6%8B%BC%E9%9F%B3%E6%AD%A3%E8%AF%8D%E6%B3%95%E5%9F%BA%E6%9C%AC%E8%A7%84%E5%88%99-%E6%9D%8E%E5%BF%97%E6%B1%9F001.flv.jpg', '11', ',4,', null);
INSERT INTO `v9_resources` VALUES ('30', '汉语拼音正词法基本规则-李志江002', '1459946503', 'http://7xsohn.com1.z0.glb.clouddn.com/4%E6%B1%89%E8%AF%AD%E6%8B%BC%E9%9F%B3%E6%AD%A3%E8%AF%8D%E6%B3%95%E5%9F%BA%E6%9C%AC%E8%A7%84%E5%88%99-%E6%9D%8E%E5%BF%97%E6%B1%9F002.flv', '高中资源汇总', '历史学科', '0', null, '0', '1', '5', '14', '0', '0', '0', '0', 'http://7xsohn.com1.z0.glb.clouddn.com/4%E6%B1%89%E8%AF%AD%E6%8B%BC%E9%9F%B3%E6%AD%A3%E8%AF%8D%E6%B3%95%E5%9F%BA%E6%9C%AC%E8%A7%84%E5%88%99-%E6%9D%8E%E5%BF%97%E6%B1%9F002.flv.jpg', '7', ',4,3,', null);
INSERT INTO `v9_resources` VALUES ('31', '语言文字规范标准的相关政策-张浩明001', '1459945611', 'http://7xsohn.com1.z0.glb.clouddn.com/1%E8%AF%AD%E8%A8%80%E6%96%87%E5%AD%97%E8%A7%84%E8%8C%83%E6%A0%87%E5%87%86%E7%9A%84%E7%9B%B8%E5%85%B3%E6%94%BF%E7%AD%96-%E5%BC%A0%E6%B5%A9%E6%98%8E001.flv', '高中资源汇总', '语文学科', '0', null, '0', '1', '5', '15', '0', '0', '0', '0', 'http://7xsohn.com1.z0.glb.clouddn.com/1%E8%AF%AD%E8%A8%80%E6%96%87%E5%AD%97%E8%A7%84%E8%8C%83%E6%A0%87%E5%87%86%E7%9A%84%E7%9B%B8%E5%85%B3%E6%94%BF%E7%AD%96-%E5%BC%A0%E6%B5%A9%E6%98%8E001.flv.jpg', '33', ',2,3', null);
INSERT INTO `v9_resources` VALUES ('32', '推广和规范使用国家通用语言文字-张世平002', '1459946206', 'http://7xsohn.com1.z0.glb.clouddn.com/2%E6%8E%A8%E5%B9%BF%E5%92%8C%E8%A7%84%E8%8C%83%E4%BD%BF%E7%94%A8%E5%9B%BD%E5%AE%B6%E9%80%9A%E7%94%A8%E8%AF%AD%E8%A8%80%E6%96%87%E5%AD%97-%E5%BC%A0%E4%B8%96%E5%B9%B3002.flv', '高中资源汇总', '语文学科', '0', null, '0', '1', '6', '16', '0', '0', '0', '0', 'http://7xsohn.com1.z0.glb.clouddn.com/2%E6%8E%A8%E5%B9%BF%E5%92%8C%E8%A7%84%E8%8C%83%E4%BD%BF%E7%94%A8%E5%9B%BD%E5%AE%B6%E9%80%9A%E7%94%A8%E8%AF%AD%E8%A8%80%E6%96%87%E5%AD%97-%E5%BC%A0%E4%B8%96%E5%B9%B3002.flv.jpg', '12', ',3,', null);
INSERT INTO `v9_resources` VALUES ('33', '推广和规范使用国家通用语言文字-张世平002', '1459946206', 'http://7xsohn.com1.z0.glb.clouddn.com/2%E6%8E%A8%E5%B9%BF%E5%92%8C%E8%A7%84%E8%8C%83%E4%BD%BF%E7%94%A8%E5%9B%BD%E5%AE%B6%E9%80%9A%E7%94%A8%E8%AF%AD%E8%A8%80%E6%96%87%E5%AD%97-%E5%BC%A0%E4%B8%96%E5%B9%B3002.flv', '高中资源汇总', '语文学科', '0', null, '0', '1', '6', '16', '0', '0', '0', '0', 'http://7xsohn.com1.z0.glb.clouddn.com/2%E6%8E%A8%E5%B9%BF%E5%92%8C%E8%A7%84%E8%8C%83%E4%BD%BF%E7%94%A8%E5%9B%BD%E5%AE%B6%E9%80%9A%E7%94%A8%E8%AF%AD%E8%A8%80%E6%96%87%E5%AD%97-%E5%BC%A0%E4%B8%96%E5%B9%B3002.flv.jpg', '12', ',3,', null);
INSERT INTO `v9_resources` VALUES ('34', '推广和规范使用国家通用语言文字-张世平001', '1459945919', 'http://7xsohn.com1.z0.glb.clouddn.com/2%E6%8E%A8%E5%B9%BF%E5%92%8C%E8%A7%84%E8%8C%83%E4%BD%BF%E7%94%A8%E5%9B%BD%E5%AE%B6%E9%80%9A%E7%94%A8%E8%AF%AD%E8%A8%80%E6%96%87%E5%AD%97-%E5%BC%A0%E4%B8%96%E5%B9%B3001.flv', '高中资源汇总', '语文学科', '0', null, '0', '1', '6', '16', '0', '0', '0', '0', 'http://7xsohn.com1.z0.glb.clouddn.com/2%E6%8E%A8%E5%B9%BF%E5%92%8C%E8%A7%84%E8%8C%83%E4%BD%BF%E7%94%A8%E5%9B%BD%E5%AE%B6%E9%80%9A%E7%94%A8%E8%AF%AD%E8%A8%80%E6%96%87%E5%AD%97-%E5%BC%A0%E4%B8%96%E5%B9%B3001.flv.jpg', '19', ',3,', null);
INSERT INTO `v9_resources` VALUES ('35', '推广和规范使用国家通用语言文字-张世平003', '1459946503', 'http://7xsohn.com1.z0.glb.clouddn.com/2%E6%8E%A8%E5%B9%BF%E5%92%8C%E8%A7%84%E8%8C%83%E4%BD%BF%E7%94%A8%E5%9B%BD%E5%AE%B6%E9%80%9A%E7%94%A8%E8%AF%AD%E8%A8%80%E6%96%87%E5%AD%97-%E5%BC%A0%E4%B8%96%E5%B9%B3003.flv', '高中资源汇总', '英语学科', '0', null, '0', '9', '0', '0', '0', '0', '0', '0', 'http://7xsohn.com1.z0.glb.clouddn.com/2%E6%8E%A8%E5%B9%BF%E5%92%8C%E8%A7%84%E8%8C%83%E4%BD%BF%E7%94%A8%E5%9B%BD%E5%AE%B6%E9%80%9A%E7%94%A8%E8%AF%AD%E8%A8%80%E6%96%87%E5%AD%97-%E5%BC%A0%E4%B8%96%E5%B9%B3003.flv.jpg', '11', ',3,4', null);
INSERT INTO `v9_resources` VALUES ('36', '汉语拼音正词法及其修订-董琨001', '1459946503', 'http://7xsohn.com1.z0.glb.clouddn.com/3%E6%B1%89%E8%AF%AD%E6%8B%BC%E9%9F%B3%E6%AD%A3%E8%AF%8D%E6%B3%95%E5%8F%8A%E5%85%B6%E4%BF%AE%E8%AE%A2-%E8%91%A3%E7%90%A8001.flv', '高中资源汇总', '英语学科', '0', null, '0', '7', '0', '0', '0', '0', '0', '0', 'http://7xsohn.com1.z0.glb.clouddn.com/3%E6%B1%89%E8%AF%AD%E6%8B%BC%E9%9F%B3%E6%AD%A3%E8%AF%8D%E6%B3%95%E5%8F%8A%E5%85%B6%E4%BF%AE%E8%AE%A2-%E8%91%A3%E7%90%A8001.flv.jpg', '8', ',3,', null);
INSERT INTO `v9_resources` VALUES ('37', '汉语拼音正词法及其修订-董琨002', '1459946503', 'http://7xsohn.com1.z0.glb.clouddn.com/3%E6%B1%89%E8%AF%AD%E6%8B%BC%E9%9F%B3%E6%AD%A3%E8%AF%8D%E6%B3%95%E5%8F%8A%E5%85%B6%E4%BF%AE%E8%AE%A2-%E8%91%A3%E7%90%A8002.flv', '高中资源汇总', '英语学科', '0', '', '0', '8', '0', '0', '0', '0', '0', '0', 'http://7xsohn.com1.z0.glb.clouddn.com/3%E6%B1%89%E8%AF%AD%E6%8B%BC%E9%9F%B3%E6%AD%A3%E8%AF%8D%E6%B3%95%E5%8F%8A%E5%85%B6%E4%BF%AE%E8%AE%A2-%E8%91%A3%E7%90%A8002.flv.jpg', '7', ',5,', null);
INSERT INTO `v9_resources` VALUES ('38', '汉语拼音正词法基本规则-李志江001', '1459946503', 'http://7xsohn.com1.z0.glb.clouddn.com/4%E6%B1%89%E8%AF%AD%E6%8B%BC%E9%9F%B3%E6%AD%A3%E8%AF%8D%E6%B3%95%E5%9F%BA%E6%9C%AC%E8%A7%84%E5%88%99-%E6%9D%8E%E5%BF%97%E6%B1%9F001.flv', '高中资源汇总', '英语学科', '0', null, '0', '9', '0', '0', '0', '0', '0', '0', 'http://7xsohn.com1.z0.glb.clouddn.com/4%E6%B1%89%E8%AF%AD%E6%8B%BC%E9%9F%B3%E6%AD%A3%E8%AF%8D%E6%B3%95%E5%9F%BA%E6%9C%AC%E8%A7%84%E5%88%99-%E6%9D%8E%E5%BF%97%E6%B1%9F001.flv.jpg', '11', ',4,', null);
INSERT INTO `v9_resources` VALUES ('39', '汉语拼音正词法基本规则-李志江002', '1459946503', 'http://7xsohn.com1.z0.glb.clouddn.com/4%E6%B1%89%E8%AF%AD%E6%8B%BC%E9%9F%B3%E6%AD%A3%E8%AF%8D%E6%B3%95%E5%9F%BA%E6%9C%AC%E8%A7%84%E5%88%99-%E6%9D%8E%E5%BF%97%E6%B1%9F002.flv', '高中资源汇总', '历史学科', '0', null, '0', '1', '5', '14', '0', '0', '0', '0', 'http://7xsohn.com1.z0.glb.clouddn.com/4%E6%B1%89%E8%AF%AD%E6%8B%BC%E9%9F%B3%E6%AD%A3%E8%AF%8D%E6%B3%95%E5%9F%BA%E6%9C%AC%E8%A7%84%E5%88%99-%E6%9D%8E%E5%BF%97%E6%B1%9F002.flv.jpg', '7', ',4,3,', null);
