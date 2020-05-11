/*
Navicat MySQL Data Transfer

Source Server         : LOCA
Source Server Version : 50726
Source Host           : localhost:3306
Source Database       : keubiko_db

Target Server Type    : MYSQL
Target Server Version : 50726
File Encoding         : 65001

Date: 2020-05-11 10:40:06
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `persons_tbl`
-- ----------------------------
DROP TABLE IF EXISTS `persons_tbl`;
CREATE TABLE `persons_tbl` (
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `userid` varchar(100) NOT NULL,
  `password` varchar(40) DEFAULT NULL,
  `name` varchar(40) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `mobile` bigint(15) DEFAULT NULL,
  `salary` double DEFAULT NULL,
  `ssn` int(11) DEFAULT NULL,
  `createdate` timestamp NULL DEFAULT NULL,
  `updatedate` timestamp NULL DEFAULT NULL,
  `role` varchar(20) DEFAULT 'customer',
  PRIMARY KEY (`pid`,`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of persons_tbl
-- ----------------------------
INSERT INTO `persons_tbl` VALUES ('1', 'javahunk', 'test', 'Nagendra', 'javahunk100@gmail.com', '2020-04-20', '9873003702', '33433', '34535', '2020-04-20 09:40:26', '2020-04-20 09:40:26', 'admin');
INSERT INTO `persons_tbl` VALUES ('4', 'harmeen', null, 'Harmeen', 'harmeen@gmail.com', '0010-11-10', '8700134973', '500', '938938', '2020-05-01 10:05:10', '2020-05-01 10:05:10', 'customer');
INSERT INTO `persons_tbl` VALUES ('6', 'Mocha', null, 'mocha', 'mocha@gmail.com', '2020-04-14', '8700134973', '500', '938938', '2020-05-01 10:10:35', '2020-05-01 10:10:35', 'customer');
INSERT INTO `persons_tbl` VALUES ('9', 'yesha', 'test', 'Yesha Singh', 'yesha@gmail.com', '1981-12-13', '24234242', '500', '234324234', '2020-05-04 09:24:07', '2020-05-04 09:24:07', 'customer');
INSERT INTO `persons_tbl` VALUES ('10', 'MENG', 'test', 'MENG KING', 'meta@gmail.com', '2009-09-12', '34324234', '2500', '3453543', '2020-05-04 09:48:08', '2020-05-04 09:48:08', 'customer');
