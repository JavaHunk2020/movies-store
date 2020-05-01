/*
Navicat MySQL Data Transfer

Source Server         : LOCA
Source Server Version : 50726
Source Host           : localhost:3306
Source Database       : keubiko_db

Target Server Type    : MYSQL
Target Server Version : 50726
File Encoding         : 65001

Date: 2020-05-01 10:26:31
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `customer_tbl`
-- ----------------------------
DROP TABLE IF EXISTS `customer_tbl`;
CREATE TABLE `customer_tbl` (
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `age` int(3) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `marks` int(3) DEFAULT NULL,
  `doe` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of customer_tbl
-- ----------------------------
INSERT INTO `customer_tbl` VALUES ('Raj', 'raj@gmail.com', '20', 'Fremont', '12', '2020-04-16 09:32:09');
INSERT INTO `customer_tbl` VALUES ('Monika', 'monika@gmail.com', '12', 'H18,8282', '81', '2020-04-16 09:32:09');
INSERT INTO `customer_tbl` VALUES ('Raj', 'raj@gmail.com', '91', '50', '50', '2020-04-16 09:35:29');
INSERT INTO `customer_tbl` VALUES ('Nagendra', 'nagen@gmail.com', '1', '133', '90', '2020-04-16 09:44:19');
INSERT INTO `customer_tbl` VALUES ('Nagendra', 'nagen@gmail.com', '12', 'H822', '70', '2020-04-16 09:44:37');
INSERT INTO `customer_tbl` VALUES ('Monika', 'monika@gmail.com', '9', 'Fremont', '81', '2020-04-16 09:45:06');

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
  PRIMARY KEY (`pid`,`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of persons_tbl
-- ----------------------------
INSERT INTO `persons_tbl` VALUES ('1', 'javahunk', null, 'Nagendra', 'javahunk100@gmail.com', '2020-04-20', '9873003702', '33433', '34535', '2020-04-20 09:40:26', '2020-04-20 09:40:26');
INSERT INTO `persons_tbl` VALUES ('2', 'uauaua', null, 'James', 'james@gmail.com', '1990-09-12', '929292', '9000', '123133', '2020-04-20 10:52:07', '2020-04-24 10:14:46');
INSERT INTO `persons_tbl` VALUES ('3', 'uauaua', null, 'James', 'james@gmail.com', '1990-09-12', '929292', '9000', '123133', '2020-04-24 10:09:32', '2020-04-24 10:14:46');
INSERT INTO `persons_tbl` VALUES ('4', 'harmeen', null, 'Harmeen', 'harmeen@gmail.com', '0010-11-10', '8700134973', '500', '938938', '2020-05-01 10:05:10', '2020-05-01 10:05:10');
INSERT INTO `persons_tbl` VALUES ('5', 'harmeen213', null, 'Harmeen123', 'harmeen213@gmail.com', '2020-05-05', '8700134973', '500', '938938', '2020-05-01 10:10:15', '2020-05-01 10:10:15');
INSERT INTO `persons_tbl` VALUES ('6', 'Mocha', null, 'mocha', 'mocha@gmail.com', '2020-04-14', '8700134973', '500', '938938', '2020-05-01 10:10:35', '2020-05-01 10:10:35');
INSERT INTO `persons_tbl` VALUES ('7', 'ROBERT', 'wqeeqw', 'R345345', 'javahunk2020@gmail.com', '2020-05-07', '8700134973', '500', '42324234', '2020-05-01 10:18:32', '2020-05-01 10:18:32');
INSERT INTO `persons_tbl` VALUES ('8', 'ROBERT', 'wqeeqw', 'R345345', 'javahunk2020@gmail.com', '2020-05-07', '8700134973', '500', '42324234', '2020-05-01 10:19:46', '2020-05-01 10:19:46');

-- ----------------------------
-- Table structure for `profiles_tbl`
-- ----------------------------
DROP TABLE IF EXISTS `profiles_tbl`;
CREATE TABLE `profiles_tbl` (
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `salutation` varchar(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(200) NOT NULL,
  `mobile` bigint(13) DEFAULT NULL,
  `salary` int(11) DEFAULT NULL,
  `education` varchar(50) DEFAULT NULL,
  `doe` timestamp NULL DEFAULT NULL,
  `dom` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of profiles_tbl
-- ----------------------------
