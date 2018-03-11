/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50167
Source Host           : localhost:3306
Source Database       : studassign

Target Server Type    : MYSQL
Target Server Version : 50167
File Encoding         : 65001

Date: 2016-12-13 19:15:53
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `assig_files_desc`
-- ----------------------------
DROP TABLE IF EXISTS `assig_files_desc`;
CREATE TABLE `assig_files_desc` (
  `file_desc` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sno` bigint(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `upload_date` date DEFAULT NULL,
  `faculty` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of assig_files_desc
-- ----------------------------
INSERT INTO `assig_files_desc` VALUES ('DAA', '1', 'maneesh', '2016-06-23', 'Sanjay');

-- ----------------------------
-- Table structure for `assig_files_path`
-- ----------------------------
DROP TABLE IF EXISTS `assig_files_path`;
CREATE TABLE `assig_files_path` (
  `file_path` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sno` bigint(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `upload_date` date DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of assig_files_path
-- ----------------------------
INSERT INTO `assig_files_path` VALUES ('../uploadedFiles/Assignment.doc', '1', 'maneesh', '2016-06-23');

-- ----------------------------
-- Table structure for `faculty_details`
-- ----------------------------
DROP TABLE IF EXISTS `faculty_details`;
CREATE TABLE `faculty_details` (
  `username` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `firstname` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastname` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dept` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `subject` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `course` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of faculty_details
-- ----------------------------
INSERT INTO `faculty_details` VALUES ('', 'Nishu', 'Singh', 'CSE', 'C#', 'B.Tech');
INSERT INTO `faculty_details` VALUES ('Rajesh', 'Rajesh', 'Kumar', 'cse', 'Java', 'B.Tech');
INSERT INTO `faculty_details` VALUES ('Sanjay', 'Sanjay', 'kumar', 'cse', 'Data Network', 'B.Tech');

-- ----------------------------
-- Table structure for `login`
-- ----------------------------
DROP TABLE IF EXISTS `login`;
CREATE TABLE `login` (
  `username` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `password` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of login
-- ----------------------------
INSERT INTO `login` VALUES ('admin', 'admin1234', 'a');
INSERT INTO `login` VALUES ('asdf', 'qwertyui', 's');
INSERT INTO `login` VALUES ('maneesh', '0987654321', 's');
INSERT INTO `login` VALUES ('Nishu', 'nishu1234', 'f');
INSERT INTO `login` VALUES ('Rahul', 'smacktalker', 's');
INSERT INTO `login` VALUES ('Rajesh', 'rajesh1234', 'f');
INSERT INTO `login` VALUES ('Sanjay', 'sanjay1234', 'f');

-- ----------------------------
-- Table structure for `sample`
-- ----------------------------
DROP TABLE IF EXISTS `sample`;
CREATE TABLE `sample` (
  `ID` int(11) DEFAULT NULL,
  `NAME` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of sample
-- ----------------------------
INSERT INTO `sample` VALUES ('1', 'PRINCE');
INSERT INTO `sample` VALUES ('2', 'maneesh');
INSERT INTO `sample` VALUES ('4', 'nitesh');
INSERT INTO `sample` VALUES ('4', 'nitesh');
INSERT INTO `sample` VALUES ('4', 'nitesh');
INSERT INTO `sample` VALUES ('5', 'rakshith');
INSERT INTO `sample` VALUES ('5', 'rakshith');
INSERT INTO `sample` VALUES ('5', 'rakshith');
INSERT INTO `sample` VALUES ('5', 'rakshith');
INSERT INTO `sample` VALUES ('5', 'rakshith');

-- ----------------------------
-- Table structure for `stud_details`
-- ----------------------------
DROP TABLE IF EXISTS `stud_details`;
CREATE TABLE `stud_details` (
  `username` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `course` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dept` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `secques` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `secans` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of stud_details
-- ----------------------------
INSERT INTO `stud_details` VALUES ('asdf', 'asdf', 'btech', 'cse', 'Your Favorite Hobby?', '34');
INSERT INTO `stud_details` VALUES ('maneesh', 'Maneesh', 'B.Tech', 'cse', 'Your Favorite Hobby?', 'Surfing');
INSERT INTO `stud_details` VALUES ('Rahul', 'Rahul P Kumar', 'B.Tech', 'cse', 'Your First School Name?', 'DPS RKP');

-- ----------------------------
-- Table structure for `stud_grades`
-- ----------------------------
DROP TABLE IF EXISTS `stud_grades`;
CREATE TABLE `stud_grades` (
  `stud_id` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `grade` varchar(4) COLLATE utf8_unicode_ci DEFAULT NULL,
  `assig_name` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `subject` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `result_date` date DEFAULT NULL,
  `faculty` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sno` bigint(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of stud_grades
-- ----------------------------
INSERT INTO `stud_grades` VALUES ('maneesh', 'A', 'DAA', 'Data Network', '2016-06-23', 'Sanjay', '1');
