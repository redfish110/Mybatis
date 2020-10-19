/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50723
Source Host           : localhost:3306
Source Database       : mybatis_test

Target Server Type    : MYSQL
Target Server Version : 50723
File Encoding         : 65001

Date: 2020-10-19 22:48:21
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for address
-- ----------------------------
DROP TABLE IF EXISTS `address`;
CREATE TABLE `address` (
  `aid` int(11) NOT NULL AUTO_INCREMENT COMMENT '地址主键',
  `aname` varchar(255) DEFAULT NULL COMMENT '地址名称',
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for course
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course` (
  `cid` int(11) NOT NULL COMMENT '课程主键',
  `cname` varchar(30) DEFAULT NULL COMMENT '课程名称',
  `remark` varchar(100) DEFAULT NULL COMMENT '课程简介',
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sc
-- ----------------------------
DROP TABLE IF EXISTS `sc`;
CREATE TABLE `sc` (
  `sid` int(11) NOT NULL COMMENT '学生主键',
  `cid` int(11) NOT NULL COMMENT '课程主键',
  PRIMARY KEY (`sid`,`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `sid` int(11) NOT NULL AUTO_INCREMENT COMMENT '学生id，主键',
  `sname` varchar(11) DEFAULT NULL COMMENT '学生姓名',
  `age` int(2) DEFAULT NULL COMMENT '学生年龄',
  `height` double(11,2) DEFAULT NULL COMMENT '体重',
  `aid` int(11) DEFAULT NULL COMMENT '地址外键',
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
